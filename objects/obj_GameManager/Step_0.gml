if (listeningForKeyboardInput == true)
{
	if (keyboard_check_pressed(vk_anykey))
	{
		listeningForKeyboardInput = false;
		keyListenedPressed = keyboard_lastkey;
		event_perform(ev_other, ev_user1);
	}
	return;	
}
else
{
	if (keyboard_check_pressed(global.keyboardControlArray[KEYBOARD_CONTROLS.ESCAPE]))
	{
		if (room != room_first)
		{
			global.isPaused = !global.isPaused;
	
			if (global.isPaused)
			{
				clickableList = instance_create_layer(0, 0, "Instances", obj_ClickableStringList); // TODO change this if we add different resolution options
				
				clickableList.viewPosX = 960;
				clickableList.viewPosY = 400;
				clickableList.stringList = pauseMenuStringList;
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
}


//Debug
if(mouse_check_button_pressed(mb_left) && !instance_exists(obj_testdialog)) 
{
	if (layer_exists("GUI"))
	{
		textbox = instance_create_layer(0,0,"GUI",obj_testdialog)
		textbox.text = ["[wave]Hello [rainbow]World[/rainbow]!","I'm a second textbox!"]
	}
}