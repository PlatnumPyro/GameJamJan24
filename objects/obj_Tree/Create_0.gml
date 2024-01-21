/// @description object vars

self.depth = -self.y;
imageHeight = -1;
imageWidth = -1;

if (random(100) < 95)
{
	treeType = 0;
	imageHeight = sprite_get_height(spr_Tree1);
	imageWidth = sprite_get_width(spr_Tree1);
}
else
{
	treeType = 1;
	imageHeight = sprite_get_height(spr_Tree2);
	imageWidth = sprite_get_width(spr_Tree2);
}

imageScale = 0.5;
treeVariationColor = make_color_rgb(140 + irandom(115), 100 + irandom(80), irandom(80));
treeVariationHeight = (imageScale - 0.1) + random(0.3);
halfImageWidthForAlphaCheck = round((imageWidth * imageScale) / 2)

//TODO: make come from somewhere dynamic
playerYOffset = 100;