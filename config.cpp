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

class CfgPatches
{
	class AAA
	{
		name="$STR_AAA_Name";
		author="Sysroot";
		requiredVersion=1.6;
		units[]={};
		weapons[]={};
		requiredAddons[]=
		{
			"cba_xeh",
			"ace_medical"
		};
		magazines[]={};
	};
};

class CfgFunctions
{
	class AAA
	{
		class functions
		{
			tag="AAA";
			file="AAA\functions";
			class init
			{
				postInit=1;
			};
			class initUnit {};
		};
	};
};

class Extended_PreInit_EventHandlers
{
	class AAA_Init_Addon_Options
	{
		init = "call compile preprocessFileLineNumbers 'AAA\XEH_preInit.sqf'";
	};
};