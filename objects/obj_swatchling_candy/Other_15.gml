if (active == 1)
{
	if (target != 3)
		scr_bullet_heal(6);
	if (target == 3)
		scr_healall(6);
	instance_destroy();
}
