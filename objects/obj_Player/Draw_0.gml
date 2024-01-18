/// @description Draw player and shadow

draw_set_colour(c_black);
draw_set_alpha(0.2);
draw_ellipse(x - 60, y - 50, x + 60, y + 40, false);
draw_set_alpha(1);

draw_sprite_ext(spr_PlayerFrontFacing, 0, x, y, 0.3, 0.3, 0, c_white, 100);

