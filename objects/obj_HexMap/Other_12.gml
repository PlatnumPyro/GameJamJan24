/// @description spread curse

//THE CURSE
// the curse is created one point at a time looking to see if the ratio of curse levels 1, 2, and 3 match the expected and corrects to more closely match
//adding new tiles as the ratios balance out so it will add a 1 tile, then increase a 1 to a 2 and if there are enough 2s, a 2 to a 3.

// we create the first tile manually as we base all the others off this ones position
var currentTile = undefined;
var tileX = 0;
var tileY = 0;
var listSize = 0;

var actualTileLocations = scr_GeneratePositionsArrayFromHexMapList(hexTiles);
var tileCoordsOfSelectedPotentialTileLocation = [];
var listPos = 0;

//handle the curse spread like the actual map generation
var cursedTileLocations = scr_GeneratePositionsArrayFromHexMapList(hexTiles, true);
var cursedTilePotentialSpreadLocations = ds_list_create();
var level1CursedTiles = scr_GetListOfCursedTiles(hexTiles, 1);
var level2CursedTiles = scr_GetListOfCursedTiles(hexTiles, 2);
var level3CursedTiles = scr_GetListOfCursedTiles(hexTiles, 3);
var needsToSpread = false;
var canSpread = true;

//create the potential positions list using the list of curse tiles
listSize = ds_list_size(cursedTileLocations);
for (var i = 0; i < listSize; i++)
{
	tileCoordsOfSelectedPotentialTileLocation = ds_list_find_value(cursedTileLocations, i);
	tileX = tileCoordsOfSelectedPotentialTileLocation[0];
	tileY = tileCoordsOfSelectedPotentialTileLocation[1];
	scr_AddAdjacentCursedHexTileCoordsToList(cursedTilePotentialSpreadLocations, cursedTileLocations, actualTileLocations, tileX, tileY);
}

if (displayedCursePower == 0)
{
	ds_list_add(cursedTilePotentialSpreadLocations, curseStartingLocation);
	needsToSpread = true;
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
	
		currentTile = scr_GetHexTileAtLocation(hexTiles, [tileX, tileY]);
		currentTile.tileCurseLevel = 1;
		displayedCursePower++;
		ds_list_add(level1CursedTiles, currentTile);
		
		ds_list_add(cursedTileLocations, [tileX, tileY]);
		scr_AddAdjacentCursedHexTileCoordsToList(cursedTilePotentialSpreadLocations, cursedTileLocations, actualTileLocations, tileX, tileY);
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
		
		currentTile.tileCurseLevel = 2;
		displayedCursePower++;
		ds_list_add(level2CursedTiles, currentTile);
	}
	else //updates a 2 to a 3
	{
		listSize = ds_list_size(level2CursedTiles);
		listPos = irandom(listSize-1);
		currentTile = ds_list_find_value(level2CursedTiles, listPos);
		ds_list_delete(level2CursedTiles, listPos);
	
		currentTile.tileCurseLevel = 3;
		displayedCursePower++;
		ds_list_add(level3CursedTiles, currentTile);
	}
}
