/// @description Movement, collision, and abilities

var inputUp = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_UP]);
var inputDown = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_DOWN]);
var inputRight = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_RIGHT]);
var inputLeft = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.MOVE_LEFT]);
var inputUseAbility = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.USE_ABILITY]);
var isRunning = keyboard_check(global.keyboardControlArray[KEYBOARD_CONTROLS.RUN]);

// These two lines set up for the dx and dy paramaters of move_and_collide(3)
var xInput = inputRight - inputLeft;
var yInput = inputDown - inputUp;
var currentSpeed = walkingSpeed;
var lookingRight = 

self.depth = -self.y

if (inputUseAbility)
{
	if (direction == 90) sprite_index = spr_PlayerUseAbilityRight;
	if (direction == 270) sprite_index = spr_PlayerUseAbilityLeft;
	if (direction == 0) sprite_index = spr_PlayerUseAbilityUp;
	if (direction == 180) sprite_index = spr_PlayerUseAbilityDown;
}

if (isRunning)
{
	currentSpeed = runningSpeed;
}

self.depth = -self.y


if (inputRight)
{
	x += currentSpeed;
	image_speed = currentSpeed / 3;
	sprite_index = spr_PlayerWalkRight;
	direction = 90;
} 
if (inputLeft)
{
	x -= currentSpeed;
	image_speed = currentSpeed / 3;
	sprite_index = spr_PlayerWalkLeft;
	direction = 270;
} 
if (inputDown)
{
	y += currentSpeed;
	image_speed = currentSpeed / 3;
	sprite_index = spr_PlayerWalkDown;
	direction = 180;
} 
if (inputUp)
{
	y -= currentSpeed;
	image_speed = currentSpeed / 3;
	sprite_index = spr_PlayerWalkUp;
	direction = 0;
} 
if (keyboard_check(vk_nokey))
{
	image_speed = 0;
	image_index = 0;	
}


/*if (isRunning)
{
	move_and_collide(xInput * runningSpeed, yInput * runningSpeed, all);
} else {
	move_and_collide(xInput * walkingSpeed, yInput * walkingSpeed, all);	
}*/
