listeningForKeyboardInput = false;
keyListenedPressed = undefined;
keyToBeChanged = undefined;
textbox = undefined;
hud = undefined;

curseStats = [0,0,0]

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
displayMenuStringList = ds_list_create();
soundMenuStringList = ds_list_create();
keyboardControlsMenuStringList = ds_list_create();

ds_list_add(pauseMenuStringList, "Resume", "Return to Title");
ds_list_add(titleMenuStringList, "Start Game", "Skip Minigame (remove me)", "Options", "Exit");
ds_list_add(optionsMenuStringList, "Display", "Sound", "Keyboard Controls", "Back");
ds_list_add(displayMenuStringList, "Resolution", "Option 2", "Option 3", "Option 4", "Back");	
ds_list_add(soundMenuStringList, "Music Volume", "Sound Effects Volume", "Dialog Sounds Volume", "Back");

for (var i = 0; i < array_length(global.keyboardControlArray); i++)
{
	keycode = global.keyboardControlArray[i];
	keyMenuLabel = ds_map_find_value(global.keyboardArrayToMenuOptions, i);
	keyDecoded = ds_map_find_value(global.keyLookupMap, keycode);
	ds_list_add(keyboardControlsMenuStringList, keyMenuLabel + " - " + keyDecoded);
}
ds_list_add(keyboardControlsMenuStringList, "Back");