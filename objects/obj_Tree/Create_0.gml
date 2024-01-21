/// @description object vars

self.depth = -self.y;
treeSprite = spr_Tree1;

// in rare cases we want this to be the hollow tree
if (random(100) > 95)
{
	treeSprite = spr_Tree2;
}

imageScale = 0.5;
imageHeight = sprite_get_height(treeSprite);
imageWidth = sprite_get_width(treeSprite);
treeVariationColor = make_color_rgb(140 + irandom(115), 100 + irandom(80), irandom(80));
treeVariationHeight = (imageScale - 0.1) + random(0.3);
halfImageWidthForAlphaCheck = round((imageWidth * imageScale) / 2)

//TODO: make come from somewhere dynamic
playerYOffset = 100;