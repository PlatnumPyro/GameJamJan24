var areaSizeEnum = -1;
var areaSize = undefined;

if (room == room_first)
{
	clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
	
	clickableList.viewPosX = room_width/2;
	clickableList.viewPosY = 400;
	clickableList.stringList = titleMenuStringList;
}
else if(room == room_HexWorldMap)
{
	hexMap = instance_create_layer(room_width/2, room_height/2, "Instances", obj_HexMap);
	hexMap.numHexTiles = irandom_range(MINIMUM_NUM_LEVELS, MAXIMUM_NUM_LEVELS);
	with (hexMap)
	{
		event_perform(ev_other, ev_user0);
	}
}
else if (room == room_Overworld)
{
	squareMap = instance_create_layer(0, 0, "Instances", obj_SquareTileMap);
	
	//TODO: tailor the map data to the difficulty
	areaSizeEnum = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.AREA_SIZE);
	areaSize = ds_list_find_value(areaSizeMappedToEnum, areaSizeEnum);
	squareMap.mapWidthInTiles = areaSize[0];
	squareMap.mapHeightInTiles = areaSize[1];
	
	squareMap.mapStyle = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.TYPE);
	
	with (squareMap)
	{
		event_perform(ev_other, ev_user0);
	}
	
	hud = instance_create_layer(0, 0, "Instances", obj_HUD);

	//player must be created first so camera does not explode
	global.player = instance_create_layer(squareMap.playerStartPosition[0], squareMap.playerStartPosition[1], "Instances", obj_Player); //position is a temporary measure
	camera = instance_create_layer(0, 0, "Instances", obj_Camera);
}