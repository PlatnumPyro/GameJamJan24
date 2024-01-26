/// @description Insert description here
// You can write your code in this editor

var playerX = global.player.x;
var playerY = global.player.y + 100;
var directionToPlayer = point_direction(playerX, playerY, x, y);
var distanceToPlayer = point_distance(x, y, playerX, playerY);

if (!global.isPaused)
{
	if (distanceToPlayer < attackRange)
	{
		if (stepsTakenToPrepAttack <= attackThreshold)
		{
			with (global.player)
			{
				event_perform(ev_other, ev_user0);
			}
			image_speed = 1;
			stepsTakenToPrepAttack += 1;
		}
	} else {
		image_speed = 0;
		draw_sprite(sprite_index, 0, self.x, self.y);
		move_towards_point(playerX, playerY, walkSpeed);
		speed = attackSpeed;
	}


}