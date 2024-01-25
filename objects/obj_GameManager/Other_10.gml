/// @description user clicked menu
// This is called when the user clicks on an option from a clickable string list
if (clickableList != undefined)
{
	var optionSelected = clickableList.highlightedChoiceIndex;
	var optionString = undefined;
	var adjustedOptionString = undefined; // need this to check for labels without keybinds

	if (optionSelected != -1)
	{
		optionString = ds_list_find_value(clickableList.stringList, optionSelected);
		
		adjustedOptionString = string_split(optionString, " - ")[0];
		
		switch (adjustedOptionString)
		{
			case "Start Game":
				room_goto(ROOM_INDEX.MINIGAME_PROLOGUE);
				break;
				
			case "Skip Minigame (remove me)":
				room_goto(ROOM_INDEX.HEX_WORLD_MAP);
				break;
				
			case "Options":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = optionsMenuStringList;
				titleCardText.text = "Options";			
				break;
				
			case "Delete Saved Data":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = deleteSavedDataQuestionList;
				titleCardText.text = "Are You Sure?";
				break;
			
			case "Yes":
				if (file_exists("saveData.txt"))
				{
					file_delete("saveData.txt");
				}
				hexTileLoadData = undefined;
				titleCardText.text = "Options"
				clickableList.stringList = ds_stack_pop(clickableList.previousStringLists);
				break;
			
			case "No":
				clickableList.stringList = ds_stack_pop(clickableList.previousStringLists);
				titleCardText.text = "Options"
				break;
			
			case "Exit":
				game_end();
				break;
				
			case "Resume":
				global.isPaused = false;
				instance_destroy(clickableList);
				clickableList = undefined;
				break;
			
			case "Return to Title":
				global.isPaused = false;
				global.levelFailed = false;
				instance_destroy(clickableList);
				clickableList = undefined;
				room_goto(ROOM_INDEX.TITLE);
				break;
				
			case "Continue":
				global.isPaused = false;
				room_goto(ROOM_INDEX.HEX_WORLD_MAP);
				break;
				
			case "Keyboard Controls":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = keyboardControlsMenuStringList;
				clickableList.viewPosY = 200; //move up to where the title card usually is
				titleCardText.text = ""; //no title card, need the room for options
				break;
			
			case "Back":
				clickableList.stringList = ds_stack_pop(clickableList.previousStringLists);
				clickableList.viewPosY = 400;
				switch (clickableList.stringList)
				{
					case optionsMenuStringList:
						titleCardText.text = "Options";
						break;
						
					case titleMenuStringList:
						titleCardText.text = global.gameName;
						break;
				}
				break;
			
			case "Up":
			case "Down":
			case "Left":
			case "Right":
			case "Pause":
			case "Full Screen Toggle":
				ds_list_replace(keyboardControlsMenuStringList, ds_list_find_index(keyboardControlsMenuStringList, optionString), "Press Any Key to Rebind");
				keyToBeChanged = adjustedOptionString;
				listeningForKeyboardInput = true;
				break;
				
			default:
				//do nothing, I just wanted this to stop breaking for no reason
		}
	}
}