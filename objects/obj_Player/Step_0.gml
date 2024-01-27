/// @description Movement, collision, and abilities
if (global.isPaused == false)
{
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

	self.depth = -self.y

	invincibilityFrames -= 1;

	//TODO: Add collision


	if (inputUseAbility)
	{
		if (direction == 90) sprite_index = spr_PlayerUseAbilityRight;
		if (direction == 270) sprite_index = spr_PlayerUseAbilityLeft;
		if (direction == 0) sprite_index = spr_PlayerUseAbilityUp;
		if (direction == 180) sprite_index = spr_PlayerUseAbilityDown;
		
		if (global.npc != undefined)
		{
			if (point_distance(x, y, global.npc.x, global.npc.y) < 100)
			{
				if (!instance_exists(obj_dialogbox) && dialogLock == false)
				{
					if (global.npc.person == 1)
					{
						scr_textbox("npc-fire");
					}
					if (global.npc.person == 2)
					{
						scr_textbox("npc-water");
					}
					if (global.npc.person == 3)
					{
						scr_textbox("npc-lightning");
					}
					dialogLock = true;
				}
			}
		}
		
		if (ability == undefined)
		{
			show_debug_message("currentAbility {0}", global.currentAbility)
			if (global.currentAbility == 0)
			{
				ability = instance_create_layer(self.x, self.y, "Instances", obj_AbilityCleansingPotion);
			}
			else if (global.currentAbility == 1)
			{
				ability = instance_create_layer(mouse_x, mouse_y, "Instances", obj_AbilityLightning);
			}
			else if (global.currentAbility == 2)
			{
				ability = instance_create_layer(self.x, self.y, "Instances", obj_AbilityWater);
			}
			else if (global.currentAbility == 3)
			{
				ability = instance_create_layer(self.x, self.y, "Instances", obj_AbilityFire);
			}
			ability.targetX = mouse_x;
			ability.targetY = mouse_y;
			with(ability)
			{
				event_perform(ev_other, ev_user0);
			}
			
			//show_debug_message_ext("MOUSE CLICKED AT {0}, {1}", ability.targetX, ability.targetY);
		}
	}

	if (isRunning)
	{
		currentSpeed = runningSpeed;
	}

	if (inputRight)
	{
		//x += currentSpeed;
		image_speed = currentSpeed / 3;
		sprite_index = spr_PlayerWalkRight;
		direction = 90;
		if (inputUseAbility)
		{
			sprite_index = spr_PlayerUseAbilityRight;
		}
		move_and_collide(currentSpeed, 0, global.collisionMap);
	} 
	if (inputLeft)
	{
		//x -= currentSpeed;
		image_speed = currentSpeed / 3;
		sprite_index = spr_PlayerWalkLeft;
		direction = 270;
		if (inputUseAbility)
		{
			sprite_index = spr_PlayerUseAbilityLeft;
		}
		move_and_collide(-currentSpeed, 0, global.collisionMap);
	} 
	if (inputDown)
	{
		//y += currentSpeed;
		image_speed = currentSpeed / 3;
		sprite_index = spr_PlayerWalkDown;
		direction = 180;
		if (inputUseAbility)
		{
			sprite_index = spr_PlayerUseAbilityDown;
		}
		move_and_collide(0, currentSpeed, global.collisionMap);
	} 
	if (inputUp)
	{
		//y -= currentSpeed;
		image_speed = currentSpeed / 3;
		sprite_index = spr_PlayerWalkUp;
		direction = 0;
		if (inputUseAbility)
		{
			sprite_index = spr_PlayerUseAbilityUp;
		}
		move_and_collide(0, -currentSpeed, global.collisionMap);
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

}