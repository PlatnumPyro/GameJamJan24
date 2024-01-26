//info to be passed in

mapStyle = undefined;
mapHeightInTiles = 0;
mapWidthInTiles = 0;

// how much we want the top border to flow from 0 being a straight line on to much larger tile variation like 5
mapTopBorderVariation = 2; 

// how much we want to allow the top border to change between one tile and the tile to the right of it up or down
mapTopBorderVariationMaximumIncrement = 1;

//number of layers for the forest area to fade from solid line of trees to fewer/no trees
mapSidetreeBorderFadeLayers = 4;

//the map  \o/  praise the sun!
squareTileMap = undefined;
squareTileOverlayMap = undefined;

playerStartPosition = undefined;

//number of starting randomized seed locations, gets from tileCurseLevel from the hextile selected from the map
curseStartingLocations = undefined; // num
cursedTileLocations = ds_list_create(); // array
cursedTilePotentialSpreadLocations = ds_list_create(); //

level1CursedTiles = ds_list_create();
level2CursedTiles = ds_list_create();
level3CursedTiles = ds_list_create();
displayedCursePower = 0;
desiredCursePowerToDisplay = 0;

// we want a ratio of tiles   6 ones | 3 twos | 1 three  and spread when its out of wack
numLevel1sForEachLevel2 = 2;
numLevel2sForEachLevel3 = 3;

abilityCleanseLocation = undefined;
cleanseRadius = 300;

particleArray = ds_list_create();