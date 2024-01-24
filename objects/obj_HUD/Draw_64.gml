/// @description Insert description here
// You can write your code in this editor

var currentCurseAmountString = string_concat(string(min(global.currentSquareTilesToCurse, global.maximumAllowedSquareTilesToCurse)), " / ", string(global.maximumAllowedSquareTilesToCurse));
var currentHealthString = string_concat(round(global.player.playerHealth), " / ", global.player.playerMaxHealth);

var hAlignmentBeforeDraw = draw_get_halign();
var vAlignmentBeforeDraw = draw_get_valign();

draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_rectangle_color(cursebarX - barOutlineWidth, cursebarY - barOutlineWidth, cursebarX + cursebarWidth + barOutlineWidth, cursebarY + cursebarHeight + barOutlineWidth, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(cursebarX, cursebarY, cursebarX + cursebarWidth, cursebarY + cursebarHeight, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, false);
draw_sprite_stretched(spr_cursebar, 0, cursebarX, cursebarY, (min(global.currentSquareTilesToCurse, global.maximumAllowedSquareTilesToCurse) / global.maximumAllowedSquareTilesToCurse)  * cursebarWidth, cursebarHeight);
draw_text_transformed_color(cursebarX + round(cursebarWidth/2), cursebarY + round(cursebarHeight/2) + bumpTextDown, currentCurseAmountString, textScale, textScale, 0, c_black, c_black, c_black, c_black, 1);

draw_rectangle_color(healthbarX - barOutlineWidth, healthbarY - barOutlineWidth, healthbarX + healthbarWidth + barOutlineWidth, healthbarY + healthbarHeight+ barOutlineWidth, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(healthbarX, healthbarY, healthbarX + healthbarWidth, healthbarY + healthbarHeight, c_dkgrey, c_dkgrey, c_dkgrey, c_dkgrey, false);
draw_sprite_stretched(spr_Healthbar, 0, healthbarX, healthbarY, (global.player.playerHealth / global.player.playerMaxHealth) * healthbarWidth, healthbarHeight);
draw_text_transformed_color(healthbarX + round(healthbarWidth/2), healthbarY + round(healthbarHeight/2) + bumpTextDown, currentHealthString, textScale, textScale, 0, c_black, c_black, c_black, c_black, 1);

draw_set_halign(hAlignmentBeforeDraw);
draw_set_valign(vAlignmentBeforeDraw);

