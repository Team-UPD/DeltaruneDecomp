if (colorlerp < 1)
{
	if (image_alpha < 1)
	{
		image_alpha += 0.2;
	}
	else
	{
		image_blend = merge_color(startcolor, c_white, colorlerp);
		colorlerp += 0.05;
	}
}
if (colorlerp == 1)
{
	var fadebird = 0;
	if (hspeed > 0 && x > (gt_maxx() + 10))
		fadebird = 1;
	if (hspeed < 0 && x < (gt_minx() - 10))
		fadebird = 1;
	if (vspeed > 0 && y > (gt_maxy() + 10))
		fadebird = 1;
	if (vspeed < 0 && y < (gt_miny() - 10))
		fadebird = 1;
	if (fadebird == 1)
		image_alpha -= 0.2;
	if (image_alpha <= 0)
		instance_destroy();
}
draw_self();
