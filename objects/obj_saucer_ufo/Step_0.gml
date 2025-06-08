if (global.interact == 0)
{
	centerx = (camerax() + 320) - (sprite_width / 2);
	if (con == 0)
	{
		vspeed = -8;
		image_speed = 0;
		if (y <= startTarget)
		{
			image_speed = 0.2;
			if (image_index >= 4)
			{
				con = 1;
				sprite_index = spr_ch2_gimmick_saucer_ufo;
				image_speed = 0.2;
				image_index = 0;
				vspeed = 0;
				increment = choose(0.04, 0.05, 0.06, 0.07, 0.08);
			}
			if (x != centerx)
				x = lerp(x, centerx, 0.25);
		}
	}
	if (con == 1)
	{
		timer++;
		if (timer == timer1 || timer == timer2 || timer == timer3)
		{
			snd_play_x(snd_laz_c, 0.5, 0.7);
			snd_play_x(snd_laz_c, 0.6, 2);
			bullet = instance_create(x + 50, y + 65, obj_saucer_ufo_bullet);
			bullet.damage = 10;
			bullet.target = 3;
		}
		if (timer == (timer3 + 10))
			con = 2;
		steptimer += increment;
		desx = centerx + (sin(steptimer) * 280);
		x = lerp(x, desx, 0.05);
		y += (sin(steptimer) / 4);
	}
	if (con == 2)
	{
		if (hspeed == 0)
			hspeed = 1;
		hspeed *= 1.2;
		hspeed = clamp(hspeed, 0, 30);
		if (x > (camerax() + 640 + (sprite_width * 2)))
			instance_destroy();
	}
}
