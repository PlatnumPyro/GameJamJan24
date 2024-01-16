/// @description creates the map

hexTiles = ds_list_create();
selectedHexTileIndex = -1;

var numHexTiles = irandom_range(MINIMUM_NUM_LEVELS, MAXIMUM_NUM_LEVELS);

// we create the first tile manually as we base all the others off this ones position
var currentTile = instance_create_layer(self.x, self.y, "Instances", obj_HexMapTile);
var tileX = 0;
var tileY = 0;
var listSize = 0;
var listEntryDuplicateIndex = -1;

//  3/4 is the fraction of a hex across it is from one tile to its nearest neighbors NE, NW, SE, SW are all 3/4 width in x direction
var halfMapWidthInHexTiles = round((MAXIMUM_MAP_WIDTH_IN_HEX_TILES/2) * 3/4);  
var halfMapHeightInHexTiles = round(MAXIMUM_MAP_HEIGHT_IN_HEX_TILES/2);
var potentialTileLocations = ds_list_create();
var actualTileLocations = ds_list_create();
var tileCoordsOfSelectedPotentialTileLocation = [];
var listPos = 0;

currentTile.tileID = 0;
currentTile.tileType = HEX_TILE_TYPES.FOREST;
currentTile.tileLocation = [tileX, tileY];
currentTile.tileCurseLevel = 0;
currentTile.tileMap = self;  //to be set by the map itself for event calling

ds_list_add(hexTiles, currentTile);
ds_list_add(actualTileLocations, [tileX, tileY]);
scr_AddAdjacentHexTileCoordsToList(potentialTileLocations, actualTileLocations, tileX, tileY);

//currently this places tiles randomly, checks to see if its adjacent to another tile if not goes again
for (var i = 1; i < numHexTiles; i++)
{
	//grab a random potentialTile to make into an actualTile
	listSize = ds_list_size(potentialTileLocations);
	listPos = irandom(listSize-1);
	tileCoordsOfSelectedPotentialTileLocation = ds_list_find_value(potentialTileLocations, listPos);
	ds_list_delete(potentialTileLocations, listPos);
	
	//removing all duplicate entries from list
	scr_FindArrayValuesInList(potentialTileLocations, tileCoordsOfSelectedPotentialTileLocation, true);

	show_debug_message("TILE COORDS VAR: {0}", tileCoordsOfSelectedPotentialTileLocation);

	tileX = tileCoordsOfSelectedPotentialTileLocation[0];
	tileY = tileCoordsOfSelectedPotentialTileLocation[1];
	
	currentTile = instance_create_layer(self.x + (tileX * HEX_TILE_HEIGHT), self.y + (tileY * HEX_TILE_HEIGHT), "Instances", obj_HexMapTile);
	
	currentTile.tileID = i;
	currentTile.tileType = HEX_TILE_TYPES.FOREST;
	currentTile.tileLocation = [tileX, tileY];
	currentTile.tileCurseLevel = 0;
	currentTile.tileMap = self;  //to be set by the map itself for event calling
	
	ds_list_add(hexTiles, currentTile);
	ds_list_add(actualTileLocations, [tileX, tileY]);
	scr_AddAdjacentHexTileCoordsToList(potentialTileLocations, actualTileLocations, tileX, tileY);
}

//TODO testing -- remove this!
numberOfTheseDangThings = ds_list_size(hexTiles);
show_debug_message("HOW MANY TILES WERE CREATED: {0}", numberOfTheseDangThings);

//TODO this would be a great place to convert some of the tiles to others in groups or 

//  hi  :D
