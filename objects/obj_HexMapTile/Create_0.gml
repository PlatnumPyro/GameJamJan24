/// @description Insert description here
// You can write your code in this editor

tileID = undefined;
tileType = undefined;
tileLocation = undefined; //the tile positon in units of HEX_TILE_HEIGHT
tileCurseLevel = undefined;
tileDifficulty = undefined;
tileAreaSize = undefined;
isFocused = false;

tileMap = obj_HexMap;  //to be set by the map itself for event calling

//because the height is also the shorter side of the square, 
//we do a little additional hexagon math to make the scale work
// 1 : 1.1547005 is the ratio for flat to flat vs point to point on a hexagon
imageScale = (HEX_TILE_HEIGHT/sprite_get_width(spr_TileForest))*HEX_TILE_CONVERSION_RATIO
focusedImageScale = imageScale * 1.1;

forestHexGlowColor = make_color_rgb(21, 219, 51);