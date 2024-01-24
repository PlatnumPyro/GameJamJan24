/// @description load the game

if (file_exists("saveData.txt"))
{
	var saveFile = file_text_open_read("saveData.txt");
	
	var loadedString = file_text_read_string(saveFile);
	var data = string_split(loadedString, "#");
	
	var currentTile = [];

	var length = real(array_shift(data));
	for (var i = 0; i < length; i++)
	{
		currentTile[0] = real(array_shift(data));		   //currentTileData[0] = currentTile.tileID;
		currentTile[1] = real(array_shift(data));		   //currentTileData[1] = currentTile.tileType;
		currentTile[2] = real(array_shift(data));		   //currentTileData[2] = currentTile.tileLocation[0];
		currentTile[3] = real(array_shift(data));		   //currentTileData[3] = currentTile.tileLocation[1];
		currentTile[4] = real(array_shift(data));		   //currentTileData[4] = currentTile.tileCurseLevel;
		currentTile[5] = real(array_shift(data));		   //currentTileData[5] = currentTile.tileDifficulty;
		currentTile[6] = real(array_shift(data));		   //currentTileData[6] = currentTile.tileAreaSize;
		currentTile[7] = bool(array_shift(data));		   //currentTileData[7] = currentTile.isFocused;
		currentTile[8] = real(array_shift(data));		   //currentTileData[8] = currentTile.glowPulseNum;
		currentTile[9] = bool(array_shift(data));		   //currentTileData[9] = currentTile.glowIsFadingIn;
		currentTile[10] = bool(array_shift(data));		   //currentTileData[10] = currentTile.tileFocusDisabled;
		currentTile[11] = bool(array_shift(data));		   //currentTileData[11] = currentTile.allowNonCursedFocus;
		
		hexTileLoadData[i] = currentTile;
		
		currentTile = undefined;
	}

	length = real(array_shift(data));

	for (var i = 0; i < length; i++)
	{
		curseStats[i] = array_shift(data);
	}
	
	file_text_close(saveFile);
}