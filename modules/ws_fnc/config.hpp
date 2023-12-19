class WS
	{

		class debug
		{
			file = "modules\ws_fnc\dbg";
			class debugText {};
			class typeCheck {};
			class clipboardCode {};
			class copyPos {};
			class countUnits {};
			class debugTriggers {postInit = 1;};
		};
		class tools
		{
			file = "modules\ws_fnc\tools";
			class gameCheck {preInit=1;};
			class collectMarkers {};
			class collectObjects {};
			class collectObjectsNum {};
			class collectBuildings {};
			class loadVehicle {};
			class checkHC {};
			class showFPS {};
			class nearPlayer {};
			class listPlayers {};
			class setGVar {};
			class isWallInDir {};
			class getObjectClasses {};
			class shuffleArray {};
		};
		class effects
		{
			file = "modules\ws_fnc\effects";
			class createTripflare {};
			class createLightning {};
			class createCAS {};
			class createOrdnance {};
		};
		class misc
		{
			file = "modules\ws_fnc\misc";
			class switchLights {};
			class attachLight {};
			class attachChem {};
			class attachIR {};
			class broadcast {};
			class showIntro {};
		};
		class getPos
		{
			file = "modules\ws_fnc\getPos";
			class getPos {};
			class getBPos {};
			class getEPos {};
			class nearestRoadPos {};
			class nearestLandPos {};
			class getPosInArea {};
		};
		class AI
		{
			file = "modules\ws_fnc\AI";
			class createGroup {};
			class createVehicle {};
			class createGarrison {};
			class betterVehicle {};
			class enterBuilding {};
			class taskDefend {};
			class taskCrew {};
			class taskAmbush {};
			class taskArtilleryFire {};
			class taskLand {};
			class taskConvoy {};
			class addWaypoint {};
			class setAIMode {};
			class setInsidePos {};
		};
		class cache
		{
			file = "modules\ws_fnc\cache";
			class cInit {};
			class gCache {};
			class gUncache {};
			class cTracker {};
		};

	};