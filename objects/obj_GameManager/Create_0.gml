listeningForKeyboardInput = false;
keyListenedPressed = undefined;
keyToBeChanged = undefined;
textbox = undefined;
hud = undefined;
hexTileLoadData = undefined;
titleCardText = undefined;
deathAnimationForGameOver = undefined;
creditsText = undefined;

var camera = undefined;
var keycode = undefined;
var keyMenuLabel = undefined;
var keyDecoded = undefined;

scr_InitializeKeyboardControlArray();
scr_KeycodeMapCreate();

//menu lists
pauseMenuStringList = ds_list_create();
titleMenuStringList = ds_list_create();
optionsMenuStringList = ds_list_create();
keyboardControlsMenuStringList = ds_list_create();
levelFailedStringList = ds_list_create();
gameOverStringList = ds_list_create();
deleteSavedDataQuestionList = ds_list_create();

ds_list_add(pauseMenuStringList, "Resume", "Return to Title");
ds_list_add(titleMenuStringList, "Start Game", "Skip Minigame (remove me)", "Options", "Exit");
ds_list_add(optionsMenuStringList, "Keyboard Controls", "Delete Saved Data", "Back");
ds_list_add(deleteSavedDataQuestionList, "Yes", "No");
ds_list_add(levelFailedStringList, "Continue", "Return to Title");
ds_list_add(gameOverStringList, "Return to Title");

for (var i = 0; i < array_length(global.keyboardControlArray); i++)
{
	keycode = global.keyboardControlArray[i];
	keyMenuLabel = ds_map_find_value(global.keyboardArrayToMenuOptions, i);
	keyDecoded = ds_map_find_value(global.keyLookupMap, keycode);
	ds_list_add(keyboardControlsMenuStringList, keyMenuLabel + " - " + keyDecoded);
}
ds_list_add(keyboardControlsMenuStringList, "Back");