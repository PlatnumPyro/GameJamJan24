/// @description Insert description here
// You can write your code in this editor

var currentCurseAmountString = string_concat(round(curseAmount * 100), " / 100");
var currentHealthString = string_concat(round(global.player.playerHealth), " / ", global.player.playerMaxHealth);

draw_sprite_stretched(spr_cursebar, 0, cursebarX, cursebarY, (curseAmount / curseMax)  * cursebarWidth, cursebarHeight);
draw_set_font(global.font);
draw_text(cursebarX + 100, cursebarY, currentCurseAmountString);
draw_sprite_stretched(spr_Healthbar, 0, healthbarX, healthbarY, (global.player.playerHealth / global.player.playerHealth) * healthbarWidth, healthbarHeight);
draw_text(healthbarX + 100, healthbarY, currentHealthString);

