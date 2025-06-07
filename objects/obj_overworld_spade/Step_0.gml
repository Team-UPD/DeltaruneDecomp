timer += 1;
if (timer >= 2)
{
	if (image_alpha < 1)
		image_alpha += 0.1;
	if (image_alpha == 1)
		active = 1;
}
if (room == room_dark_chase2)
{
	if (x > 680)
		instance_destroy();
	if (x < -40)
		instance_destroy();
}
else
{
	if (room == room_dark_chase1)
	{
		if (x >= (__view_get(e__VW.XView, 0) + 800))
			x -= 900;
		if (x <= (__view_get(e__VW.XView, 0) - 200))
			x += 900;
	}
	if (y > (__view_get(e__VW.YView, 0) + 600))
		instance_destroy();
	if (y < (__view_get(e__VW.YView, 0) - 800))
		instance_destroy();
}
