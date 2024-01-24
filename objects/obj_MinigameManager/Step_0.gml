/// @description Insert description here
// You can write your code in this editor
if (opacity>0) {
	opacity-=0.1	
}
	
if ( i != items) {
	i++
	
	instance_destroy(textbox)
	
	switch(items) {
		case 1:
			textbox = scr_textbox("potion-four")
			break;
		case 2:
			textbox = scr_textbox("potion-three")
			break;
		case 3:
			textbox = scr_textbox("potion-two")
			break;
		case 4:
			textbox = scr_textbox("potion-one")
			break;
		case 5:
			// Room transition
			break;
	}
}