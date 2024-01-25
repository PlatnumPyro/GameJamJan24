// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum SPEAKERS {
	NONE,
	PROTAGONIST,
	FIRE,
	WATER,
	LIGHTNING,
	CARRIER
}

function scr_GameScript(_text_id){

	switch(_text_id) {
		
		// Pressing Start Game
		case "progress-start":
			scr_text("I`ve just been stuck on new ideas. I`ve been wanting to make something new and innovative, but I feel like nothing I make is original enough. The demand for stronger potions is at an all time high right now, and I have to jump on it, you know?",SPEAKERS.PROTAGONIST)
			scr_text("hmm.",SPEAKERS.CARRIER)
			scr_text("I mean, if I don`t step it up, Mildred on the next island over is going to put me out of business!",SPEAKERS.PROTAGONIST)
			scr_text("hm.",SPEAKERS.CARRIER)
			scr_text("...And if I`m out of business, you won`t be able to deliver your favorite alchemist`s potions across the island for everyone to enjoy!",SPEAKERS.PROTAGONIST)
			scr_text("hmm.",SPEAKERS.CARRIER)
			scr_text("...You`ve never been much of a talker but I know I`m your favorite shopkeep!",SPEAKERS.PROTAGONIST)
			scr_text("You`re the only shopkeep. Now are you gonna let me deliver these or not?", SPEAKERS.CARRIER)
			scr_text("...Fine. Thanks again, Mr. Ray of Sunshine!",SPEAKERS.PROTAGONIST)
			scr_text("The carrier walks away, exasperated from the conversation, while you consider the originality of your ideas. You must find a way to improve your potions... lucky for you, there`s an ingredient you forgot about until this very moment. You run to your alchemy station, ready to throw together something amazing.",SPEAKERS.NONE)
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
			scr_text("A potion of strength! Increases strength.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient1":
			scr_text("A potion of defense! Increases defense.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient2":
			scr_text("A potion of speed! Increases defense.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient3":
			scr_text("Magic Dust! Greatly increases strength, but lowers defense.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient4":
			scr_text("Magic Candy! Greatly increases strength, but lowers speed. Also boosts flavor!",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient5":
			scr_text("Fairy Dust! Greatly increases defense, but lowers strength.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient6":
			scr_text("Magic Pollen! Greatly increases defense, but lowers speed.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient7":
			scr_text("Enchanted Thistles! Greatly increases speed, but lowers strength.",SPEAKERS.PROTAGONIST)
			break;
		case "ingredient8":
			scr_text("Pixie Dust! Greatly increases speed, but lowers defense",SPEAKERS.PROTAGONIST)
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