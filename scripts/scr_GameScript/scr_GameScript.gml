// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum SPEAKERS {
	NONE,
	PROTAGONIST,
	FIRE,
	WATER,
	LIGHTNING,
	POTION
}

function scr_GameScript(_text_id){

	switch(_text_id) {
		case "debug":
			scr_text("[wave]Hello [rainbow]World[/rainbow]!",SPEAKERS.PROTAGONIST)
			scr_text("This is textbox 2!")
			scr_text("Want me to keep talking?")
				scr_option("Yes","debug-yes")
				scr_option("No","debug-no")
			break;
		case "debug-yes":
			scr_text("Hooray!",SPEAKERS.PROTAGONIST)
			break;
		case "debug-no":
			scr_text("Aww...",SPEAKERS.PROTAGONIST)
			break;
	}

}