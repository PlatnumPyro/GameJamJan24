var areaSizeEnum = -1;
var areaSize = undefined;
var curseLevel = 0;

if (room == room_first)
{
	clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
	titleCardText = instance_create_layer(960, 200, "Instances", obj_TitleCardText);
	titleCardText.text = global.gameName;
	
	clickableList.viewPosX = room_width/2;
	clickableList.viewPosY = 400;
	clickableList.stringList = titleMenuStringList;
}
else if(room == room_HexWorldMap)
{
	if (hexTileLoadData == undefined)
	{
		hexMap = instance_create_layer(room_width/2, room_height/2, "Instances", obj_HexMap);
		hexMap.numHexTiles = irandom_range(MINIMUM_NUM_LEVELS, MAXIMUM_NUM_LEVELS);
		with (hexMap)
		{
			event_perform(ev_other, ev_user0);
		}
	}
	else
	{
		hexMap = instance_create_layer(room_width/2, room_height/2, "Instances", obj_HexMap);
		hexMap.hexTileLoadData = hexTileLoadData;
		hexMap.curseInitialized = true;
		with (hexMap)
		{
			event_perform(ev_other, ev_user3);
		}
		if (global.levelFailed == true)
		{
			global.cursePower += levelFailedCursePowerPenalty;
			global.levelFailed = false;
			hexMap.currentStepSinceLastCurseSpread = hexMap.numStepsBetweenCurseSpread; // so the spread starts faster
		}
	}
}
else if (room == room_Overworld)
{
	squareMap = instance_create_layer(0, 0, "Instances", obj_SquareTileMap);
	
	//TODO: tailor the map data to the difficulty
	areaSizeEnum = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.AREA_SIZE);
	areaSize = ds_list_find_value(areaSizeMappedToEnum, areaSizeEnum);
	curseLevel = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.CURSE_LEVEL);
	
	squareMap.mapWidthInTiles = areaSize[0];
	squareMap.mapHeightInTiles = areaSize[1];
	
	squareMap.mapStyle = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.TYPE);
	squareMap.curseStartingLocations = curseLevel;
	
	global.currentSquareTilesToCurse = curseLevel * 100; 
	global.maximumAllowedSquareTilesToCurse = (curseLevel * 100) + 100; 
	currentHexTileSelectedCurseLevel = curseLevel;
	
	with (squareMap)
	{
		event_perform(ev_other, ev_user0);
	}
	
	hud = instance_create_layer(0, 0, "Instances", obj_HUD);

	//player must be created first so camera does not explode
	global.player = instance_create_layer(squareMap.playerStartPosition[0], squareMap.playerStartPosition[1], "Instances", obj_Player); //position is a temporary measure
	camera = instance_create_layer(0, 0, "Instances", obj_Camera);
	
	global.player.visible = true;
	
	//global.floater = instance_create_layer(squareMap.playerStartPosition[0] + 500, squareMap.playerStartPosition[1] + 500, "Instances", obj_NPCFloater); //position is a temporary measure)
	//global.snake = instance_create_layer(squareMap.playerStartPosition[0] - 500, squareMap.playerStartPosition[1] - 500, "Instances", obj_NPCSnake); //position is a temporary measure)
	//global.fox = instance_create_layer(squareMap.playerStartPosition[0] - 500, squareMap.playerStartPosition[1] + 500, "Instances", obj_NPCFox); //position is a temporary measure)
	//global.mouse = instance_create_layer(squareMap.playerStartPosition[0] + 500, squareMap.playerStartPosition[1] - 500, "Instances", obj_NPCMouse); //position is a temporary measure)
}