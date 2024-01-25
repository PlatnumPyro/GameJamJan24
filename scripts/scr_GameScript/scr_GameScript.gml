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
			scr_text("I've just been stuck on new ideas. I've been wanting to make something new and innovative, but I feel like nothing I make is original enough. The demand for stronger potions is at an all time high right now, and I have to jump on it, you know?",SPEAKERS.PROTAGONIST)
			scr_text("hmm.",SPEAKERS.CARRIER)
			scr_text("I mean, if I don't step it up, Mildred on the next island over is going to put me out of business!",SPEAKERS.PROTAGONIST)
			scr_text("hm.",SPEAKERS.CARRIER)
			scr_text("...And if I'm out of business, you won't be able to deliver your favorite alchemist's potions across the island for everyone to enjoy!",SPEAKERS.PROTAGONIST)
			scr_text("hmm.",SPEAKERS.CARRIER)
			scr_text("...You've never been much of a talker but I know I'm your favorite shopkeep!",SPEAKERS.PROTAGONIST)
			scr_text("You're the only shopkeep. Now are you gonna let me deliver these or not?", SPEAKERS.CARRIER)
			scr_text("...Fine. Thanks again, Mr. Ray of Sunshine!",SPEAKERS.PROTAGONIST)
			scr_text("The carrier walks away, exasperated from the conversation, while you consider the originality of your ideas. You must find a way to improve your potions... lucky for you, there's an ingredient you forgot about until this very moment. You run to your alchemy station, ready to throw together something amazing.",SPEAKERS.NONE)
			scr_room(room_Minigame)
			break;
		// Potion is finished
		case "progress-potion":
			scr_text("A potion!",SPEAKERS.PROTAGONIST)
			break;
		
		// First map screen
		case "progress-map":
			scr_text("Where to use this?",SPEAKERS.PROTAGONIST)
			break;
		// After the curse spreads
		case "progress-map1":
			scr_text("uh oh spaghetti-o.",SPEAKERS.PROTAGONIST)
			break;
		// After unlocking level 2
		case "progress-map2":
			scr_text("I think I'm getting the hang of this... I'm pretty sure I can cleanse in more dense areas of the curse!",SPEAKERS.PROTAGONIST)
			break;
		// After unlocking level 3
		case "progress-map3":
			scr_text("I feel stronger... I can move on to the worst parts. Let's do this.",SPEAKERS.PROTAGONIST)
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
			scr_text("A potion of speed! Increases speed.",SPEAKERS.PROTAGONIST)
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
			
			
		case "npc-water":
			scr_text("Hey! You should get out of here, this area has been shrouded in cursed mist... I'm doing my best to stop it but it's dangerous.",SPEAKERS.PROTAGONIST)
			scr_text("...Curse... a pretty one...",SPEAKERS.WATER)
			scr_text("What? Are you alright?",SPEAKERS.PROTAGONIST)
			scr_text("A pretty one this time around.",SPEAKERS.WATER)
			scr_text("You aren't sure what this mage is talking about, but you try to find the right words anyway.",SPEAKERS.NONE)
				scr_option("Do you know where you are? What's your name?","npc-water-1a")
				scr_option("You really need to get out of here! Please snap out of it!","npc-water-1b")
				scr_option("Maybe I'll leave you be...","npc-water-1c")
			break;
		case "npc-water-1a":
			scr_text("I am Litore, I am at the beach. I am here.",SPEAKERS.WATER)
			scr_text("Sweet, I am here too! My name is Kai... I like the beach too... but this might not be the best time to enjoy the beach right now.",SPEAKERS.PROTAGONIST)
			scr_text("Why not be at the beach when the beach is where it is most pretty?",SPEAKERS.WATER)
			scr_text("Pretty? You mean the mist? It might be pretty to you, but it is also really dangerous. I'm not quite sure how a simple potion of mine could have done this... but I'm fixing it. I have to.",SPEAKERS.PROTAGONIST)
			scr_text("...Oh... You made the pretty one? Oh... I see. A good one this time... all beauty must fade one day.",SPEAKERS.WATER)
			scr_text(" ",SPEAKERS.PROTAGONIST)
				scr_option("I'm sorry...","npc-water-2a")
				scr_option("I don't understand what you're talking about... You're being kinda creepy.","npc-water-2b")
				scr_option("I don't have time for this, I've gotta hurry and destroy this gross curse!","npc-water-2c")
			break;
		case "npc-water-1b":
			scr_text("I like being here. I must be here. Litore belongs on the beach.",SPEAKERS.WATER)
			scr_text("You belong here? Do you live on this beach? I haven't seen you around here before... I guess I don't come often enough to notice everyone here.",SPEAKERS.PROTAGONIST)
			scr_text("I am always here when there's a pretty one. I have been waiting for another, it is so pretty.",SPEAKERS.WATER)
			scr_text("Are you talking about the curse? The mist is... well I guess you could say it's cool looking. I wouldn't say pretty, but I guess there's a curiosity about it.",SPEAKERS.PROTAGONIST)
			scr_text("I am always curious. Curious how it happens and how it doesn't.",SPEAKERS.WATER)
			scr_text("Oh... It's my fault. My potion... the one that was meant to be the best. What a disaster I've created.",SPEAKERS.PROTAGONIST)
			scr_text("You are the one? I see... If only I had a little more time to watch. But it all has to fade one day... a new one will come again.",SPEAKERS.WATER)
			scr_text("(What do I say?)",SPEAKERS.PROTAGONIST)
				scr_option("I'm sorry...","npc-water-2a")
				scr_option("I don't understand what you're talking about... You're being kinda creepy.","npc-water-2b")
				scr_option("I don't have time for this, I've gotta hurry and destroy this gross curse!","npc-water-2c")
			break;
		case "npc-water-1c":
			scr_text("A pretty one...",SPEAKERS.WATER)
			break;
			
		case "npc-water-2a":
			scr_text("I'm sorry if you... will miss it? I was hoping to make wizards stronger... so in a way I will miss it too. I miss what I wish it was.",SPEAKERS.PROTAGONIST)
			scr_text("Yes. I will miss it. I miss them all. The beach holds the prettiest ones... but we make room for the ones later. I will help to make another pretty one.",SPEAKERS.WATER)
			scr_text("All of the sudden, you feel a slight coolness in your stomach. The cold travels through to your chest and into your arms and hands. It's refreshing and calm, you somehow know this feeling. You've gained the elemental magic of water!",SPEAKERS.NONE)
			scr_text("Oh! Wow, thank you for your gift of magic, it will not go to waste! I hope you come across another... pretty one someday?",SPEAKERS.PROTAGONIST)
			scr_text("Litore is motionless, but you can somehow feel their contentment through the look in their glowing eyes. You feel rejuvenated.",SPEAKERS.NONE)
			// TODO: Give water ability here.
			break;
		case "npc-water-2b":
			scr_text("Hmm... creepy isn't a trait of the beach. Only pretty. Only calm. You don't want to understand, I think. That is alright with Litore.",SPEAKERS.WATER)
			scr_text("So are you gonna get out of here? It's still dangerous.",SPEAKERS.PROTAGONIST)
			scr_text("I don't leave. I stay, always. I watch, I know, I wait for the next one. Goodnight cursed one.",SPEAKERS.WATER)
			scr_text("You suddenly feel your body begin to burn up from the inside, from your stomach to your fingertips. It's slightly painful, and catches you off guard... but once the pain subsides, you are left feeling different. You notice a change in yourself. You've gained the elemental magic of water!",SPEAKERS.NONE)
			// TODO: Give water ability here.
			// TODO: Take damage
			break;
		case "npc-water-2c":
			scr_text("...Not gross. No, not a pretty thing for you to say. Your intentions are not that of a pretty one. I don't believe you made this one. Be on your way, deceiver.",SPEAKERS.WATER)
			scr_text("You have a feeling this mage isn't going to leave, and they don't want much to do with you now for some reason... You leave them to their staring and mumbling.",SPEAKERS.NONE)
			break;
		
		
		case "npc-lightning":
			scr_text("Oh hi, I didn't think anyone else was up here, it's pretty dangerous to be up here even when it's not cursed... You should really evacuate the area!",SPEAKERS.PROTAGONIST)
			scr_text("Hmm? Dangerous? What's so wrong about a little danger? I'm fine thank you, I have a lot to do up here... I should be asking you why you're here.",SPEAKERS.LIGHTNING)
			scr_text("(What do I say?)",SPEAKERS.PROTAGONIST)
				scr_option("I'm here to stop the spread of the curse!","npc-lightning-1a")
				scr_option("For fun, what else?","npc-lightning-1b")
				scr_option("Actually, I need to hurry up and get back to it... bye!","npc-lightning-1c")
			break;
		case "npc-lightning-1a":
			scr_text("Ah yes, a curse. I heard from Demetri on the island over there was something going on over here that caused all the other wizards to scatter... There's barely anyone left on this poor island. Why are you the one trying to save it?",SPEAKERS.LIGHTNING)
			scr_text("Because I caused it. I sent out a potion one day, and the very next, the island began getting infested with monsters and mist! I didn't know this would happen...",SPEAKERS.PROTAGONIST)
			scr_text("I see... so this is your doing? Well, I can't blame you for inviting a little danger into your routine, but this is quite the extravagant challenge. How are you faring so far?",SPEAKERS.LIGHTNING)
			scr_text("(What do I say?)",SPEAKERS.PROTAGONIST)
				scr_option("I'm making good progress! I think I can actually fix this!","npc-lightning-2a")
				scr_option("We're all doomed.","npc-lightning-2b")
			break;	
		case "npc-lightning-2a":
			scr_text("That's great to hear! You seem to be on the right track to cleaning up your little mess.",SPEAKERS.LIGHTNING)
			scr_text("Yeah... it really is a mess. I did not mean for it to be this way. This potion was supposed to set me apart from the other alchemists! This was  supposed to be something that improved magic, I was so proud of it. Now... it's nothing but a mess.",SPEAKERS.PROTAGONIST)
			scr_text("Look... it might be a mess, but at least it's your mess. You wouldn't wanna clean up after anyone else's mess but your own right? You're doing it, and you're making it right. I think that should motivate you to keep going.",SPEAKERS.LIGHTNING)
			scr_text("I guess I see what you're saying... I'll keep going. I will fix this... By the way, what are you doing up here?",SPEAKERS.PROTAGONIST)
			scr_text(" Just charging up my electric capacitor. This mountain always has the strongest storms... thunder helps me think of new ideas for magic-tech back home. You should visit some time, once you sort out this curse.",SPEAKERS.LIGHTNING)
			scr_text("That sounds so cool. I wish I could stick around and talk tech with you, but I should really get back to clearing this area. Hopefully I'll be alive enough to visit you, uhm... Miss...",SPEAKERS.PROTAGONIST)
			scr_text("Lux. I hope to see you again. In the meantime, I'll give you a little shock to inspire some motivation to not die to those monsters.",SPEAKERS.LIGHTNING)
			scr_text("Lux points her lightning rod towards you and shoots a golden bolt directly into your chest. The electricity blinds you for a brief moment as the shock sends trembling pain down your legs and up your arms. As fast as the pain begins, it ends, leaving you with a feeling of pure concentration and power. This feeling is familiar. You have gained lightning magic!",SPEAKERS.NONE)
			scr_text("OW?! Oh... Jeez I thought you were gonna kill me. Thank you for giving me your gift, but I suggest you warn someone a bit better next time you do that.",SPEAKERS.PROTAGONIST)
			scr_text("Like I said, what's so wrong about a little danger? Good luck, hun.",SPEAKERS.LIGHTNING)
			// TODO: Give lightning ability here.
			// TODO: Take damage
			break;
		case "npc-lightning-2b":
			scr_text("I am actually so screwed. Why did I think I could do this alone?",SPEAKERS.PROTAGONIST)
			scr_text(" Aww, that's no way to take on a challenge! I would have thought you'd be more optimistic to clean up your own mess.",SPEAKERS.LIGHTNING)
			scr_text("I didn't know I'd be up against something so much bigger than me... I honestly could really use some help. What's your name?",SPEAKERS.PROTAGONIST)
			scr_text("Lux. Hm. I can't fault you for being brave enough to ask a stranger for assistance, but I've got my hands tied on this mountain. I mustn't leave yet, but if you're desperate, I guess I can give you what I have.",SPEAKERS.LIGHTNING)
			scr_text("Lux taps you with her lightning rod (more like bonks you kinda hard) on the head. Electricity currents through your veins as sparks fly from your fingertips. You feel explosive. You have gained lightning magic!",SPEAKERS.NONE)
			scr_text("I took care of any scratches you may have gotten along the way, since you're being a little baby about fighting your own battle.",SPEAKERS.LIGHTNING)
			scr_text("Oh uh, thanks for that. I will not let this gift go to waste!",SPEAKERS.PROTAGONIST)
			scr_text("Lux waves you o and turns back to her business. You have a weird gut feeling that she was hoping you wouldn't ask for her help at all.",SPEAKERS.NONE)
			// TODO: Give lightning ability here.
			// TODO: Health up
			break;
		
		case "npc-lightning-1b":
			scr_text("You're telling me you climbed a mountain with a perpetual thunderstorm and cursed mist for fun?",SPEAKERS.LIGHTNING)
			scr_text("Nah, it was a goof. I got you though didn't I? I'm a bit of a goofy person.",SPEAKERS.PROTAGONIST)
			scr_text("I am honestly not in the mood to be goofed. Go make your japes elsewhere, scoundrel.",SPEAKERS.LIGHTNING)
			scr_text("Oh, but-",SPEAKERS.PROTAGONIST)
			scr_text("Suddenly, lightning strikes directly in front of you. You feel dazed, but luckily unharmed. There's a very high chance the mage in front of you had something to do with that, you should probably leave her alone. It seems like she doesn't like japes or goofs.",SPEAKERS.NONE)
			break;
		case "npc-lightning-1c":
			scr_text("You decide to leave.",SPEAKERS.NONE)
			break;
			
		default:
			scr_text("")
			break;
	}

}