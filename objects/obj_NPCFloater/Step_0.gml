/// @description Insert description here
// You can write your code in this editor

if (point_distance(global.player.x, global.player.y, self.x, self.y) < 200)
{
	image_speed = 1;
} else {
	image_speed = 0;
	draw_sprite(sprite_index, 0, self.x, self.y);
}
	



