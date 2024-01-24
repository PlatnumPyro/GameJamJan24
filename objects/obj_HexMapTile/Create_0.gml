/// @description Insert description here
// You can write your code in this editor

tileID = undefined;
tileType = HEX_TILE_TYPES.FOREST; // defaults to forest because if it cant draw the tile it explodes
tileLocation = undefined; //the tile positon in units of HEX_TILE_HEIGHT
tileCurseLevel = undefined;
tileDifficulty = undefined;
tileAreaSize = undefined;
isFocused = false;
hexGlowColor = c_white;
glowPulseNum = 100;
glowIsFadingIn = true;

tileMap = obj_HexMap;  //to be set by the map itself for event calling
tileFocusDisabled = false;
allowNonCursedFocus = true; // do we want the player to click a tile with level 0 curse

//because the height is also the shorter side of the square, 
//we do a little additional hexagon math to make the scale work
// 1 : 1.1547005 is the ratio for flat to flat vs point to point on a hexagon
imageScale = (HEX_TILE_HEIGHT/sprite_get_width(spr_HexTiles))*HEX_TILE_CONVERSION_RATIO
focusedImageScale = imageScale * 1.1;