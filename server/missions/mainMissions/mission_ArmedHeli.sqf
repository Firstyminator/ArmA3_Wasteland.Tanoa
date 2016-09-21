// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"B_Heli_Transport_01_F",		// Ghosthawk Black - Armed
		//"B_Heli_Transport_01_camo_F",	// Ghosthawk Camo - Armed
		"B_Heli_Transport_03_F",		// Huron Green - Armed
		"B_Heli_Transport_03_black_F",	// Huron Black - Armed
		"I_Heli_light_03_F",			// Hellcat - Armed
		"O_Heli_Light_02_v2_F",			// Orca DAR - Armed
		"B_Heli_Light_01_armed_F"		// Pawnee - Armed
	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
