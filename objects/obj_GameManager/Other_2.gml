global.currentRoom = room_first;
global.font = font_placeholderMonospaceFont; //TODO change this to the font we select
global.textBasetColor = c_white;
global.textHighlightColor = c_red;
global.gameManager = self;
global.isPaused = false;

clickableList = undefined;

scr_InitializeKeyboardControlArray();