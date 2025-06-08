if (moveberd == 1)
{
	with (other)
	{
		if (movetype == 0 && movetimer < (movethreshold - 1) && movecon == 0)
		{
			movebuffer = 1;
			movetimer = movethreshold - 1;
		}
	}
	instance_destroy();
}
