/// @description Insert description here
// You can write your code in this editor

if (stepsTillFallsOver > 0)
{
	draw_sprite_ext(spr_PlayerWalkDown, 1, self.x, self.y, 0.25, 0.25, 0, c_white, 1);
}
else
{
	draw_sprite_ext(spr_PlayerDowned, 1, self.x, self.y, 0.3, 0.3, 0, c_white, 1);
}