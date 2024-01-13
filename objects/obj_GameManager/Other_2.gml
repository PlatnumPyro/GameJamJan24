global.currentRoom = room_first;
global.viewport = room_get_viewport(room_first, 0)
global.menuOpen = false;
global.font = font_placeholderMonospaceFont; //TODO change this to the font we select
global.textBasetColor = c_white;
global.textHighlightColor = c_red;
global.gameManager = self;
global.isPaused = false;

clickableList = undefined;

scr_InitializeKeyboardControlArray();