/// @description Insert description here
// You can write your code in this editor
if (global.isPaused == false)
{
	if (mouse_check_button_pressed(mb_left))
	{
		var numTiles = ds_list_size(hexTiles);
		var currentTile = undefined;
	
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
			event_perform(ev_other, ev_user2);//start the curse
		}
	}
}