// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_AddAdjacentHexTileCoordsToList(pListToAddCoordsTo, pAlreadyUsedCoords, pTileX, pTileY)
{
	//check each potential side to be added to the possible list does not already have a tile before adding it to the pool
	//also check to make sure that the coords being given do not exceed the MAXIMUMs set
	
	if (pTileX + 0.75 <= floor(MAXIMUM_MAP_WIDTH_IN_HEX_TILES/2))
	{
		//NE
		if (pTileY - 0.5 >= -floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
		{
			if (ds_list_find_index(pAlreadyUsedCoords, [pTileX + 0.75, pTileY - 0.5]) == -1)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX + 0.75, pTileY - 0.5])
			}
		}
		
		//SE
		if (pTileY + 0.5 <= floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
		{
			if (ds_list_find_index(pAlreadyUsedCoords, [pTileX + 0.75, pTileY + 0.5]) == -1)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX + 0.75, pTileY + 0.5])
			}
		}
	}
	
	if (pTileX - 0.75 >= -floor(MAXIMUM_MAP_WIDTH_IN_HEX_TILES/2))
	{
		//NW
		if (pTileY - 0.5 >= -floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
		{
			if (ds_list_find_index(pAlreadyUsedCoords, [pTileX - 0.75, pTileY - 0.5]) == -1)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX - 0.75, pTileY - 0.5])
			}
		}
		
		//SW
		if (pTileY + 0.5 <= floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
		{
			if (ds_list_find_index(pAlreadyUsedCoords, [pTileX - 0.75, pTileY + 0.5]) == -1)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX - 0.75, pTileY + 0.5])
			}
		}
	}
	
	//N
	if (pTileY - 1 >= -floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
	{
		if (ds_list_find_index(pAlreadyUsedCoords, [pTileX, pTileY - 1]) == -1)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX , pTileY - 1])
		}
	}
	
	//S
	if (pTileY + 1 <= floor(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2))
	{
		if (ds_list_find_index(pAlreadyUsedCoords, [pTileX, pTileY + 1]) == -1)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX , pTileY + 1])
		}
	}
}