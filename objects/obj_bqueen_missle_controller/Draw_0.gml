draw_sprite_ext(sprite_index, image_index, x - 2, y + 135, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
introtimer++;
if (introtimer == 15)
	image_speed = 0.4;
if (image_index >= 2)
{
	if (openmisslechambertimer == 0)
		snd_play(snd_grab);
	if (openmisslechambertimer < 5)
	{
		openmisslechambertimer += 1;
		x = (xstart + (4 / openmisslechambertimer)) - irandom(8 / openmisslechambertimer);
		y = (ystart + (4 / openmisslechambertimer)) - irandom(8 / openmisslechambertimer);
		image_speed = 0;
	}
	else
	{
		misslewaittimer++;
		x = xstart;
		y = ystart;
	}
}
if (misslewaittimer < 1)
	exit;
if (!oldmode)
{
	if (con == 0)
	{
		timer++;
		if (timer >= 20)
		{
			timer = 0;
			con = 1;
		}
	}
	if (con == 1)
	{
		var makeshot = 0;
		timer--;
		if (timer <= 0 && shotcount < (3 + difficulty))
		{
			volleytimer--;
			if (volleytimer <= 0)
			{
				makeshot = 1;
				volleycount++;
				volleytimer = 5;
			}
			if (volleycount >= volleytotal)
			{
				makeshot = 0;
				side = choose(1, -1);
				timer = 30;
				if (difficulty == 1)
					timer = 15;
				volleycount = -1;
				shotcount++;
			}
		}
		if (makeshot && volleycount != 3)
		{
			var _y = 0;
			if (volleycount >= 3)
				_y += 20;
			snd_stop(snd_rocket);
			snd_play(snd_rocket);
			d = instance_create(x + missilex[volleycount], y + 16 + _y, obj_bqueen_missle_homing);
			d.vspeed = -6;
			d.hspeed = choose(2, -2, 4, -4);
			d.damage = damage;
			d.target = target;
			d.depth = bulletdepth;
			with (d)
			{
				image_angle = direction - 90;
				var cloud = scr_afterimage_grow();
				cloud.sprite_index = spr_cakesmoke_white;
			}
		}
	}
	if (global.turntimer < 3)
		instance_destroy();
}
else if (oldmode)
{
	siner += 0.7;
	x = xstart + 20 + (sin(siner / 6) * 54);
	timer++;
	if (timer > 9)
	{
		bulletcount++;
		if (bulletcount == bulletcountmax)
		{
			timer = -7;
			bulletcount = 0;
			bulletcountmax = 8;
		}
		else
		{
			d = instance_create((x - 55) + random(20), y + 36, obj_bqueen_missle);
			d.damage = damage;
			d.target = target;
			d.depth = bulletdepth;
			d = instance_create((x + 55) - random(20), y + 36, obj_bqueen_missle);
			d.damage = damage;
			d.target = target;
			d.depth = bulletdepth;
			timer = 5;
		}
	}
	if (global.turntimer < 3)
		instance_destroy();
}
