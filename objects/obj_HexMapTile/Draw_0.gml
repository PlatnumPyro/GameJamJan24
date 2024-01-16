/// @description Insert description here
// You can write your code in this editor

if (isFocused == false)
{
	draw_sprite_ext(spr_TileForest, 0, self.x, self.y, imageScale, imageScale, 0, c_white, 1);
}
else
{
	draw_sprite_ext(spr_TileForest, 0, self.x, self.y, focusedImageScale, focusedImageScale, 0, c_white, 1);
}
