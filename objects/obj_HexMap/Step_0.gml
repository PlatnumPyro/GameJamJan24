/// @description Insert description here
// You can write your code in this editor

var numTiles = -1;
var currentTile = undefined;
		
if (global.isPaused == false)
{
	if (mouse_check_button_pressed(mb_left))
	{
		numTiles = ds_list_size(hexTiles);
	
		for (var i = 0; i < numTiles; i++)
		{
			currentTile = ds_list_find_value(hexTiles, i);
			if (currentTile.isFocused == true)
			{
				selectedHexTileData = ds_list_create();
				ds_list_add(selectedHexTileData, currentTile.tileType);
				ds_list_add(selectedHexTileData, currentTile.tileCurseLevel);
				ds_list_add(selectedHexTileData, currentTile.tileDifficulty);
				ds_list_add(selectedHexTileData, currentTile.tileAreaSize);
			
				if (curseInitialized == true && displayedCursePower == global.cursePower)
				{
					with (global.gameManager)
					{
						event_perform(ev_other, ev_user2);
					}
				}
				else
				{
					curseInitialized = true;
					curseStartingLocation = currentTile.tileLocation;
					event_perform(ev_other, ev_user2);//start the curse
					
					//disable the tiles from highlighting
					numTiles = ds_list_size(hexTiles);
					currentTile = undefined;
					for (var j = 0; j < numTiles; j++)
					{
						currentTile = ds_list_find_value(hexTiles, j);
						currentTile.tileFocusDisabled = true;
					}
					
					event_perform(ev_other, ev_user1);//clear currently highlighted tile
				}
			}
		}
	}
	
	if (curseInitialized == true && displayedCursePower < global.cursePower)
	{
		if (currentStepSinceLastCurseSpread < numStepsBetweenCurseSpread)
		{
			currentStepSinceLastCurseSpread++;
		}
		else
		{
			currentStepSinceLastCurseSpread = 0;
			desiredCursePowerToDisplay++;
			event_perform(ev_other, ev_user2);//spread the curse
		}
	}
	else if (curseInitialized == true && displayedCursePower == global.cursePower)
	{
		//enable the tiles to highlighting
		numTiles = ds_list_size(hexTiles);
		currentTile = undefined;
		for (var i = 0; i < numTiles; i++)
		{
			currentTile = ds_list_find_value(hexTiles, i);
			currentTile.tileFocusDisabled = false;
			currentTile.allowNonCursedFocus = false;
		}
	}
}