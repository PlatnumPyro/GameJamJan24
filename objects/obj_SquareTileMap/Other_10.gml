//generate the level

var topBoundryCurrentY = 0;
var topBoundryMinimumY = 0;
var topBorderTilePositions = ds_list_create();
var variation = 0;
var variationChangeSpacingMin = 0; // minimum number of tiles between variation changes
var variationChangeSpacingMax = 0; // maximum number of tiles between variation changes
var variationChangeIndex = 0; // to count for the variationChangeSpacing
var topBoundryOffset = 0;
var length = 0;
var currentTile = undefined;

squareTileOverlayMap = layer_tilemap_create("TileMap", 0, 0, ts_SquareTilesOverlay, mapWidthInTiles, mapHeightInTiles);
squareTileMap = layer_tilemap_create("TileMap", 0, 0, ts_SquareTiles, mapWidthInTiles, mapHeightInTiles);

	
//TODO: place player intelligently
playerStartPosition = [(mapWidthInTiles * SQUARE_TILE_SIZE)/2, (mapHeightInTiles * SQUARE_TILE_SIZE)/2];
	
if (mapStyle == HEX_TILE_TYPES.FOREST)
{
	
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
		
		for (var tileY = 0; tileY < mapHeightInTiles+2; tileY++)
		{
			if (tileY < mapHeightInTiles)
			{
				if (tileY <= topBoundryOffset - 2)
				{
					tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
				}
				else if (tileY == topBoundryOffset - 1)
				{
					tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS_WALL_TOP, tileX, tileY);
				}
				else if (tileY == topBoundryOffset)
				{
					tilemap_set(squareTileMap, SQUARE_TILE_TYPES.WALL_BOTTOM, tileX, tileY);
				}
				else
				{
					if (tileX == 0 || tileX == mapWidthInTiles-1)
					{
						tilemap_set(squareTileMap, SQUARE_TILE_TYPES.SAND, tileX, tileY);
						instance_create_layer((tileX * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), (tileY * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), "Instances", obj_Tree);
					}
					else if (tileX > 0 && tileX < mapSidetreeBorderFadeLayers)
					{
						if (random(1) < (mapSidetreeBorderFadeLayers - tileX)/mapSidetreeBorderFadeLayers)
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.SAND, tileX, tileY);
							instance_create_layer((tileX * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), (tileY * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), "Instances", obj_Tree);
						}
						else
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
						}
					}
					else if (tileX < mapWidthInTiles-1 && mapWidthInTiles - tileX <mapSidetreeBorderFadeLayers)
					{
						if (random(1) < (mapWidthInTiles - tileX)/mapSidetreeBorderFadeLayers)
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.SAND, tileX, tileY);
							instance_create_layer((tileX * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), (tileY * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), "Instances", obj_Tree);
						}
						else
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
						}
					}
					else if (random(1) < 0.98)
					{
						if (random(1) > 0.85)
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.SAND, tileX, tileY);
							instance_create_layer((tileX * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), (tileY * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), "Instances", obj_Tree);
						}
						else
						{
							tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS, tileX, tileY);
						}
					}
					else
					{
						tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS_WITH_ROCK, tileX, tileY);
					}
				}
			}
			else
			{
				//add some trees below the map so it doesnt just end randomly
				instance_create_layer((tileX * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), (tileY * SQUARE_TILE_SIZE) + round(SQUARE_TILE_SIZE/2), "Instances", obj_Tree);
			}
		}
	}
}
else if (mapStyle == HEX_TILE_TYPES.MOUNTAIN)
{
	//generates tiles for the map column by column
	for (var tileX = 0; tileX < mapWidthInTiles; tileX++)
	{
		for (var tileY = 0; tileY < mapHeightInTiles; tileY++)
		{
			if (point_distance(mapWidthInTiles/2, mapHeightInTiles/2, tileX, tileY) > 5)
			{
				tilemap_set(squareTileMap, SQUARE_TILE_TYPES.WALL_BOTTOM, tileX, tileY);
			}
			else
			{
				tilemap_set(squareTileMap, SQUARE_TILE_TYPES.GRASS_WITH_ROCK, tileX, tileY);
			}
		}
	}
}
else if (mapStyle == HEX_TILE_TYPES.BEACH)
{
	topBoundryCurrentY = 2;//since we have three shades of water, index starts at 0
	topBoundryMinimumY = 2;// ^
	variationChangeSpacingMin = 3;
	variationChangeSpacingMax = 5;
	
	//create the variation so its only one tile up or down from the previous and does not look strange
	for(var i = 0; i < mapWidthInTiles; i++)
	{
		variationChangeIndex++;
		// 20% chance the variation continues at same level until forced at nax to change
		if (((variationChangeIndex > variationChangeSpacingMin) && (random(1) > 0.2)) || variationChangeIndex == variationChangeSpacingMax) 
		{
			variationChangeIndex = 0;
			if (irandom(1) == 0)
			{
				variation = 1;
			}
			else
			{
				variation = -1;
			}
			topBoundryCurrentY = max(min((topBoundryCurrentY + variation), (topBoundryMinimumY + mapTopBorderVariation)), topBoundryMinimumY);
		}
		ds_list_add(topBorderTilePositions, topBoundryCurrentY);
	}
	
	//generates tiles for the map column by column
	for (var tileX = 0; tileX < mapWidthInTiles; tileX++)
	{
		topBoundryOffset = ds_list_find_value(topBorderTilePositions, tileX);
		
		for (var tileY = 0; tileY < mapHeightInTiles; tileY++)
		{
			tilemap_set(squareTileMap, SQUARE_TILE_TYPES.SAND, tileX, tileY);
			
			if (tileY <= topBoundryOffset - 2)
			{
				tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.WATER_SHADE_THREE, tileX, tileY);
			}
			else if (tileY == topBoundryOffset - 1)
			{
				tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.WATER_SHADE_TWO, tileX, tileY);
			}
			else if (tileY == topBoundryOffset)
			{
				tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.WATER_SHADE_ONE, tileX, tileY);
			}
			else
			{
				var randomShade = irandom(3);
				if (randomShade > 0)
				{
					tilemap_set(squareTileOverlayMap, SQUARE_TILE_OVERLAY_TYPES.SAND_SHADE_ONE + (randomShade - 1), tileX, tileY);
				}
			}
		}
	}
}


//ThE CURSE
var selectedTileX = -1;
var selectedTileY = -1;
for (var i = 0; i < curseStartingLocations; i++)
{
	//while its highly unlikely that we pick the same tile multiple times, cant rule out the possibility
	do
	{
		selectedTileX = irandom(mapWidthInTiles-1);
		selectedTileY = irandom(mapHeightInTiles-1);
	}
	until (scr_FindArrayValuesInList(cursedTilePotentialSpreadLocations, [selectedTileX, selectedTileY]) == false)
	
	
	ds_list_add(cursedTilePotentialSpreadLocations, [selectedTileX, selectedTileY]);
}
//spread the curse
event_perform(ev_other, ev_user1);
