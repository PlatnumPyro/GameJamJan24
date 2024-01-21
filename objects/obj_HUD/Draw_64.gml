/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_cursebar, 0, cursebarX, cursebarY, (curseAmount / curseMax)  * cursebarWidth, cursebarHeight);
draw_set_font(global.font);
draw_text(cursebarX, cursebarY, curseAmount);
draw_sprite_stretched(spr_Healthbar, 0, healthbarX, healthbarY, (global.player.playerHealth / global.player.playerHealth) * healthbarWidth, healthbarHeight);
draw_text(healthbarX, healthbarY, global.player.playerHealth);

