#macro MAXIMUM_NUM_LEVELS 14
#macro MINIMUM_NUM_LEVELS 12
#macro MAXIMUM_MAP_WIDTH_IN_HEX_TILES 5
#macro MAXIMUM_MAP_HEIGHT_IN_HEX_TILES 4  //wider than tall to better fit monitor dimensions
#macro HEX_TILE_HEIGHT 128  //number of pixels from flat side to flat side on the hex tile (used for scaling)
#macro HEX_TILE_CONVERSION_RATIO 1.1547005 //flat to flat vs point to point
#macro SQUARE_TILE_SIZE 128 // height and width of the tile in pixels
#macro CAMERA_VIEWPORT_WIDTH 1920
#macro CAMERA_VIEWPORT_HEIGHT 1080
#macro CAMERA_SLACK_IN_PIXELS 0 // how much the player needs to move to start pushing the camera with

#macro MAP_SIZE_SMALL_WIDTH_IN_TILES 18
#macro MAP_SIZE_SMALL_HEIGHT_IN_TILES 10
#macro MAP_SIZE_MEDIUM_WIDTH_IN_TILES 24
#macro MAP_SIZE_MEDIUM_HEIGHT_IN_TILES 12
#macro MAP_SIZE_LARGE_WIDTH_IN_TILES 30
#macro MAP_SIZE_LARGE_HEIGHT_IN_TILES 16

enum KEYBOARD_CONTROLS
{
    MOVE_UP = 0,
    MOVE_DOWN = 1,
    MOVE_LEFT = 2,
    MOVE_RIGHT = 3,
    ESCAPE = 4,
	RUN = 5,
	USE_ABILITY = 6,
	CYCLE_ABILITY = 7
}

enum ROOM_INDEX
{
	TITLE = 0,
	MINIGAME_PROLOGUE = 1,
	MINIGAME = 2,
	HEX_WORLD_MAP = 3,
	OVERWORLD = 4,
}

enum HEX_TILE_TYPES
{
	FOREST = 0,
	MOUNTAIN = 1,
	BEACH = 2,
	CAVE = 3
}

enum HEX_TILE_DATA
{
	TYPE = 0,
	CURSE_LEVEL = 1,
	DIFFICULTY = 2,
	AREA_SIZE = 3
}

enum SQUARE_TILE_TYPES
{
	NONE = 0, //placeholder required by game maker for an empty tile
	GRASS = 1,
	GRASS_WITH_ROCK = 2,
	SAND = 3,
	WALL_BOTTOM = 4,
	GRASS_WALL_TOP = 5
}

enum SQUARE_TILE_OVERLAY_TYPES
{
	NONE = 0, //placeholder required by game maker for an empty tile
	CURSE_LEVEL_ONE = 1,
	CURSE_LEVEL_TWO = 2,
	CURSE_LEVEL_THREE = 3,
	SAND_SHADE_ONE = 4,
	SAND_SHADE_TWO = 5,
	SAND_SHADE_THREE = 6,
	WATER_SHADE_ONE = 7,
	WATER_SHADE_TWO = 8,
	WATER_SHADE_THREE = 9
}

enum MAP_SIZES
{
	SMALL = 0,
	MEDIUM = 1,
	LARGE = 2
}