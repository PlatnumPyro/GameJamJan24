hexTiles = ds_list_create();
selectedHexTileData = undefined;
numHexTiles = -1;

hexTileMountainRadius = 0.8;
hexTileForestRadius = 1.4;
numCaveTileReplacements = 1;

curseStartingLocation = [0,0]; //to be set by the player at the end of the minigame
displayedCursePower = 0;
desiredCursePowerToDisplay = 0;
numStepsBetweenCurseSpread = 10;
currentStepSinceLastCurseSpread = 0;
curseInitialized = false;

// we want a ratio of tiles   6 ones | 3 twos | 1 three  and spread when its out of wack
numLevel1sForEachLevel2 = 2;
numLevel2sForEachLevel3 = 3;

hexTileLoadData = undefined; //for loading from data

curseTileIDToClear = undefined;


if(global.progressFlag1 == false) {
	scr_textbox("progress-map")
	global.progressFlag1 = true
}

if(global.totalLevelsCleared == global.levelsToUnlockLevel2 && global.progressFlag3==false)
{
	scr_textbox("progress-map2")
	global.progressFlag3=true
	global.currentMaximumAllowedCurseTileSelection = 2
}

if(global.totalLevelsCleared == global.levelsToUnlockLevel3 && global.progressFlag4==false)
{
	scr_textbox("progress-map3")
	global.progressFlag4=true
	global.currentMaximumAllowedCurseTileSelection = 3
}

if (global.totalCursePowerCleared >= global.gameWinCurseClearedPoints) {
	scr_textbox("progress-win")
}