global.currentRoom = room_first;
global.font = font_placeholderMonospaceFont;
//global.font = font_add("fonts\dpsdbeyond\DPSDbeyond.otf", 32, false, false, 32, 128); //TODO change this to the font we select
//font_enable_sdf(global.font, true);
global.textBaseColor = c_white;
global.textHighlightColor = c_red;
global.gameManager = self;
global.isPaused = false;
global.player = undefined;

clickableList = undefined;
hexMap = undefined;
squareMap = undefined;
selectedHexTileData = undefined;

areaSizeMappedToEnum = ds_list_create();
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_SMALL_WIDTH_IN_TILES, MAP_SIZE_SMALL_HEIGHT_IN_TILES]);
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_MEDIUM_WIDTH_IN_TILES, MAP_SIZE_MEDIUM_HEIGHT_IN_TILES]);
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_LARGE_WIDTH_IN_TILES, MAP_SIZE_LARGE_HEIGHT_IN_TILES]);


//IMPORTANT!!  will randomize the seed so you dont get the same game every time
randomize();


