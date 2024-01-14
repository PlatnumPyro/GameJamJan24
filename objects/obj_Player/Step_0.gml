/// @description Insert description here
// You can write your code in this editor

var inputUp = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP]);
var inputDown = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN]);
var inputRight = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT]);
var inputLeft = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT]);
var isRunning = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.RUN]);

// These two lines set up for the dx and dy paramaters of move_and_collide(3)
var xInput = inputRight - inputLeft;
var yInput = inputDown - inputUp;


if (isRunning)
{
	move_and_collide(xInput * runningSpeed, yInput * runningSpeed, all);
} else {
	move_and_collide(xInput * walkingSpeed, yInput * walkingSpeed, all);	
}