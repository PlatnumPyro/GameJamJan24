/// @description create particles per tile
var length = 0;
var currentTile = undefined;

length = ds_list_size(level1CursedTiles);
for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(level1CursedTiles, i);
	if (is_array(currentTile) == true)
	{
		scr_AddParticleSystemToArray(particleArray, currentTile[0] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), currentTile[1] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), 1);
	}
}
length = ds_list_size(level2CursedTiles);
for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(level2CursedTiles, i);
	if (is_array(currentTile) == true)
	{
		scr_AddParticleSystemToArray(particleArray, currentTile[0] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), currentTile[1] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), 2);
	}
}
length = ds_list_size(level3CursedTiles);
for (var i = 0; i < length; i++)
{
	currentTile = ds_list_find_value(level3CursedTiles, i);
	if (is_array(currentTile) == true)
	{
		scr_AddParticleSystemToArray(particleArray, currentTile[0] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), currentTile[1] * SQUARE_TILE_SIZE + round(SQUARE_TILE_SIZE/2), 3);
	}
}