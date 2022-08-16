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
	[1, 50, 25, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;

[
	"AAA_VAR_AI_ARMOR_COEF",
	"SLIDER",
	["$STR_AAA_AIArmorCoef", "$STR_AAA_AIArmorCoef_Desc"],
	[_modName, "$STR_AAA_ArmorCoefs"],
	[1, 50, 25, 2, false],
	1,
	{},
	false
] call CBA_fnc_addSetting;