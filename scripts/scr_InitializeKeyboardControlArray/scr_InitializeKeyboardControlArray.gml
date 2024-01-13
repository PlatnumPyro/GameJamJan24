function scr_InitializeKeyboardControlArray()
{
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP] = vk_up;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN] = vk_down;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT] = vk_left;
    global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT] = vk_right;
    global.keyboardControlArray[KEYBOARD_CONTROLS.FULL_SCREEN_WINDOW] = vk_f11;
    global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE] = vk_escape;
}