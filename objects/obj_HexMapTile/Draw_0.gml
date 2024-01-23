/// @description Insert description here
// You can write your code in this editor
var pulseAlphaAdjust = 0;

if (isFocused == false || global.isPaused == true)
{
	glowPulseNum = 100;
	draw_sprite_ext(spr_HexTiles, tileType, self.x, self.y, imageScale, imageScale, 0, c_white, 1);
	if (tileCurseLevel > 0)
	{
		draw_sprite_ext(spr_HexTilesCurseOverlay, tileCurseLevel-1, self.x, self.y, imageScale, imageScale, 0, c_white, 1);
		draw_text(self.x, self.y, string(tileCurseLevel));
	}
}
else
{
	if (glowIsFadingIn == true && glowPulseNum < 100)
	{	
		glowPulseNum++;
	}
	else
	{
		glowIsFadingIn = false;
	}
	
	if (glowIsFadingIn == false && glowPulseNum > 0)
	{
		glowPulseNum--;
	}
	else
	{
		glowIsFadingIn = true;
	}
	
	pulseAlphaAdjust = glowPulseNum * 0.004;
	
	draw_sprite_ext(spr_TileFocusGlow, 0, self.x, self.y, focusedImageScale, focusedImageScale, 0, hexGlowColor, pulseAlphaAdjust + 0.45);
	draw_sprite_ext(spr_HexTiles, tileType, self.x, self.y, focusedImageScale, focusedImageScale, 0, c_white, 1);
	if (tileCurseLevel > 0)
	{
		draw_sprite_ext(spr_HexTilesCurseOverlay, tileCurseLevel-1, self.x, self.y, focusedImageScale, focusedImageScale, 0, c_white, 1);
		draw_text(self.x, self.y, string(tileCurseLevel));
	}
}
