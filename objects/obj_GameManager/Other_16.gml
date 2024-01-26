/// @description ability potion cleanse

if (squareMap != undefined)
{
	squareMap.abilityCleanseLocation = [global.player.ability.x, global.player.ability.y];
	squareMap.cleanseRadius = 300;
	with (squareMap)
	{
		event_perform(ev_other, ev_user2);
	}
	instance_destroy(global.player.ability);
	global.player.ability = undefined;
}

