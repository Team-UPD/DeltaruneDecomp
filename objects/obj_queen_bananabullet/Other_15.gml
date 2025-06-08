if (active == 1)
{
	if (bufferstate)
	{
		active = 0;
	}
	else
	{
		scr_bullet_heal(damage);
		instance_destroy();
	}
}
