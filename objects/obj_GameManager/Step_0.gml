if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE]))
{
	global.isPaused = !global.isPaused;
	
	if (global.isPaused)
	{
		clickableList = instance_create_layer(room_width/2, 300, "Instances", obj_ClickableStringList);
	
		clickableList.stringArray = ["Resume", "Return to Title"];
	}
	else if (clickableList != undefined)
	{
		instance_destroy(clickableList);
		clickableList = undefined;
	}
}