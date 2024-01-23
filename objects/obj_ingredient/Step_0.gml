/// @description Insert description here
// You can write your code in this editor

if (!drag) {
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		drag = true;
		mx = x - mouse_x;
		my = y - mouse_y;
	  
	scr_textbox("ingredient-potion")
	}
}
else {
	x = mouse_x + mx;
	y = mouse_y + my;
  
	if (!mouse_check_button(mb_left)) {
		drag = false;
		x = xstart
		y = ystart
   }
}