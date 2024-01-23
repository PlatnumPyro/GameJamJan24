function scr_GetHexTileAtLocation(pHexTiles, pLocation)
{
	var listSize = -1;
	var currentTileToCheck = undefined;
	var currentTileLocation = obj_HexMapTile;

	listSize = ds_list_size(pHexTiles);
		
	for(var i = 0; i < listSize; i++)
	{
		currentTileToCheck = ds_list_find_value(pHexTiles, i);
		currentTileLocation = currentTileToCheck.tileLocation;
		
		if (is_array(pLocation) && is_array(currentTileLocation))
		{
			if (array_length(pLocation) == array_length(currentTileLocation))
			{
				for(var j = 0; j < array_length(pLocation); j++)
				{
					if (pLocation[j] != currentTileLocation[j])
					{
						break;
					}
					else if (j == array_length(pLocation)-1)
					{
						return currentTileToCheck;
					}
				}
			}
		}
		else
		{
			throw "LOOKING FOR POSITION THAT IS NOT AN ARRAY";
		}
	}
	
	return undefined; //did not find the tile in the list
}
