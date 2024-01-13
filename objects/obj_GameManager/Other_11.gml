// this is called when the user has pressed a key when the menu is listening for a key press

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
		
	case "Full Screen Toggle":
		global.keyboardControlArray[KEYBOARD_CONTROLS.FULL_SCREEN_WINDOW] = keyListenedPressed;
		break;
}
ds_list_replace(keyboardControlsMenuStringList, ds_list_find_index(keyboardControlsMenuStringList, "Press Any Key to Rebind"), keyToBeChanged);