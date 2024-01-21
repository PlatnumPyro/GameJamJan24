// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_text(_text, _speaker){
	text[totalPages] = _text
	totalPages++
	
	if(!is_undefined(_speaker)) {
		speaker = _speaker	
	}
}

function scr_option(_option, _option_id) {
	option[option_number] = _option
	option_id[option_number] = _option_id
	
	option_number++
}

function scr_textbox(_text_id)
{
	if (layer_exists("GUI"))
	{
		with(instance_create_layer(0,0,"GUI",obj_dialogbox)) {
			scr_GameScript(_text_id)
		}
	}
}