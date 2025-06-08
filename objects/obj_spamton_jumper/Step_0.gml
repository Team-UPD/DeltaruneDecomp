event_inherited();
if (truegravity == 0)
{
	destroyonhit = 0;
	truegravity = gravity * 2;
}
if (init == 0)
{
	flip = sign(gravity);
	if (gravity < 0)
		image_yscale = -1;
	if (jumper)
		depth--;
	yscale = image_yscale;
	init = 1;
}
if (jumpstate == 0 && jumper)
{
	if ((obj_heart.x + 8) <= x && (obj_heart.x + 8) > (x - 40))
	{
		gravity = clamp(gravity, -0.1, 0.1);
		jumpstate = -1;
		jumper = 0;
		speed = 0;
		timer = 10;
		image_speed = 0;
		image_index = 0;
	}
}
if (jumpstate == -1)
{
	timer--;
	if (timer <= 0)
	{
		vspeed = scr_getjumpspeed(abs(truegravity), clamp(abs((obj_heart.y + 8) - y) + 10, 20, 100)) * -sign(truegravity);
		gravity = truegravity;
		hspeed = clamp(((obj_heart.x + 8) - x) / 40, -5, -1);
		jumpstate = 1;
		image_index = 1;
	}
}
if (jumpstate == 1)
{
	if (image_speed == 0 && (vspeed * gravity) > 0)
		image_speed = 1;
	if (y < ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 24))
	{
		y = (obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 24;
		gravity = 0;
		vspeed = 0;
		hspeed = -4;
		image_speed = 0.5;
		jumpstate = 0;
	}
	else if (y > ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 24))
	{
		y = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 24;
		gravity = 0;
		vspeed = 0;
		hspeed = -4;
		image_speed = 0.5;
		jumpstate = 0;
	}
}
