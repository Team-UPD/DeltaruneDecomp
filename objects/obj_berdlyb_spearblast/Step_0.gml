if (!init)
{
	init = true;
	path_set_kind(mypath, 1);
	path_set_precision(mypath, 4);
	path_set_closed(mypath, 0);
	var relativeY = 0;
	path_add_point(mypath, x, y, 100);
	path_add_point(mypath, x - 30, y, 100);
	var boxy = obj_growtangle.y;
	for (i = 1; i < 5; i++)
	{
		var xpoint = (-150 * i) + x;
		if (aim_at_player && scr_monsterpop() == 1 && relativeY == 0 && (xpoint - (obj_heart.x + 10)) <= 150)
		{
			relativeY = random_range(-80 * i, 80 * i) + boxy;
			path_add_point(mypath, xpoint, relativeY, 100);
			relativeY = ((obj_heart.y + 10) - relativeY) / abs((obj_heart.x + 10) - xpoint);
		}
		else if (aim_at_player && scr_monsterpop() == 1 && relativeY != 0)
		{
			relativeY = obj_heart.y + 10 + (relativeY * abs((obj_heart.x + 10) - xpoint));
			path_add_point(mypath, xpoint, clamp(relativeY, (-80 * i) + boxy, (80 * i) + boxy), 100);
			relativeY = 0;
		}
		else
		{
			path_add_point(mypath, xpoint, random_range(-80 * i, 80 * i) + boxy, 100);
		}
	}
}
