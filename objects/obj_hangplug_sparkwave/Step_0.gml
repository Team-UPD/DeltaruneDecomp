scr_depth_alt();
a = scr_afterimage();
a.x += deshspeed;
a.image_alpha = image_alpha * 0.5;
a.fadeSpeed = 0.15;
a.depth = depth + 10;
if (init == 0)
{
	if (dir == "left")
		deshspeed = -12;
	if (dir == "right")
		deshspeed = 12;
	hspeed = 0.1 * sign(deshspeed);
	image_xscale = 2 * sign(deshspeed) * -1;
	init = 1;
	image_alpha = 0;
}
if (hspeed < abs(deshspeed))
	hspeed *= 1.5;
hspeed = clamp(hspeed, -abs(deshspeed), abs(deshspeed));
if (con == 0)
{
	image_alpha = image_yscale / 2;
	image_yscale *= 1.3;
	if (image_yscale >= 2)
	{
		image_yscale = 2;
		con++;
	}
}
if (place_meeting(x, y, obj_solidenemy) || x > (room_width + sprite_width) || x < (0 - sprite_width))
{
	active = 0;
	fadeaway = 1;
}
if (fadeaway == 1)
{
	image_alpha *= 0.6;
	active = 0;
	if (image_alpha <= 0.01)
		instance_destroy();
}
