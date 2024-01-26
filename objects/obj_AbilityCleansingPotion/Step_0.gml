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
	with (global.gameManager)
	{
		event_perform(ev_other, ev_user6);
	}
}