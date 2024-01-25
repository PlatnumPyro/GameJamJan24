
if (global.isPaused == true || global.levelFailed == true)
{
	draw_set_alpha(0.7);
	draw_rectangle_color(0, 0, CAMERA_VIEWPORT_WIDTH, CAMERA_VIEWPORT_HEIGHT, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

if (global.font != undefined)
{
	var listSize = ds_list_size(stringList);
	var lineHeight = font_get_size(global.font) + verticalChoicePadding;
	var alignmentBeforeDraw = draw_get_halign();

	draw_set_font(global.font);
	draw_set_halign(fa_center);
	
	for (var i = 0; i < listSize; i++)
	{
		if (i == highlightedChoiceIndex)
		{
			draw_text_color(viewPosX, viewPosY + i*lineHeight, ds_list_find_value(stringList, i), global.textHighlightColor, global.textHighlightColor, global.textHighlightColor, global.textHighlightColor, 1);
		}
		else
		{
			draw_text_color(viewPosX, viewPosY + i*lineHeight, ds_list_find_value(stringList, i), global.textBaseColor, global.textBaseColor, global.textBaseColor, global.textBaseColor, 1);
		}
	}
	
	draw_set_halign(alignmentBeforeDraw);
}