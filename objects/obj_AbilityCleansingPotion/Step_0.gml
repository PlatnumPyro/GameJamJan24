/// @description Insert description here
// You can write your code in this editor
if (abilityInitialized)
{
	rotationalAngle += rotationalSpeed;
	initialYForCurve += curveIncrementY;

	self.x += movementIncrementX;
	self.y += movementIncrementY;
	
	currentStep++;
}

if (currentStep >= stepsToLocation)
{
	if (point_distance(self.x, self.y, global.mouse.x, global.mouse.y) < 256)
	{
		with (global.mouse)
			{event_perform(ev_other, ev_user0); }
	}
	
	if (point_distance(self.x, self.y, global.fox.x, global.fox.y) < 256)
	{
		with (global.fox)
			{event_perform(ev_other, ev_user0); }
	}
	
	with (global.gameManager)
	{
		event_perform(ev_other, ev_user6);
	}
}