// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_AddAdjacentCursedSquareTileCoordsToList(pListToAddCoordsTo, pAlreadyUsedCoords, pMapWidthInTiles, pMapHeightInTiles, pTileX, pTileY)
{
	//check each potential side to be added to the possible list does not already have a tile before adding it to the pool
	//also check to make sure that the coords being given do not exceed the MAXIMUMs set
	
	if (pTileX + 1 <= pMapWidthInTiles -1)
	{
		//NE
		if (pTileY - 1 >= 0)
		{
			if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX + 1, pTileY - 1]) == false)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX + 1, pTileY - 1]);
			}
		}
		
		//E
		if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX + 1, pTileY]) == false)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX + 1, pTileY]);
		}
		
		//SE
		if (pTileY + 1 <= pMapHeightInTiles -1)
		{
			if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX + 1, pTileY + 1]) == false)
			{
					ds_list_add(pListToAddCoordsTo, [pTileX + 1, pTileY + 1]);
			}
		}
	}
	
	if (pTileX - 1 >= 0)
	{
		//NW
		if (pTileY - 1 >= 0)
		{
			if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX - 1, pTileY - 1]) == false)
			{
				ds_list_add(pListToAddCoordsTo, [pTileX - 1, pTileY - 1]);
			}
		}
		
		//W
		if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX - 1, pTileY]) == false)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX - 1, pTileY]);
		}
		
		//SW
		if (pTileY + 1 <= pMapHeightInTiles -1)
		{
			if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX - 1, pTileY + 1]) == false)
			{
					ds_list_add(pListToAddCoordsTo, [pTileX - 1, pTileY + 1]);
			}
		}
	}
	
	//N
	if (pTileY - 1 >= 0)
	{
		if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX, pTileY - 1]) == false)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX , pTileY - 1]);
		}
	}
	
	//S
	if (pTileY + 1 <= pMapHeightInTiles -1)
	{
		if (scr_FindArrayValuesInList(pAlreadyUsedCoords, [pTileX, pTileY + 1]) == false)
		{
			ds_list_add(pListToAddCoordsTo, [pTileX , pTileY + 1]);
		}
	}
}