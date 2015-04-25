if (isNil "inSpawnPoint") then 
{
	inSpawnPoint = false;
};
uiSleep 1;
waitUntil { inSpawnPoint };
createDialog "spaz_spawn";
noesckey = (findDisplay 8332) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];  