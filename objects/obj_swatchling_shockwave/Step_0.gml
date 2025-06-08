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
at = duration / 2;
sizeScale = 0;
if (timer <= 20)
{
	if (easestyle == 1)
	{
		if (timer <= (at / 2))
			sizeScale = timer / (at / 2);
	}
	else
	{
		sizeScale = timer / at;
	}
}
else if (timer < duration)
{
	sizeScale = (at - (timer - at)) / at;
	if (easestyle == 1)
		sizeScale = -1 * sizeScale * (sizeScale - 2);
}
if (easestyle == 0)
	sizeScale = -1 * sizeScale * (sizeScale - 2);
image_xscale = sizeScale;
image_yscale = sizeScale * sizemultiplier;
image_blend = merge_color(startColor, c_white, sizeScale);
timer++;
if (timer == 40)
	instance_destroy();
