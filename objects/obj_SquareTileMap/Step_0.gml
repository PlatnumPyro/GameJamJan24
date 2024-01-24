/// @description 

//update the cursed tiles if it spreads.  
//it does this all at once so if we want to increment it slowly, 
//then the game logic should increment the curse with smaller numbers more times
if (global.currentSquareTilesToCurse > displayedCursePower)
{
	desiredCursePowerToDisplay = global.currentSquareTilesToCurse;
	event_perform(ev_other, ev_user1);
}
