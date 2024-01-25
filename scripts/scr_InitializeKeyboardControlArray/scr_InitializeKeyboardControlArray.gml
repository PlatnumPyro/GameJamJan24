function scr_InitializeKeyboardControlArray()
{
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP] = 87;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN] = 83;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT] = 65;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT] = 68;
    global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE] = vk_escape;
    global.keyboardControlArray[KEYBOARD_CONTROLS.RUN] = vk_shift;
	global.keyboardControlArray[KEYBOARD_CONTROLS.USE_ABILITY] = 69;
	global.keyboardControlArray[KEYBOARD_CONTROLS.CYCLE_ABILITY] = 81;
	
	global.keyboardArrayToMenuOptions = ds_map_create();
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_UP, "Up");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_DOWN, "Down");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_LEFT, "Left");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.MOVE_RIGHT, "Right");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.ESCAPE, "Pause");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.RUN, "Run");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.USE_ABILITY, "Use Ability");
	ds_map_add(global.keyboardArrayToMenuOptions, KEYBOARD_CONTROLS.CYCLE_ABILITY, "Cycle Ability");
}