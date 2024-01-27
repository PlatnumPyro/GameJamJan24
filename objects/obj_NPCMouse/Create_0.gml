/// @description Insert description here
// You can write your code in this editor


npc_Health = 50;
walkSpeed = 2;
attackSpeed = walkSpeed * 0.5;
attackRange = 50;
sightRange = 200;

stepsTakenToPrepAttack = 0;
attackThreshold = 120;
resetThreshold = attackThreshold / 2; // used to have the sprite stay at subimg 2 for some time.
stepsTakenToReset = 0;

damageToBeTaken = 0;

image_speed = 0;
image_xscale = 0.2;
image_yscale = 0.2;
spriteSubimageIndex = 0;
