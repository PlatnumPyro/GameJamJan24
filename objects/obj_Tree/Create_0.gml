/// @description object vars

self.depth = -self.y;

if (random(100) < 95)
{
	treeType = 0;
}
else
{
	treeType = 1;
}

treeVariationColor = make_color_rgb(140 + irandom(115), 100 + irandom(80), irandom(80));
treeVariationHeight = 0.4 + random(0.3);
