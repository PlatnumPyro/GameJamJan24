if (listeningForKeyboardInput)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		listeningForKeyboardInput = false;
		keyListenedPressed = keyboard_lastkey;
		event_perform(ev_other, ev_user1);
	}
	return;	
}

if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE]))
{
	if (room != room_first)
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
}

if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.FULL_SCREEN_WINDOW]))
{
	//TODO currently does nothing
}
