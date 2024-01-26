/// @description take damage

if (invincibilityFrames <= 0)
{
	playerHealth -= damageAmmountToTake;
	invincibilityFrames = 90;
}
