/// @description spread the curse



/// @description spread curse

//THE CURSE
// the curse is created one point at a time looking to see if the ratio of curse levels 1, 2, and 3 match the expected and corrects to more closely match
//adding new tiles as the ratios balance out so it will add a 1 tile, then increase a 1 to a 2 and if there are enough 2s, a 2 to a 3.

// we create the first tile manually as we base all the others off this ones position
var currentTile = undefined;
var tileX = 0;
var tileY = 0;
var listSize = 0;
var listPos = 0;

var tileCoordsOfSelectedPotentialTileLocation = [];

//handle the curse spread like the actual map generation
var needsToSpread = false;
var canSpread = true;

//create the potential positions list using the list of curse tiles
listSize = ds_list_size(cursedTileLocations);
for (var i = 0; i < listSize; i++)
{
	tileCoordsOfSelectedPotentialTileLocation = ds_list_find_value(cursedTileLocations, i);
	tileX = tileCoordsOfSelectedPotentialTileLocation[0];
	tileY = tileCoordsOfSelectedPotentialTileLocation[1];
	scr_AddAdjacentCursedSquareTileCoordsToList(cursedTilePotentialSpreadLocations, cursedTileLocations, mapWidthInTiles, mapHeightInTiles, tileX, tileY);
}

if (ds_list_size(cursedTilePotentialSpreadLocations) == 0)
{
	canSpread = false;
}

while (displayedCursePower < desiredCursePowerToDisplay)
{
	//grab a random potentialTile to make into an actualTile
	if (needsToSpread == true && canSpread == true)
	{
		needsToSpread = false;
		listSize = ds_list_size(cursedTilePotentialSpreadLocations);
		listPos = irandom(listSize-1);
		tileCoordsOfSelectedPotentialTileLocation = ds_list_find_value(cursedTilePotentialSpreadLocations, listPos);
		ds_list_delete(cursedTilePotentialSpreadLocations, listPos);
	
		//removing all duplicate entries from list
		//probably dont need this in the curse spread version of the map generation but better safe than sorry
		scr_FindArrayValuesInList(cursedTilePotentialSpreadLocations, tileCoordsOfSelectedPotentialTileLocation, true);

		tileX = tileCoordsOfSelectedPotentialTileLocation[0];
		tileY = tileCoordsOfSelectedPotentialTileLocation[1];
	
		tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.CURSE_LEVEL_ONE, tileX, tileY);
		displayedCursePower++;
		
		ds_list_add(level1CursedTiles, [tileX, tileY]);
		ds_list_add(cursedTileLocations, [tileX, tileY]);
		scr_AddAdjacentCursedSquareTileCoordsToList(cursedTilePotentialSpreadLocations, cursedTileLocations, mapWidthInTiles, mapHeightInTiles, tileX, tileY);
		if (ds_list_size(cursedTilePotentialSpreadLocations) == 0)
		{
			canSpread = false;
		}
	}
	else if (ds_list_size(level1CursedTiles) < (ds_list_size(level2CursedTiles) * numLevel1sForEachLevel2) && canSpread == true) //adds a 1
	{
		needsToSpread = true;
	}
	else if ((ds_list_size(level2CursedTiles) <= (ds_list_size(level3CursedTiles) * numLevel2sForEachLevel3)) || (canSpread == false && ds_list_size(level1CursedTiles) > 0)) //updates a 1 to a 2
	{
		listSize = ds_list_size(level1CursedTiles);
		listPos = irandom(listSize-1);
		currentTile = ds_list_find_value(level1CursedTiles, listPos);
		ds_list_delete(level1CursedTiles, listPos);
		
		tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.CURSE_LEVEL_TWO, tileX, tileY);
		displayedCursePower++;
		ds_list_add(level2CursedTiles, currentTile);
	}
	else //updates a 2 to a 3
	{
		listSize = ds_list_size(level2CursedTiles);
		listPos = irandom(listSize-1);
		currentTile = ds_list_find_value(level2CursedTiles, listPos);
		ds_list_delete(level2CursedTiles, listPos);
	
		tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.CURSE_LEVEL_THREE, tileX, tileY);
		displayedCursePower++;
		ds_list_add(level3CursedTiles, currentTile);
	}
}


