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
			spriteSubimageIndex = 1;
			draw_sprite(sprite_index, spriteSubimageIndex, self.x, self.y);
		}
		if (stepsTakenToPrepAttack > attackThreshold)
		{
			with (global.player)
			{
				global.player.damageAmmountToTake = 10;
				event_perform(ev_other, ev_user0);
			}
			spriteSubimageIndex = 2;
			draw_sprite(sprite_index, spriteSubimageIndex, self.x, self.y);
			stepsTakenToPrepAttack = 0;
		} else {
			stepsTakenToPrepAttack += 1;
		}
	} else {
		spriteSubimageIndex = 0;
		draw_sprite(sprite_index, spriteSubimageIndex, self.x, self.y);
		move_towards_point(playerX, playerY, walkSpeed);
		speed = attackSpeed;
	}


}