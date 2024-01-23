/// @description Insert description here
// You can write your code in this editor

var playerX = global.player.x;
var playerY = global.player.y;
var directionToPlayer = point_direction(playerX, playerY, x, y);
var distanceToPlayer = point_distance(x, y, playerX, playerY);

if distanceToPlayer < attackRange
{
	image_speed = 1;
} else {
	image_speed = 0;
	draw_sprite(sprite_index, 0, self.x, self.y);
}

if distanceToPlayer > attackRange
{
	move_towards_point(playerX, playerY, walkSpeed);
} else if distanceToPlayer < attackRange {
	speed = attackSpeed;
}
	



