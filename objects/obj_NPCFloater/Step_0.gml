/// @description Insert description here
// You can write your code in this editor

var playerX = global.player.x;
var playerY = global.player.y;
var directionToPlayer = point_direction(playerX, playerY, x, y);


if point_distance(x, y, playerX, playerY) < 200
{
	image_speed = 1;
} else {
	image_speed = 0;
	draw_sprite(sprite_index, 0, self.x, self.y);
}

if point_distance(x, y, playerX, playerY) > 50
{
	move_towards_point(playerX, playerY, walkSpeed);
} else {
	speed = 0;
}
	



