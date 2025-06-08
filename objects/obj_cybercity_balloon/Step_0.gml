siner += 1;
if (mode == 0)
	y = ystart + (sin(siner / 16) * (5 + offset));
if (mode == 1)
{
	if (y <= (cameray() - 120))
		instance_destroy();
	if (cameray() > remcameray)
		vspeed += 0.05;
	if (cameray() < remcameray)
		vspeed--;
	if (vspeed <= -9)
		vspeed += 0.98;
	remcameray = cameray();
	if (blend)
		image_blend = merge_color(c_gray, c_dkgray, max(0, (y - cameray()) / 500));
}
if (mode == 2)
{
	if (d_ex())
	{
		if (paused == 0)
		{
			rem_hspeed = hspeed;
			rem_friction = friction;
			rem_gravity = gravity;
			remx = x;
			remy = y;
			hspeed = 0;
			friction = 0;
			gravity = 0;
			paused = 1;
		}
		setxy(remx, remy);
	}
	else
	{
		if (paused != 0)
		{
			hspeed = rem_hspeed;
			friction = rem_friction;
			gravity = rem_gravity;
			paused = 0;
		}
		sprite_index = spr_bg_city_balloon_carrier;
		if (speed == 0)
			y += (sin(siner / 16) * 0.5);
		if (y <= 60)
		{
			gravity = 0;
			y = 60;
		}
	}
}
flip_timer += 0.1;
if ((flip_timer % (5 + offset)) == 1 && mode != 2)
	scr_flip("h");
if (breakable == 1)
{
	var broken = 0;
	if (place_meeting(x, y, obj_forcefield))
		broken = 1;
	if (broken)
	{
		if (attached)
		{
			with (attachedinstance)
			{
				scr_stickto_stop();
				falling = 1;
			}
		}
		if (image_xscale < 0)
			scr_flip("h");
		snd_play(snd_break2);
		afterimage = instance_create(x + 14, y + 14, obj_afterimage_cut);
		afterimage.sprite_index = sprite_index;
		afterimage.image_index = image_index;
		afterimage.image_blend = image_blend;
		afterimage.image_speed = 0;
		afterimage.depth = depth;
		scr_darksize(afterimage);
		afterimage.image_angle = image_angle;
		with (afterimage)
			event_user(0);
		instance_destroy();
	}
}
