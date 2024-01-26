global.currentRoom = room_first;
//global.font = font_placeholderMonospaceFont;
global.font = font_add("NiceSugar.otf", 32, true, false, 32, 128); //TODO change this to the font we select
global.titleFont = font_add("NiceSugar.otf", 128, true, false, 32, 128);

global.gameName = "Alchemayhem";

//font_enable_sdf(global.font, true);
global.textBaseColor = c_white;
global.textHighlightColor = make_color_rgb(221, 148, 255);
global.gameManager = self;
global.isPaused = false;
global.player = undefined;
global.levelFailed = false;
global.levelSuccess = false;
global.totalLevelsFailed = 0;
global.maximumAllowedFailedLevels = 3;
global.totalLevelsCleared = 0;
global.totalCursePowerCleared = 0;
global.gameWinCurseClearedPoints = 10;

global.cursePower = 15; //total levels of curse to spread on HexTiles (each tile getting 1 to 3 of those points)
global.currentSquareTilesToCurse = 0; //set in room start with the info from the hex tile selected
global.maximumAllowedSquareTilesToCurse = 0; //set in room start with the info from the hex tile selected
global.currentMaximumAllowedCurseTileSelection = 1;


clickableList = undefined;
hexMap = undefined;
squareMap = undefined;
selectedHexTileData = undefined;
stepsPerCurseSpreadEvent = 40;
currentCurseSpreadStep = 0;
currentHexTileSelectedCurseLevel = 0;
levelFailedCursePowerPenalty = 3;

curseStats = [0,0,0];

areaSizeMappedToEnum = ds_list_create();
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_SMALL_WIDTH_IN_TILES, MAP_SIZE_SMALL_HEIGHT_IN_TILES]);
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_MEDIUM_WIDTH_IN_TILES, MAP_SIZE_MEDIUM_HEIGHT_IN_TILES]);
ds_list_add(areaSizeMappedToEnum, [MAP_SIZE_LARGE_WIDTH_IN_TILES, MAP_SIZE_LARGE_HEIGHT_IN_TILES]);

//IMPORTANT!!  will randomize the seed so you dont get the same game every time
randomize();

//load the game
event_perform(ev_other, ev_user4);


