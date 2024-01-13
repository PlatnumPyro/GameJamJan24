/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP]))
{
	self.y -= 3;
}

if (keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN]))
{
	self.y += 3;
}

if (keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT]))
{
	self.x += 3;
}

if (keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT]))
{
	self.x -= 3;
}