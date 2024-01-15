#macro MAXIMUM_NUM_LEVELS 14
#macro MINIMUM_NUM_LEVELS 12
#macro MAXIMUM_MAP_WIDTH_IN_HEX_TILES 7
#macro MAXIMUM_MAP_HEIGHT_IN_HEX_TILES 5  //wider than tall to better fit monitor dimensions
#macro HEX_TILE_HEIGHT 128  //number of pixels from flat side to flat side on the hex tile (used for scaling)

enum KEYBOARD_CONTROLS
{
    MOVE_UP = 0,
    MOVE_DOWN = 1,
    MOVE_LEFT = 2,
    MOVE_RIGHT = 3,
    FULL_SCREEN_WINDOW = 4,
    ESCAPE = 5,
	RUN = 6,
}

enum ROOM_INDEX
{
	TITLE = 0,
	HEX_WORLD_MAP = 1,
	OVERWORLD = 2
}

enum HEX_TILE_TYPES
{
	FOREST = 0
}