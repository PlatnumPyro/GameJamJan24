/// @description Insert description here
// You can write your code in this editor

var alpha = 1;

if (global.player.y < self.y && (global.player.y - playerYOffset) > self.y - (treeVariationHeight * imageHeight))
{
	if (global.player.x > self.x - halfImageWidthForAlphaCheck && global.player.x < self.x + halfImageWidthForAlphaCheck)
	{
		alpha = 0.7;
	}
}
if (treeType == 0)
{
	draw_sprite_ext(spr_Tree1, 0, self.x, self.y, imageScale, treeVariationHeight, 0, treeVariationColor, alpha);
}
else if (treeType == 1)
{
	draw_sprite_ext(spr_Tree2, 0, self.x, self.y, imageScale, treeVariationHeight, 0, treeVariationColor, alpha);
}