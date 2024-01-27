/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(font_nicesugar)
draw_set_halign(fa_left);

draw_sprite_ext(spr_dialogbox2,0,0,0,1,1,0,c_white,1)


draw_text(1450,64,"Levels cleared:" + string(global.totalLevelsCleared) )
draw_text(1450,112,"Clear Points: " + string(global.totalCursePowerCleared) )
draw_text(1450,160,"Points Remaining: " + string(max(0,global.gameWinCurseClearedPoints - global.totalCursePowerCleared)))
