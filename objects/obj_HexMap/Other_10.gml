/// @description generate the map
/// @description creates the map

hexTiles = ds_list_create();

// we create the first tile manually as we base all the others off this ones position
var currentTile = undefined;
var tileX = 0;
var tileY = 0;
var listSize = 0;
var listEntryDuplicateIndex = -1;

//  3/4 is the fraction of a hex across it is from one tile to its nearest neighbors NE, NW, SE, SW are all 3/4 width in x direction
var halfMapWidthInHexTiles = round((MAXIMUM_MAP_WIDTH_IN_HEX_TILES/2) * 3/4);  
var halfMapHeightInHexTiles = round(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2);
var distanceToCenterOfMap = -1;
var potentialTileLocations = ds_list_create();
var actualTileLocations = ds_list_create();
var tileCoordsOfSelectedPotentialTileLocation = [];
var tileCoordsOfSelectedTileLocation = []; //used in cursing the tiles
var listPos = 0;

ds_list_add(potentialTileLocations, [0, 0]);

//currently this places tiles randomly, checks to see if its adjacent to another tile if not goes again
for (var i = 0; i < numHexTiles; i++)
{
	//grab a random potentialTile to make into an actualTile
	listSize = ds_list_size(potentialTileLocations);
	listPos = irandom(listSize-1);
	tileCoordsOfSelectedPotentialTileLocation = ds_list_find_value(potentialTileLocations, listPos);
	ds_list_delete(potentialTileLocations, listPos);
	
	//removing all duplicate entries from list
	scr_FindArrayValuesInList(potentialTileLocations, tileCoordsOfSelectedPotentialTileLocation, true);

	tileX = tileCoordsOfSelectedPotentialTileLocation[0];
	tileY = tileCoordsOfSelectedPotentialTileLocation[1];
	
	currentTile = instance_create_layer(self.x + round(tileX * HEX_TILE_HEIGHT * HEX_TILE_CONVERSION_RATIO), self.y + (tileY * HEX_TILE_HEIGHT), "Instances", obj_HexMapTile);
	
	currentTile.tileID = i;
	if (i < numHexTiles/3)
	{
		currentTile.tileType = HEX_TILE_TYPES.MOUNTAIN;
	}
	else if (i < (numHexTiles*2)/3)
	{
		currentTile.tileType = HEX_TILE_TYPES.FOREST;
	}
	else
	{
		currentTile.tileType = HEX_TILE_TYPES.BEACH;
	}
	currentTile.tileLocation = [tileX, tileY];
	currentTile.tileCurseLevel = 0;
	currentTile.tileDifficulty = 0;
	currentTile.tileAreaSize = MAP_SIZES.MEDIUM;
	currentTile.tileMap = self;  //to be set by the map itself for event calling
	
	with (currentTile)
	{
		event_perform(ev_other, ev_user0);
	}
	
	ds_list_add(hexTiles, currentTile);
	ds_list_add(actualTileLocations, [tileX, tileY]);
	scr_AddAdjacentHexTileCoordsToList(potentialTileLocations, actualTileLocations, tileX, tileY);
}

//making the map using point radius calculations
//for (var i = 0; i < numHexTiles; i++)
//{
//	currentTile = ds_list_find_value(hexTiles, i);
//	distanceToCenterOfMap = point_distance(random_range(-0.5, 0.5), random_range(-0.5, 0.5), currentTile.tileLocation[0], currentTile.tileLocation[1]);
//	if (distanceToCenterOfMap < hexTileMountainRadius)
//	{
//		currentTile.tileType = HEX_TILE_TYPES.MOUNTAIN;
//	}
//	else if (distanceToCenterOfMap > hexTileMountainRadius  &&  distanceToCenterOfMap < hexTileForestRadius)
//	{
//		currentTile.tileType = HEX_TILE_TYPES.FOREST;
//	}
//}

for (var i = 0; i < numCaveTileReplacements; i++)
{
	currentTile = ds_list_find_value(hexTiles, irandom(ds_list_size(hexTiles) - 1));
	currentTile.tileType = HEX_TILE_TYPES.CAVE;
}