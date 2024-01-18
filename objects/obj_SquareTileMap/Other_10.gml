//generate the level

var topBoundryCurrentY = 0;
var topBoundryMinimumY = 0;
var topBorderTilePositions = ds_list_create();
var variation = 0;
var topBoundryOffset = 0;


if (mapStyle == HEX_TILE_TYPES.FOREST)
{
	squareTileMap = layer_tilemap_create("TileMap", 0, 0, ts_SquareTiles, mapWidthInTiles, mapHeightInTiles);
	
	//TODO: place player intelligently
	playerStartPosition = [(mapWidthInTiles * SQUARE_TILE_SIZE)/2, (mapHeightInTiles * SQUARE_TILE_SIZE)/2];
	
	topBoundryCurrentY = 1;//since we have two tiles for the top wall and we are 0 indexing
	topBoundryMinimumY = 1;// ^
	
	
	//create the variation so its only one tile up or down from the previous and does not look strange
	for(var i = 0; i < mapWidthInTiles; i++)
	{
		variation = irandom_range(-mapTopBorderVariationMaximumIncrement, mapTopBorderVariationMaximumIncrement);
		topBoundryCurrentY = max(min(topBoundryCurrentY + variation, topBoundryMinimumY + mapTopBorderVariation), topBoundryMinimumY)
		ds_list_add(topBorderTilePositions, topBoundryCurrentY);
	}
	
	//generates tiles for the map column by column
	for (var tileX = 0; tileX < mapWidthInTiles; tileX++)
	{
		topBoundryOffset = ds_list_find_value(topBorderTilePositions, tileX);
		
		for (var tileY = 0; tileY < mapHeightInTiles; tileY++)
		{
			if (tileY < topBoundryOffset - topBoundryMinimumY)
			{
				tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
			}
			else if (tileY == topBoundryOffset - topBoundryMinimumY)
			{
				tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS_WALL_TOP, tileX, tileY);
			}
			else if (tileY == topBoundryOffset - (topBoundryMinimumY - 1))
			{
				tilemap_set(squareTileMap, SQUARE_TILE_TYPES.WALL_BOTTOM, tileX, tileY);
			}
			else
			{
				if (random(1) < 0.95)
				{
					tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
				}
				else
				{
					tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS_WITH_ROCK, tileX, tileY);
				}
			}
		}
	}
}
