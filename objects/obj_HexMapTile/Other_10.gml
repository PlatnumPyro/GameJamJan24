/// @description called once after information is set to generate things like colors

switch (tileType)
{
	case HEX_TILE_TYPES.FOREST:
		hexGlowColor = make_color_rgb(0, 255, 135);
		break;
	case HEX_TILE_TYPES.MOUNTAIN:
		hexGlowColor = make_color_rgb(255, 230, 127);
		break;
	case HEX_TILE_TYPES.BEACH:
		hexGlowColor = make_color_rgb(99, 72, 255);
		break;
	case HEX_TILE_TYPES.CAVE:
		hexGlowColor = make_color_rgb(204, 167, 143);
		break;
}


