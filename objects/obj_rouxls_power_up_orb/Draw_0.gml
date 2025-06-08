if (parenttarget != -1 && !i_ex(parenttarget))
{
	instance_destroy();
	exit;
}
if (parenttarget != -1 && i_ex(parenttarget))
{
	xstart = parenttarget.x;
	ystart = parenttarget.y;
}
if (init == 0)
{
	init = 1;
	if (thin)
		lifetime /= 2;
	if (track_target != -4)
	{
		xstart = 0;
		ystart = 0;
	}
	var _distance = random_range(70, 90) * distance_multiplier;
	if (_type == 1)
		_distance = random_range(40, 45);
	xx = xstart + lengthdir_x(_distance, direction);
	x = xx;
	yy = ystart + lengthdir_y(_distance, direction);
	y = yy;
}
if (track_target != -4)
{
	xoff = track_target.x;
	yoff = track_target.y;
}
timer++;
if (timer > lifetime)
{
	instance_destroy();
	exit;
}
var _progress = timer / lifetime;
image_alpha = 1;
if (thin)
{
	image_blend = c_white;
	image_yscale = 0.25;
	image_angle = direction;
	draw_self();
	x = lerp(xx, xstart, scr_ease_in(_progress, 2)) + xoff;
	y = lerp(yy, ystart, scr_ease_in(_progress, 2)) + yoff;
}
else
{
	var _drawalpha = draw_get_alpha();
	draw_set_color(image_blend);
	draw_circle(x, y, radius - 2, 0);
	draw_set_alpha(image_alpha);
	x = lerp(xx, xstart, scr_ease_in(_progress, 2)) + xoff;
	y = lerp(yy, ystart, scr_ease_in(_progress, 2)) + yoff;
	draw_circle(x, y, radius, 0);
	if ((radius - 3) > 0)
	{
		draw_set_color(c_white);
		draw_circle(x, y, radius - 2, 0);
	}
	draw_set_alpha(_drawalpha);
	radius = lerp(max_radius, 1, _progress);
}
