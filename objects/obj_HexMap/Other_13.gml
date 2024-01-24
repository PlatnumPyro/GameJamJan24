/// @description load already made map

var currentTileData = undefined;
var currentTile = undefined;
var tileX = 0;
var tileY = 0;

var length = array_length(hexTileLoadData);

for (var i = 0; i < length; i++)
{
	currentTileData = hexTileLoadData[i];
	
	show_debug_message("currentTileData at {0}: {1}", i, currentTileData);
	
	tileX = currentTileData[2];
	tileY = currentTileData[3];
	
	currentTile = instance_create_layer(self.x + round(tileX * HEX_TILE_HEIGHT * HEX_TILE_CONVERSION_RATIO), self.y + (tileY * HEX_TILE_HEIGHT), "Instances", obj_HexMapTile);
	
	currentTile.tileID = currentTileData[0];
	currentTile.tileType = currentTileData[1];
	currentTile.tileLocation = [tileX, tileY];
	currentTile.tileCurseLevel = currentTileData[4];
	currentTile.tileDifficulty = currentTileData[5];
	currentTile.tileAreaSize = currentTileData[6];
	currentTile.isFocused = currentTileData[7];
	currentTile.glowPulseNum = currentTileData[8];
	currentTile.glowIsFadingIn = currentTileData[9];
	currentTile.tileFocusDisabled = currentTileData[10];
	currentTile.allowNonCursedFocus = currentTileData[11];
	 
	ds_list_add(hexTiles, currentTile);
	curseInitialized = true;
	displayedCursePower = global.cursePower;
}