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
		
		// Pressing Start Game
		case "progress-start":
			scr_text("Jesse we have to cook!",SPEAKERS.PROTAGONIST)
			scr_room(room_Minigame)
			break;
		// Potion is finished
		case "progress-potion":
			scr_text("A potion!",SPEAKERS.PROTAGONIST)
			break;
		
		// First map screen
		case "progress-map":
			scr_text("Where we droppin?",SPEAKERS.PROTAGONIST)
			break;
		// After the curse spreads
		case "progress-map1":
			scr_text("uh oh spaghetti-o.",SPEAKERS.PROTAGONIST)
			break;
		// After unlocking level 2
		case "progress-map2":
			scr_text("You've got boost power!",SPEAKERS.PROTAGONIST)
			break;
		// After unlocking level 3
		case "progress-map3":
			scr_text("Now this is a boss battle",SPEAKERS.PROTAGONIST)
			break;
		
		
		case "potion-five":
			scr_text("Five ingredients should do it!",SPEAKERS.PROTAGONIST)
			break;
		case "potion-four":
			scr_text("Four more ingredients!",SPEAKERS.PROTAGONIST)
			break;
		case "potion-three":
			scr_text("Three more ingredients!",SPEAKERS.PROTAGONIST)
			break;
		case "potion-two":
			scr_text("Just two more ingredients!",SPEAKERS.PROTAGONIST)
			break;
		case "potion-one":
			scr_text("One more ingredient!",SPEAKERS.PROTAGONIST)
			break;
			
			
		case "ingredient0":
			scr_text("A potion 0!",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient1":
			scr_text("A potion! 1",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient2":
			scr_text("A potion! 2",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient3":
			scr_text("A potion! 3",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient4":
			scr_text("A potion! 4",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient5":
			scr_text("A potion! 5",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient6":
			scr_text("A potion! 6",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient7":
			scr_text("A potion! 7",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient8":
			scr_text("A potion! 8",SPEAKERS.PROTAGONIST)
			break;
			
		
		
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
		default:
			scr_text("")
			break;
	}

}