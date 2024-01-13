listeningForKeyboardInput = false;
keyListenedPressed = undefined;
keyToBeChanged = undefined;

//menu lists
titleMenuStringList = ds_list_create();
optionsMenuStringList = ds_list_create();
displayMenuStringList = ds_list_create();
soundMenuStringList = ds_list_create();
keyboardControlsMenuStringList = ds_list_create();

ds_list_add(titleMenuStringList, "Start Game", "Options", "Exit");
ds_list_add(optionsMenuStringList, "Display", "Sound", "Keyboard Controls", "Back");
ds_list_add(displayMenuStringList, "Resolution", "Option 2", "Option 3", "Option 4", "Back");	
ds_list_add(soundMenuStringList, "Music Volume", "Sound Effects Volume", "Dialog Sounds Volume", "Back");	
ds_list_add(keyboardControlsMenuStringList, "Up", "Down", "Left", "Right", "Pause", "Full Screen Toggle", "Back");
			
