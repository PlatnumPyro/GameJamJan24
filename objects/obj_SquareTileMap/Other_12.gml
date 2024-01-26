/// @description cleanse potion landed
var length = 0;
var currentTile = undefined;
var removalIndex = undefined;
var level1ToBeRemoved = ds_list_create();
var level2ToBeRemoved = ds_list_create();
var level3ToBeRemoved = ds_list_create();

if(abilityCleanseLocation != undefined)
{
	show_debug_message("ABILITY X: {0}, Y: {1}", abilityCleanseLocation[0], abilityCleanseLocation[1])
	length = ds_list_size(level1CursedTiles);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level1CursedTiles, i);
		if (is_array(currentTile) == true)
		{
			
	show_debug_message("ABILITY X: {0}, Y: {1}", abilityCleanseLocation[0], abilityCleanseLocation[1]);
	show_debug_message("TILE X: {0}, Y: {1}", currentTile[0] * SQUARE_TILE_SIZE, currentTile[1] * SQUARE_TILE_SIZE);
	show_debug_message("DIST: {0}", point_distance(abilityCleanseLocation[0], abilityCleanseLocation[1], currentTile[0] * SQUARE_TILE_SIZE, currentTile[1]* SQUARE_TILE_SIZE));
	
			if (point_distance(abilityCleanseLocation[0], abilityCleanseLocation[1], currentTile[0] * SQUARE_TILE_SIZE, currentTile[1]* SQUARE_TILE_SIZE) <= cleanseRadius)
			{
				ds_list_add(level1ToBeRemoved, currentTile);
				global.currentSquareTilesToCurse--;
				displayedCursePower--;
			}
		}
	}
	
	length = ds_list_size(level2CursedTiles);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level2CursedTiles, i);
		if (is_array(currentTile) == true)
		{
			if (point_distance(abilityCleanseLocation[0], abilityCleanseLocation[1], currentTile[0]* SQUARE_TILE_SIZE, currentTile[1]* SQUARE_TILE_SIZE) <= cleanseRadius)
			{
				ds_list_add(level2ToBeRemoved, currentTile);
				global.currentSquareTilesToCurse--;
				displayedCursePower--;
			}
		}
	}
	
	length = ds_list_size(level3CursedTiles);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level3CursedTiles, i);
		if (is_array(currentTile) == true)
		{
			if (point_distance(abilityCleanseLocation[0], abilityCleanseLocation[1], currentTile[0]* SQUARE_TILE_SIZE, currentTile[1]* SQUARE_TILE_SIZE) <= cleanseRadius)
			{
				ds_list_add(level3ToBeRemoved, currentTile);
				global.currentSquareTilesToCurse--;
				displayedCursePower--;
			}
		}
	}
	
	//
	//  REMOVING FROM LISTS, AND DOWNGRADING TO OTHER LISTS
	//
	
	
	length = ds_list_size(level1ToBeRemoved);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level1ToBeRemoved, i);
		
		if (is_array(currentTile) == true)
		{
			scr_FindArrayValuesInList(level1CursedTiles, currentTile, true);
			tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.NONE, currentTile[0], currentTile[1]);
		}
	}
	
	length = ds_list_size(level2ToBeRemoved);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level2ToBeRemoved, i);
		
		if (is_array(currentTile) == true)
		{
			scr_FindArrayValuesInList(level2CursedTiles, currentTile, true);
			tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.CURSE_LEVEL_ONE, currentTile[0], currentTile[1]);
			ds_list_add(level1CursedTiles, currentTile);
		}
	}
	
	length = ds_list_size(level3ToBeRemoved);
	for (var i = 0; i < length; i++)
	{
		currentTile = ds_list_find_value(level3ToBeRemoved, i);
		
		if (is_array(currentTile) == true)
		{
			scr_FindArrayValuesInList(level3CursedTiles, currentTile, true);
			tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.CURSE_LEVEL_TWO, currentTile[0], currentTile[1]);
			ds_list_add(level2CursedTiles, currentTile);
		}
		
	}
}

