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
				room_goto(room_MinigamePrologue);
				break;
				
			case "Skip Minigame (remove me)":
				room_goto(ROOM_INDEX.HEX_WORLD_MAP);
				break;
				
			case "Options":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = optionsMenuStringList;				
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
				instance_destroy(clickableList);
				clickableList = undefined;
				room_goto(ROOM_INDEX.TITLE);
				break;
				
			case "Display":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = displayMenuStringList;
				break;
			
			case "Sound":
				ds_stack_push(clickableList.previousStringLists, clickableList.stringList);
				clickableList.stringList = soundMenuStringList;
				break;
			
			case "Keyboard Controls":
				clickableList.stringList = keyboardControlsMenuStringList;
				break;
			
			case "Back":
				clickableList.stringList = ds_stack_pop(clickableList.previousStringLists);
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
				throw "UNKNOWN MENU OPTION SENT TO GAME MANAGER";
		}
	}
}