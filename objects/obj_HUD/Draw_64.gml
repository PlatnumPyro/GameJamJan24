/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_cursebar, 0, cursebarX, cursebarY, cursebarWidth, cursebarHeight);
draw_set_font(global.font);
draw_text(cursebarX, cursebarY, 100);
draw_sprite_stretched(spr_Healthbar, 0, healthbarX, healthbarY, healthbarWidth, healthbarHeight);
draw_text(healthbarX, healthbarY, 100);

