/// @description called once after information is set to generate things like colors

switch (tileType)
{
	case HEX_TILE_TYPES.FOREST:
		hexGlowColor = make_color_rgb(21, 219, 51);
		break;
	case HEX_TILE_TYPES.MOUNTAIN:
		hexGlowColor = make_color_rgb(181, 25, 25);
		break;
	case HEX_TILE_TYPES.BEACH:
		hexGlowColor = make_color_rgb(252, 200, 56);
		break;
}


