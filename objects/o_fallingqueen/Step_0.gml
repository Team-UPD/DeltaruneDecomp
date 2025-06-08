if (i_ex(dive_hitbox))
	dive_hitbox.y = y - 20;
if (y >= 780)
{
	with (dive_hitbox)
		instance_destroy();
	instance_destroy();
}
