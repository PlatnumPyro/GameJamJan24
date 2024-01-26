/// @description initialize the ability

movementIncrementX = (targetX - self.x)/stepsToLocation;
movementIncrementY = (targetY - self.y)/stepsToLocation;
curveIncrementY = -initialYForCurve/stepsToLocation;

abilityInitialized = true;