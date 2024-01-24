/// @description create HUD elements

cursebar = undefined;
healthbar = undefined;

cursebarWidth = CAMERA_VIEWPORT_WIDTH / 4; 
cursebarHeight = 32;
//cursebarX = CAMERA_VIEWPORT_WIDTH / 3;
cursebarX = CAMERA_VIEWPORT_WIDTH - (50 + cursebarWidth);
//cursebarY = 64;
cursebarY = 50;

healthbarY = 50;
healthbarX = 50;
healthbarHeight = 32;
healthbarWidth = CAMERA_VIEWPORT_WIDTH / 4;

barOutlineWidth = 4; // width of the stroke around the box

flash = 0;

textScale = 0.7;
bumpTextDown = 2; //not sure why its not 100% centered, using this to adjust

//manabar = undefined;
