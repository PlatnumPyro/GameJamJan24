global.currentRoom = room_first;
//global.font = font_placeholderMonospaceFont;
global.font = font_add("NiceSugar.otf", 32, true, false, 32, 128); //TODO change this to the font we select

//font_enable_sdf(global.font, true);
global.textBaseColor = c_white;
global.textHighlightColor = make_color_rgb(221, 148, 255);
global.gameManager = self;
global.isPaused = false;
global.player = undefined;

global.cursePower = 15; //total levels of curse to spread (each tile getting 1 to 3 of those points)
global.numCursedTiles = -1;  //to be set by the square level generation
global.maxAllowedCursedTiles = -1;  //to be set by the square level generation
global.currentMaximumAllowedCurseTileSelection = 1;

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

//load the game
event_perform(ev_other, ev_user4);


