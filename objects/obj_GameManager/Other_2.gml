global.currentRoom = room_first;
global.font = font_placeholderMonospaceFont;
//global.font = font_add("fonts\dpsdbeyond\DPSDbeyond.otf", 32, false, false, 32, 128); //TODO change this to the font we select
//font_enable_sdf(global.font, true);
global.textBasetColor = c_white;
global.textHighlightColor = c_red;
global.gameManager = self;
global.isPaused = false;

clickableList = undefined;
hexMap = undefined;

//IMPORTANT!!  will randomize the seed so you dont get the same game every time
randomize();


