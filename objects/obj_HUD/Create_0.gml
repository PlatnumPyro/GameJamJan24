/// @description create HUD elements

cursebar = undefined;
healthbar = undefined;

curseAmount = 100;
curseMax = 1;
cursebarWidth = CAMERA_VIEWPORT_WIDTH / 4; 
cursebarHeight = 32;
//cursebarX = CAMERA_VIEWPORT_WIDTH / 3;
cursebarX = 50;
//cursebarY = 64;
cursebarY = CAMERA_VIEWPORT_HEIGHT - (CAMERA_VIEWPORT_HEIGHT / 10) - cursebarHeight - 10;

healthbarY = CAMERA_VIEWPORT_HEIGHT - (CAMERA_VIEWPORT_HEIGHT / 10);
healthbarX = 50;
healthbarHeight = 32;
healthbarWidth = CAMERA_VIEWPORT_WIDTH / 4;

flash = 0;

//manabar = undefined;
