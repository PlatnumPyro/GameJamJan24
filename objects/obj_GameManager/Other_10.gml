// This is called when the user clicks on an option from a clickable string list
if (clickableList != undefined)
{
	var optionSelected = clickableList.highlightedChoiceIndex;
	var optionString = undefined;

	if (optionSelected != -1)
	{
		optionString = clickableList.stringArray[optionSelected];
		
		
		switch (optionString)
		{
			case "Start Game":
				room_goto(ROOM_INDEX.OVERWORLD);
				break;
				
			case "Options":
				break;
			
			case "Exit":
				game_end();
				break;
				
			case "Resume":
				global.isPaused = false;
				instance_destroy(clickableList);
				clickableList = undefined;
				break;
			
			case "Return to Title":
				global.isPaused = false;
				instance_destroy(clickableList);
				clickableList = undefined;
				room_goto(ROOM_INDEX.TITLE);
				break;
		}
	}
}