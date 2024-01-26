/// @description clear curse from tile

var length = ds_list_size(hexTiles);
var currentTile = undefined;

for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(hexTiles, i);
	if (currentTile.tileID == curseTileIDToClear)
	{
		currentTile.tileCurseLevel = 0;
		currentTile.curseParticles = 0;
		break;
	}
}