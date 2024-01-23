// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_GeneratePositionsArrayFromHexMapList(pHexMapTiles, pCheckingForCursedTiles = false)
{
	var listOfPositions = ds_list_create();
	var currentHexTile = obj_HexMapTile;
	
	for (var i = 0; i < ds_list_size(pHexMapTiles); i++)
	{
		currentHexTile = ds_list_find_value(pHexMapTiles, i);
		
		if (pCheckingForCursedTiles == true && currentHexTile.tileCurseLevel > 0)
		{
			ds_list_add(listOfPositions, currentHexTile.tileLocation);
		}
		else if (pCheckingForCursedTiles == false)
		{
			ds_list_add(listOfPositions, currentHexTile.tileLocation);
		}
	}
	
	return listOfPositions;
}