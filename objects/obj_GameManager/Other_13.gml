/// @description save the game

// list of things to save
// 1. hex map data
// 2. potion stats from minigame "curseStats"
// 3. npcs visitied - TODO
// 4. abilities gained - TODO

var saveFile = file_text_open_write("saveData.txt");
var saveText = "";
var currentTile = undefined;
var currentTileData = undefined;

var length = ds_list_size(hexMap.hexTiles);
saveText += string(length) + "#";
for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(hexMap.hexTiles, i);
	saveText += string(currentTile.tileID) + "#";
	saveText += string(currentTile.tileType) + "#";
	saveText += string(currentTile.tileLocation[0]) + "#";
	saveText += string(currentTile.tileLocation[1]) + "#";
	saveText += string(currentTile.tileCurseLevel) + "#";
	saveText += string(currentTile.tileDifficulty) + "#";
	saveText += string(currentTile.tileAreaSize) + "#";
	saveText += string(currentTile.isFocused) + "#";
	saveText += string(currentTile.glowPulseNum) + "#";
	saveText += string(currentTile.glowIsFadingIn) + "#";
	saveText += string(currentTile.tileFocusDisabled) + "#";
	saveText += string(currentTile.allowNonCursedFocus) + "#";
}

length = array_length(curseStats)
saveText += string(length) + "#";
for (var i = 0; i < length; i++)
{
	saveText += string(curseStats[i]) + "#";
}

file_text_write_string(saveFile, saveText);
file_text_close(saveFile);

//in addition to saving to the file we store the hexTile data in gameManager for the future revisits to the hexMap
length = ds_list_size(hexMap.hexTiles);
for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(hexMap.hexTiles, i);
	
	currentTileData[0] = currentTile.tileID;
	currentTileData[1] = currentTile.tileType;
	currentTileData[2] = currentTile.tileLocation[0];
	currentTileData[3] = currentTile.tileLocation[1];
	currentTileData[4] = currentTile.tileCurseLevel;
	currentTileData[5] = currentTile.tileDifficulty;
	currentTileData[6] = currentTile.tileAreaSize;
	currentTileData[7] = currentTile.isFocused;
	currentTileData[8] = currentTile.glowPulseNum;
	currentTileData[9] = currentTile.glowIsFadingIn;
	currentTileData[10] = currentTile.tileFocusDisabled;
	currentTileData[11] = currentTile.allowNonCursedFocus;
	
	hexTileLoadData[i] = currentTileData;
	
	currentTileData = undefined;
}
