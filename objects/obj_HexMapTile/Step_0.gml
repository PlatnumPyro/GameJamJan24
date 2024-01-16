/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button(mb_left))
{
	with(tileMap)
	{
		event_perform(ev_other, ev_user1);
	}
}

if (point_distance(mouse_x, mouse_y, self.x, self.y) < HEX_TILE_HEIGHT/2)
{
	if (isFocused == false)
	{
		with (tileMap)
		{
			event_perform(ev_other, ev_user0);
		}

		isFocused = true;
		depth = -10;

		show_debug_message("FOCUS CALLED ON TILE {0}", tileID);
	}
}

if (isFocused == false)
{
	depth = 10;
}