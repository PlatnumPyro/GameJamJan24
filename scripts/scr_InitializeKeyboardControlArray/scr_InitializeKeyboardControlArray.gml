function scr_InitializeKeyboardControlArray()
{
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP] = vk_up;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN] = vk_down;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT] = vk_left;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT] = vk_right;
    global.keyboardControlArray[KEYBOARD_CONTROLS.FULL_SCREEN_WINDOW] = vk_f11;
    global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE] = vk_escape;
    global.keyboardControlArray[KEYBOARD_CONTROLS.RUN] = vk_shift;
	
	global.keyboardArrayToMenuOptions = ds_map_create();
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_UP, "Up");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_DOWN, "Down");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_LEFT, "Left");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_RIGHT, "Right");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.ESCAPE, "Pause");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.FULL_SCREEN_WINDOW, "Toggle Full Screen");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.RUN, "Run");
}