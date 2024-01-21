/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_black);
draw_set_alpha(0.2);
draw_ellipse(x - 40, y - 50, x + 40, y + 30, false);
draw_set_alpha(1);


draw_self();
collision_circle(x, y + 70, 50, obj_Player, false, false)