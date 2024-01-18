/// @description user picked hex tile
var areaSizeEnum = -1;
var areaSize = undefined;

if (hexMap != undefined)
{
	selectedHexTileData = hexMap.selectedHexTileData;
}

if (room_exists(ROOM_INDEX.OVERWORLD))
{
	//prep the room
	areaSizeEnum = ds_list_find_value(selectedHexTileData, HEX_TILE_DATA.AREA_SIZE);
	areaSize = ds_list_find_value(areaSizeMappedToEnum, areaSizeEnum);
	
	room_instance_clear(ROOM_INDEX.OVERWORLD);
	room_set_width(ROOM_INDEX.OVERWORLD, areaSize[0] * SQUARE_TILE_SIZE);
	room_set_height(ROOM_INDEX.OVERWORLD, areaSize[1] * SQUARE_TILE_SIZE);

	//swap rooms
	room_goto(ROOM_INDEX.OVERWORLD);
}
