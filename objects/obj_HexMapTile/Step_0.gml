/// @description Insert description here
// You can write your code in this editor

if (point_distance(mouse_x, mouse_y, self.x, self.y) < HEX_TILE_HEIGHT/2)
{
	if (isFocused == false && global.currentMaximumAllowedCurseTileSelection >= tileCurseLevel && tileFocusDisabled == false)
	{
		if (allowNonCursedFocus == true || (allowNonCursedFocus == false && tileCurseLevel > 0))
		{
			with (tileMap)
			{
				event_perform(ev_other, ev_user1);
			}

			isFocused = true;
			depth = -10;
		}
	}
}

if (isFocused == false)
{
	depth = 10;
}
else if (point_distance(mouse_x, mouse_y, self.x, self.y) > HEX_TILE_HEIGHT/2)
{
	isFocused = false;
}