/// @description Insert description here
// You can write your code in this editor
/// @description draws the text

var alignmentBeforeDraw = draw_get_halign();

draw_set_font(global.font);
draw_set_halign(fa_center);

draw_text_ext_transformed_color(self.x, self.y - 10, teamName, 60, 5000, scale + 0.25, scale + 0.25, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(self.x, self.y + 40, teamMembers[0], 0, 5000, scale, scale, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(self.x, self.y + 70, teamMembers[1], 0, 5000, scale, scale, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(self.x, self.y + 100, teamMembers[2], 0, 5000, scale, scale, 0, color, color, color, color, 1);
draw_text_ext_transformed_color(self.x, self.y + 130, teamMembers[3], 0, 5000, scale, scale, 0, color, color, color, color, 1);


draw_set_halign(alignmentBeforeDraw);