if (grazed == 1)
{
	grazetimer += 1;
	if (grazetimer >= 30)
	{
		grazetimer = 0;
		grazed = 0;
	}
}
if (wall_destroy == 1)
{
	if (x < (__view_get(e__VW.XView, 0) - 80))
		instance_destroy();
	if (x > (__view_get(e__VW.XView, 0) + 760))
		instance_destroy();
	if (y < (__view_get(e__VW.YView, 0) - 80))
		instance_destroy();
	if (y > (__view_get(e__VW.YView, 0) + 580))
		instance_destroy();
}
if (updateimageangle == 1)
	image_angle = direction;
