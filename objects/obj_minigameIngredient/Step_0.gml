/// @description Insert description here
// You can write your code in this editor

if (!drag) {
	if (position_meeting(mouse_x, mouse_y, id)) {
		if (textbox==noone) {
			textbox = scr_textbox(ingredient_string)
		}	
	}
	else if(textbox!=noone) {
			instance_destroy(textbox)
			textbox = noone
	}
	
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
		drag = true;
		depth=-1
	}
}
else {
	self.x = mouse_x;
	self.y = mouse_y;
	
	// On mouse release
	if (!mouse_check_button(mb_left)) {
		drag = false;
		self.x = xstart
		self.y = ystart
		depth=0
		
		if place_meeting(mouse_x,mouse_y,obj_minigameCauldron) {
			self.y = -100
			
			obj_GameManager.curseStats[0] += stats[0]
			obj_GameManager.curseStats[1] += stats[1]
			obj_GameManager.curseStats[2] += stats[2]
			
			obj_MinigameManager.items++
			
			event_perform(ev_other,ev_user0)
		}
   }
}

