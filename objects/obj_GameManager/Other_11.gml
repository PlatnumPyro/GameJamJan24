/// @description key pressed during listen
// this is called when the user has pressed a key when the menu is listening for a key press

var keyDecoded = undefined;

switch (keyToBeChanged)
{
	case "Up":
		global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP] = keyListenedPressed;
		break;
		
	case "Down":
		global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN] = keyListenedPressed;
		break;
		
	case "Left":
		global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT] = keyListenedPressed;
		break;
		
	case "Right":
		global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT] = keyListenedPressed;
		break;
		
	case "Pause":
		global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE] = keyListenedPressed;
		break;
		
	case "Use Ability":
		global.keyboardControlArray[KEYBOARD_CONTROLS.USE_ABILITY] = keyListenedPressed;
		break;
		
	case "Cycle Ability":
		global.keyboardControlArray[KEYBOARD_CONTROLS.CYCLE_ABILITY] = keyListenedPressed;
		break;
}

keyDecoded = ds_map_find_value(global.keyLookupMap, keyListenedPressed);

ds_list_replace(keyboardControlsMenuStringList, ds_list_find_index(keyboardControlsMenuStringList, "Press Any Key to Rebind"), keyToBeChanged + " - " + keyDecoded);
