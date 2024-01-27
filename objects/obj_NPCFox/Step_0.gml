/// @description Insert description here
// You can write your code in this editor

var playerX = global.player.x;
var playerY = global.player.y - 100;
var directionToPlayer = point_direction(playerX, playerY, x, y);
var distanceToPlayer = point_distance(x, y, playerX, playerY);

if (npc_Health <= 0)
{ instance_destroy(); }

if (global.isPaused == false)
{
	if (distanceToPlayer < attackRange)
	{
		if (stepsTakenToPrepAttack < 0)
		{ image_index = 0; }
		if (stepsTakenToPrepAttack > 0 and stepsTakenToPrepAttack <= attackThreshold / 2)
		{ image_index = 1; } 
		if (stepsTakenToPrepAttack > attackThreshold / 2)
		{
			image_index = 2;
			with (global.player)
			{
				global.player.damageAmmountToTake = 10;
				event_perform(ev_other, ev_user0);
			}
		}
		if (stepsTakenToPrepAttack > attackThreshold)
		{
			if (stepsTakenToReset > resetThreshold)
			{
				stepsTakenToReset += 1;
			} else {
				stepsTakenToReset = 0;
				stepsTakenToPrepAttack = -90;
			}
		} else {
			stepsTakenToPrepAttack += 1;
		}
	} else {
		draw_sprite(sprite_index, 0, self.x, self.y);
		move_towards_point(playerX, playerY, walkSpeed);
		speed = attackSpeed;
	}
} else {
	speed = 0;	
}