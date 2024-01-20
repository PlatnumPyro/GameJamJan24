/// @description clear all tile focus

var numTiles = ds_list_size(hexTiles);

for (var i = 0; i < numTiles; i++)
{
	var currentTile = ds_list_find_value(hexTiles, i);
	currentTile.isFocused = false;
}

show_debug_message("CLEARED ALL FOCUSED TILES");