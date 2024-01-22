/// @description Insert description here
// You can write your code in this editor

//----------- Draw speaker
var character_sprite = undefined

switch (speaker) {
	case 1:
		character_sprite = spr_PlayerDialogue
		break;
	case 2:
		character_sprite = spr_FireDialogue
		break;
	case 3:
		character_sprite = spr_WaterDialogue
		break;
	case 4:
		character_sprite = spr_LightningDialogue
		break;
}

if(!is_undefined(character_sprite)) {
	draw_sprite_ext(character_sprite, 0, CAMERA_VIEWPORT_WIDTH-750, CAMERA_VIEWPORT_HEIGHT-750-100, .75,.75, 0,c_white,1)
}

//------------ Draw Text
draw_sprite(spr_dialogbox,0,0,CAMERA_VIEWPORT_HEIGHT-256)

draw_set_alpha(1)
draw_set_color(c_white)
draw_set_font(font_monospaceSmall)
draw_set_halign(fa_left);

draw_text_scribble_ext(96,CAMERA_VIEWPORT_HEIGHT-240,speaker_names[speaker],2000,2000)
draw_text_scribble_ext(112,CAMERA_VIEWPORT_HEIGHT-200,text[currentPage],1720,letterCount) 

//------------- Draw options
if (option_number > 0)
{
	// Only on the last page
	if (letterCount >= string_length(text[currentPage]) && currentPage = totalPages-1)
	{
		for (var i = 0; i < option_number; i++) {
			draw_text_scribble_ext(132,CAMERA_VIEWPORT_HEIGHT-120+(40*i),option[i],1720,1720)
		}

	draw_sprite_ext(spr_optionSelector,0, 90, CAMERA_VIEWPORT_HEIGHT-120+(40*option_position), 0.5,0.5,0,c_white,1)
	}
}


