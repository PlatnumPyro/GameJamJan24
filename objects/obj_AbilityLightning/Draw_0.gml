/// @description Insert description here
// You can write your code in this editor

if (currentStep mod 6 < 3)
{
	draw_sprite_ext(spr_lightningAbility, 0, self.x, self.y, 0.5, 0.5, 0, c_white, 1);
}
else
{
	draw_sprite_ext(spr_lightningAbility, 0, self.x, self.y, -0.5, 0.5, 0, c_white, 1);
}
