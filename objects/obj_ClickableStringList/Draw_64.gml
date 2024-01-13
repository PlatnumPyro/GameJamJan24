if (global.font != undefined)
{
	var listSize = array_length(stringArray);
	var lineHeight = font_get_size(global.font) + verticalChoicePadding;

	draw_set_font(global.font);
	draw_set_halign(fa_center);
	
	for (var i = 0; i < listSize; i++)
	{
		draw_set_color(global.textBasetColor);
		if (i == highlightedChoiceIndex)
		{
			draw_set_color(global.textHighlightColor);
		}
		draw_text(self.x, self.y + i*lineHeight, stringArray[i]);
	}
}