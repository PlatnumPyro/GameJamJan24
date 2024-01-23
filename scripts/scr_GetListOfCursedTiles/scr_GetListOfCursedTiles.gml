// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_GetListOfCursedTiles(pHexMapTiles, pCurseLevel)
{
	var listOfCursedTiles = ds_list_create();
	var currentHexTile = obj_HexMapTile;
	
	for (var i = 0; i < ds_list_size(pHexMapTiles); i++)
	{
		currentHexTile = ds_list_find_value(pHexMapTiles, i);
		
		if (currentHexTile.tileCurseLevel == pCurseLevel)
		{
			ds_list_add(listOfCursedTiles, currentHexTile);
		}
	}
	
	return listOfCursedTiles;
}