if (global.flag[8] == 1)
	bg_speed = 0;
if (depth == 1000)
{
	mysurface = -999;
	depth = 998;
}
if (!instance_exists(obj_thrash_intro) && !instance_exists(obj_thrash_transformation_transition))
	rectsiner += (bg_speed * f);
if (global.flag[8] == 1)
	slow_down = 1;
if (slow_down == 1)
{
	if (bg_speed > 0)
		bg_speed -= 0.03;
	if (bg_speed < 0)
		bg_speed = 0;
	with (obj_bg_square)
	{
		slow_down = 1;
		if (siner < 0)
			siner -= 0.03;
		if (siner < 0)
			siner = 0;
	}
}
if (slow_down == 0)
{
	with (obj_bg_square)
		slow_down = 0;
	if (bg_speed < 0.8)
		bg_speed += 0.03;
}
if (rectsiner >= 20)
{
	var b = instance_create(0, 115, obj_bg_square);
	b.depth = depth + 1;
	rectsiner = 0;
}
if (global.flag[8] == 1)
	bg_speed = 0;
bg_speed = 0.7;
if (!instance_exists(obj_thrash_intro) && !instance_exists(obj_thrash_transformation_transition))
	siner += (bg_speed * f);
if (siner >= 1000)
	siner -= 500;
if (!surface_exists(mysurface))
	mysurface = surface_create(320, 480);
surface_set_target(mysurface);
var remleft = siner;
var oldlen = 0;
for (i = 45; i < 144; i += 1)
{
	if (i == 0)
		oldlen = 2;
	var len = i - ((i * i) / 48);
	var width = abs(oldlen - len) / 2;
	remleft -= width;
	draw_background_part_ext(bg_cityscape, remleft, 0, width, 142, 275 + len, ((i / 16) - ((i * i) / 100)) + 120, 2, (0.9 * (i * i * i)) / 819200, c_white, 0.8);
	oldlen = len;
	if (i > 90)
		i -= 0.5;
}
surface_reset_target();
draw_surface_ext(mysurface, 0, 0, 1, 1, 0, c_white, 1);
draw_surface_ext(mysurface, 640, 0, -1, 1, 0, c_white, 1);
draw_background_part_ext(bg_cityscape, siner, 0, 20, 142, 100 - siner, 50 + siner, 2, 2, c_white, 1);
