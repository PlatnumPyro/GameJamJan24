if (global.font != undefined)
{
	var fontInfo = font_get_info(global.font);
	var lineHeight = fontInfo.size + verticalChoicePadding;
	var ascenderHeight = fontInfo.ascender;
	
	highlightedChoiceIndex = -1;
	
	if (abs(viewPosX - display_mouse_get_x()) < halfSelectionWidth) 
	{
		var relativeMouseYPos = display_mouse_get_y() - (viewPosY + ascenderHeight + round(verticalChoicePadding/2));
	
		highlightedChoiceIndex = round((relativeMouseYPos-(lineHeight/2))/lineHeight) +1;
	
	}
	
	if (mouse_check_button_pressed(mb_left) && highlightedChoiceIndex != -1)
	{
		//tells the game manager to run user event 0 which will read this object
		with (global.gameManager)
		{
			event_perform(ev_other, ev_user0);
		}
	}
}