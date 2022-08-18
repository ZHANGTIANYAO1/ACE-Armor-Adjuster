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

private _modName = localize "STR_AAA_Name";

[
	"AAA_VAR_PLAYER_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_PlayerArmorCoef", "$STR_AAA_PlayerArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[1, 50, 15, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_AI_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_AIArmorCoef", "$STR_AAA_AIArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[1, 50, 15, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_BLUFOR_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_BluforArmorCoef", "$STR_AAA_BluforArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_OPFOR_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_OpforArmorCoef", "$STR_AAA_OpforArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_CIV_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_CivArmorCoef", "$STR_AAA_CivArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_IND_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_IndArmorCoef", "$STR_AAA_IndArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[0, 50, 0, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_MOD_ENABLED",
	"CHECKBOX",
	["$STR_AAA_ModEnabled", "$STR_AAA_ModEnabled_Desc"],
	[_modName, "$STR_AAA_Toggles"],
	true,
	1,
	{},
	false
] call CBA_fnc_addSetting;