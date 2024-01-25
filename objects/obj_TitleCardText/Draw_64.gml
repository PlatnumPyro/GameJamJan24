/// @description draws the text

var alignmentBeforeDraw = draw_get_halign();

draw_set_font(global.titleFont);
draw_set_halign(fa_center);

draw_text_ext_transformed_color(self.x, self.y, text, 0, 5000, scale, scale, 0, color, color, color, color, 1);

draw_set_font(global.font);
draw_set_halign(alignmentBeforeDraw);