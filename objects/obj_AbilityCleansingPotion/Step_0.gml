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
	if (instance_exists( global.mouse))
	{
		if (point_distance(self.x, self.y, global.mouse.x, global.mouse.y) < 256)
		{
			with (global.mouse)
				{ 
					global.mouse.damageToBeTaken = 50; 
					event_perform(ev_other, ev_user0); 
				}
		}
	}
	
	if (instance_exists( global.fox))
	{
		if (point_distance(self.x, self.y, global.fox.x, global.fox.y) < 256)
		{
			with (global.fox)
				{ 
					global.fox.damageToBeTaken = 50; 
					event_perform(ev_other, ev_user0); 
				}
		}
	}
	
		with (global.gameManager)
		{ event_perform(ev_other, ev_user6); }
}