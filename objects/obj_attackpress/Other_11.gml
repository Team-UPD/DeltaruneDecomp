if (scr_monsterpop() > 0)
{
	for (i = 0; i < 3; i += 1)
	{
		if (target == i)
		{
			if (instance_exists(global.charinstance[i]))
			{
				global.charinstance[i].points = points[i];
				with (global.charinstance[i])
				{
					state = 1;
					attacktimer = 0;
				}
			}
		}
	}
}
