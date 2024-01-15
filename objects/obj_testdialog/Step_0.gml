/// @description Insert description here
// You can write your code in this editor

timer++

if (timer = timerSpeed) {
	letterCount++
	timer=0
}

//Uses LMB as debug
if(keyboard_check_pressed(vk_space)) {
	if (letterCount < string_length(text[currentPage])) {
		letterCount = string_length(text[currentPage])
	}
	else if (currentPage < array_length(text)-1) {
		currentPage++
		letterCount = 0
	}
	else
	{instance_destroy()}
}