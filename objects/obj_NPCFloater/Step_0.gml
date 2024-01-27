/// @description Insert description here
// You can write your code in this editor

var playerX = global.player.x;
var playerY = global.player.y - 100;
var directionToPlayer = point_direction(playerX, playerY, x, y);
var distanceToPlayer = point_distance(x, y, playerX, playerY);

if (global.isPaused == false)
{
	if (distanceToPlayer < attackRange)
	{
		if (stepsTakenToPrepAttack > 0 and stepsTakenToPrepAttack <= attackThreshold / 2)
		{
			// do particle effect or something
		} 
		else if (stepsTakenToPrepAttack > attackThreshold)
		{
			with (global.player)
			{
				global.player.damageAmmountToTake = 10;
				event_perform(ev_other, ev_user0);
			}
			image_speed = 1;
			stepsTakenToPrepAttack = 0;
		} else {
			stepsTakenToPrepAttack += 1;
		}
	} else {
		image_speed = 0;
		draw_sprite(sprite_index, 0, self.x, self.y);
		move_towards_point(playerX, playerY, walkSpeed);
		speed = attackSpeed;
	}


}