if (listeningForKeyboardInput == true)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		listeningForKeyboardInput = false;
		keyListenedPressed = keyboard_lastkey;
		event_perform(ev_other, ev_user1);
		
		show_debug_message("keycode of last key: {0}", keyListenedPressed);
	}
	return;	
}
else
{
	if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE]))
	{
		if (room != room_first)
		{
			global.isPaused = !global.isPaused;
	
			if (global.isPaused)
			{
				clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList); // TODO change this if we add different resolution options
				
				clickableList.viewPosX = 960;
				clickableList.viewPosY = 400;
				clickableList.stringList = pauseMenuStringList;
			}
			else if (clickableList != undefined)
			{
				instance_destroy(clickableList);
				clickableList = undefined;
			}
		}
	}
}

//Timings for the curse
if (global.isPaused == false)
{
	if (currentCurseSpreadStep == stepsPerCurseSpreadEvent)
	{
		currentCurseSpreadStep = 0;
		event_perform(ev_other, ev_user5);
	}
	else
	{
		currentCurseSpreadStep++;
	}
}

//fail states for the game world, we might want to give them a different message if they failed in a different way
if (room == ROOM_INDEX.OVERWORLD)
{
	if (global.levelFailed == false && global.isPaused == false)
	{
		if (global.currentSquareTilesToCurse >= global.maximumAllowedSquareTilesToCurse && (global.totalLevelsFailed < global.maximumAllowedFailedLevels))
		{
			global.levelFailed = true;
			global.isPaused = true;
			global.totalLevelsFailed++;
			
			if (global.totalLevelsFailed < global.maximumAllowedFailedLevels)
			{
				clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
				
				clickableList.viewPosX = 960;
				clickableList.viewPosY = 800;
				clickableList.stringList = levelFailedStringList;
			
				titleCardText = instance_create_layer(960, 200, "Instances", obj_TitleCardText);
				titleCardText.text = "Level Consumed by the Curse";
			
				deathAnimationForGameOver = instance_create_layer(960, 600, "Instances", obj_PlayerDeathForGameOver);
			
				global.player.visible = false; //so we dont have two of them running around
			}
		}
		else if (global.player.playerHealth <= 0 && (global.totalLevelsFailed < global.maximumAllowedFailedLevels))
		{
			global.levelFailed = true;
			global.isPaused = true;
			global.totalLevelsFailed++;
			
			if (global.totalLevelsFailed < global.maximumAllowedFailedLevels)
			{
				clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
				clickableList.viewPosX = 960;
				clickableList.viewPosY = 800;
				clickableList.stringList = levelFailedStringList;
			
				titleCardText = instance_create_layer(960, 200, "Instances", obj_TitleCardText);
				titleCardText.text = "Defeated.";
			
				deathAnimationForGameOver = instance_create_layer(960, 600, "Instances", obj_PlayerDeathForGameOver);
			
				global.player.visible = false; //so we dont have two of them running around
			}
		}
		
		if (global.totalLevelsFailed >= global.maximumAllowedFailedLevels)// game over
		{
			global.levelFailed = true;
			global.isPaused = true;
		
			clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
		
			clickableList.viewPosX = 960;
			clickableList.viewPosY = 800;
			clickableList.stringList = gameOverStringList;
			
			titleCardText = instance_create_layer(960, 200, "Instances", obj_TitleCardText);
			titleCardText.text = "Game Over";
			
			deathAnimationForGameOver = instance_create_layer(960, 600, "Instances", obj_PlayerDeathForGameOver);
			
			global.player.visible = false; //so we dont have two of them running around
		}
		
		if ((global.levelFailed == false) && (global.currentSquareTilesToCurse <= global.levelSuccessNumTiles))
		{
			global.levelSuccess = true;
			global.isPaused = true;
		
			clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList);
				
			clickableList.viewPosX = 960;
			clickableList.viewPosY = 800;
			clickableList.stringList = levelFailedStringList;
			
			titleCardText = instance_create_layer(960, 200, "Instances", obj_TitleCardText);
			titleCardText.text = "Curse Cleared!";
			
			global.player.visible = false; //so we dont have two of them running around
		}
	}
}