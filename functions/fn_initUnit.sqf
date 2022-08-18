// Copyright 2022 Sysroot

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at

    // http://www.apache.org/licenses/LICENSE-2.0

// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

params["_unit"];

// Remove existing ace medical damage event handler
_unit removeEventHandler ["HandleDamage", _unit getVariable "ACE_medical_HandleDamageEHID"];

// Replace with custom damage event handler
_unit setVariable [
	"ACE_medical_HandleDamageEHID", 
	_unit addEventHandler ["HandleDamage", {
		if (AAA_VAR_MOD_ENABLED) then {
			params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint"];
			private ["_prevDamage", "_armorCoef"];
			// Hitpoint damage before this calculation
			if (_hitPoint == "") then {
				_prevDamage = damage _unit;
			} else {
				_prevDamage = _unit getHitIndex _hitIndex;
			};
			// Hitpoint damage to be added by this calculation
			private _addedDamage = _damage - _prevDamage;
			// Apply player and AI values
			if (isPlayer _unit) then {
				_armorCoef = AAA_VAR_PLAYER_ARMOR_COEF;
			} else {
				_armorCoef = AAA_VAR_AI_ARMOR_COEF;
			};
			// Optionally override values with side-based values
			switch (side _unit) do {
				case blufor: {
					private _temp = AAA_VAR_BLUFOR_ARMOR_COEF;
					if (_temp != 0) then {
						_armorCoef = _temp;
					};
				};
				case opfor: {
					private _temp = AAA_VAR_OPFOR_ARMOR_COEF;
					if (_temp != 0) then {
						_armorCoef = _temp;
					};
				};
				case civilian: {
					private _temp = AAA_VAR_CIV_ARMOR_COEF;
					if (_temp != 0) then {
						_armorCoef = _temp;
					};
				};
				case independent: {
					private _temp = AAA_VAR_IND_ARMOR_COEF;
					if (_temp != 0) then {
						_armorCoef = _temp;
					};
				};
			};
			// Multiply addedDamage by hitpoint's armor value divided by armor coefficient to correct ACE's armor
			private _damageMultiplier = ([_unit, _hitPoint] call ace_medical_engine_fnc_getHitpointArmor) / _armorCoef;
			_addedDamage = _addedDamage * _damageMultiplier;
			// Replace original damage value with new damage value
			_this set [2, _prevDamage + _addedDamage];
		};
		// Call ace medical's damage handler with updated value
		_this call ACE_medical_engine_fnc_handleDamage;
	}]
];