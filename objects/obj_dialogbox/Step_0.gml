/// @description Insert description here
// You can write your code in this editor

var continueButton = keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.USE_ABILITY])
timer++

if (timer = timerSpeed && letterCount <= string_length(text[currentPage])) {
	letterCount++
	timer=0
}


if(continueButton) {
	if (letterCount < string_length(text[currentPage])) {
		letterCount = string_length(text[currentPage])
	}
	else if (currentPage < array_length(text)-1) {
		currentPage++
		letterCount = 0
		timer=0
	}
	else
	{instance_destroy()}
}


if (option_number > 0)
{
	// Only on the last page
	if (letterCount >= string_length(text[currentPage]) && currentPage = totalPages-1)
	{
		if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP]) && option_position>0)
			option_position -= 1
		if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN]) && option_position<option_number-1)
			option_position += 1
	}
	
	if (continueButton) {
		scr_textbox(option_id[option_position])
	}
}