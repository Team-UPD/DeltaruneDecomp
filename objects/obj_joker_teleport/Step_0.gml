if (con == 0)
{
	if (sndcon == 0)
	{
		snd_stop(snd_swing);
		snd_play(snd_swing);
		sndcon = 1;
	}
	image_index = 0;
	if (image_xscale < 2)
	{
		image_xscale += 0.4;
	}
	else
	{
		image_xscale = 2;
		con = 1;
		timer = 0;
	}
}
if (con == 1)
{
	timer += 1;
	if (timer >= 8)
	{
		if (sndcon == 1 && type < 3)
		{
			snd_play(snd_joker_oh);
			sndcon = 2;
		}
		image_index = 1;
		con = 2;
		timer = 0;
		if (type == 0)
		{
			bullet = instance_create(x, y, obj_collidebullet);
			bullet.sprite_index = spr_diamondbullet;
			bullet.active = 1;
			scr_bullet_inherit(bullet);
			with (bullet)
			{
				move_towards_point(obj_heart.x + 10, obj_heart.y + 10, 8);
				image_angle = direction;
				image_xscale = 0.7;
				image_yscale = 0.7;
			}
		}
		if (type == 1)
		{
			for (i = 0; i < 5; i += 1)
			{
				bullet = instance_create(x, y, obj_collidebullet);
				bullet.sprite_index = spr_spadebullet;
				bullet.active = 1;
				bullet.offset = 18 * i;
				scr_bullet_inherit(bullet);
				with (bullet)
				{
					move_towards_point(obj_heart.x + 10, obj_heart.y + 10, 4.5);
					direction = (direction - 36) + offset;
					image_angle = direction;
					image_xscale = 0.4;
					image_yscale = 0.4;
				}
			}
		}
	}
}
if (con == 2)
{
	timer += 1;
	if (timer >= 10)
	{
		con = 4;
		timer = 0;
	}
}
if (con == 4)
{
	if (sndcon == 2)
	{
		snd_stop(snd_swing);
		snd_play(snd_swing);
		sndcon = 3;
	}
	if (image_xscale > 0)
	{
		image_xscale -= 0.4;
		image_yscale += 0.2;
	}
	else
	{
		image_xscale = 0;
		con = 0;
		instance_destroy();
	}
}
