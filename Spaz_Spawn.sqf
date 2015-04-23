
Altis_Map		= "images\map1.jpg";
Statis_Map		= "images\map2.jpg";
Bornholm_Map	= "images\map3.jpg";
Chernarus_Map	= "images\map4.jpg";

Altis_Spawn_North 			= [0,0,0];
Altis_Spawn_South 			= [0,0,0];
Altis_Spawn_East 			= [0,0,0];
Altis_Spawn_West 			= [0,0,0];
Altis_Spawn_Central 		= [0,0,0];

Statis_Spawn_North 			= [0,0,0];
Statis_Spawn_South 			= [0,0,0];
Statis_Spawn_East 			= [0,0,0];
Statis_Spawn_West 			= [0,0,0];
Statis_Spawn_Central 		= [0,0,0];

Bornholm_Spawn_North 		= [3516.31,17886.3,0.00151825];
Bornholm_Spawn_South 		= [15296.9,163.178,0.00105];
Bornholm_Spawn_East 		= [13281.8,12691.9,0.00137055];
Bornholm_Spawn_West 		= [792.478,7133.28,0.00152135];
Bornholm_Spawn_Central 	= [9367.02,8402.27,0.00139618];

Chernarus_Spawn_North 		= [0,0,0];
Chernarus_Spawn_South 		= [0,0,0];
Chernarus_Spawn_East 		= [0,0,0];
Chernarus_Spawn_West 		= [0,0,0];
Chernarus_Spawn_Central 	= [0,0,0];


/* ******************************DO NOT TOUCH BELOW********************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ********************************************************************************* */
/* ******************************DO NOT TOUCH BELOW********************************* */

disableSerialization;

private ["_mapName"];

_mapName = toLower format ["%1", worldName];

switch (_mapName) do {
	/* Arma 3 Maps */
	case "altis":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Altis_Map;};
	case "stratis":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Statis_Map;};
	case "bornholm":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Bornholm_Map;};
	case "chernarus":{((findDisplay 8332) displayCtrl 1200) ctrlSetText Chernarus_Map;};
	default {((findDisplay 8332) displayCtrl 1200) ctrlSetText Bornholm_Map;};
};

SPAZ_SPAWN_N = {

	_mapName = toLower format ["%1", worldName];
	switch (_mapName) do {
		case "altis":{player setPos Altis_Spawn_North,player setDir 0;};
		case "stratis":{player setPos Statis_Spawn_North,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_North,player setDir 317.342;};
		case "chernarus":{player setPos Chernarus_Spawn_North,player setDir 0;};
		default {player setPos Bornholm_Spawn_North,player setDir 317.342;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_E = {
	_mapName = toLower format ["%1", worldName];
	switch (_mapName) do {
		case "altis":{player setPos Altis_Spawn_East,player setDir 0;};
		case "stratis":{player setPos Statis_Spawn_East,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_East,player setDir 278.168;};
		case "chernarus":{player setPos Chernarus_Spawn_East,player setDir 0;};
		default {player setPos Bornholm_Spawn_East,player setDir 278.168;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_S = {
	_mapName = toLower format ["%1", worldName];
	switch (_mapName) do {
		case "altis":{player setPos Altis_Spawn_South,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_South,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_South,player setDir 43.1966;};
		case "chernarus":{player setPos Chernarus_Spawn_South,player setDir 0;};
		default {player setPos Bornholm_Spawn_South,player setDir 43.1966;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_W = {
	_mapName = toLower format ["%1", worldName];
	switch (_mapName) do {
		case "altis":{player setPos Altis_Spawn_West,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_West,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_West,player setDir 124.737;};
		case "chernarus":{player setPos Chernarus_Spawn_West,player setDir 0;};
		default {player setPos Bornholm_Spawn_West,player setDir 124.737;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_C = {
	_mapName = toLower format ["%1", worldName];
	switch (_mapName) do {
		case "altis":{player setPos Altis_Spawn_Central,player setDir 0;};
		case "stratis":{player setPos Stratis_Spawn_Central,player setDir 0;};
		case "bornholm":{player setPos Bornholm_Spawn_Central,player setDir 317.342;};
		case "chernarus":{player setPos Chernarus_Spawn_Central,player setDir 0;};
		default {player setPos Bornholm_Spawn_Central,player setDir 317.342;};
	};
	cutText ["","BLACK IN"];
	(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];
};

SPAZ_SPAWN_R = {
	if (!isDedicated) then {
		if (isNil "inSpawnPoint") then {
		inSpawnPoint = false;
		};
		 
		while {true} do {
			waitUntil { inSpawnPoint };
			titleText [format["Entering Random Spawn"],"PLAIN DOWN"]; titleFadeOut 4; 
			thePlayer = vehicle player;
			systemChat "Calculating spawn point...please be patient";
			_randPos = [getMarkerPos "center",1500,10000,1,0,20,1] call BIS_fnc_findSafePos; //spawn on shore only
			_posX = _randPos select 0;
			_posY = __randPos select 1;
			_spawnpoint = [_posX,_posY,0.1];
			sleep 1;
			systemChat "Spawn point selected. Teleporting...";
			sleep 1;
			thePlayer setPos _spawnpoint;
			waitUntil { !inSpawnPoint };
			cutText ["","BLACK IN"];
			titleText [format["Good Luck"],"PLAIN DOWN"]; titleFadeOut 4;
			(findDisplay 8332) displayRemoveEventHandler ["KeyDown", noesckey];		 
		};
	};	
};