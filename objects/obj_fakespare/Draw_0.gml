repeat (reverse ? reversespeed : 1)
{
	if (reverse)
	{
		if (t >= 5 && t < 10)
			tone--;
		if (t >= 9)
			neotone--;
		else
			neotone = 0;
	}
	if (reverse)
	{
		if (t == 0)
			first_pass = false;
		else
			first_pass = !first_pass;
	}
	if (t != 0 && first_pass)
	{
		for (i = 0; i < starcount; i += 1)
		{
			with (star[i])
			{
				hspeed += gravity;
				x += hspeed;
			}
		}
	}
	if (t >= 6 && t <= 26)
	{
		if (!reverse)
			afterimage += 1;
		if (!first_pass)
		{
			d3d_set_fog(true, c_white, 0, 1);
			draw_sprite_ext(sprite_index, image_index, x + (afterimage * 4), y, image_xscale, image_yscale, 0, image_blend, 0.7 - (afterimage / 25));
			draw_sprite_ext(sprite_index, image_index, x + (afterimage * 8), y, image_xscale, image_yscale, 0, image_blend, 0.4 - (afterimage / 30));
			d3d_set_fog(false, c_black, 0, 0);
		}
		if (reverse)
			afterimage--;
	}
	if (t < 6)
	{
		if (!first_pass)
		{
			if (t < 5)
				draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, 1 - (neotone / 4));
			d3d_set_fog(true, c_white, 0, 1);
			maxwhite = t / 5;
			if (maxwhite > 1)
				maxwhite = 1;
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, maxwhite - (tone / 5));
			d3d_set_fog(false, c_black, 0, 0);
		}
	}
	if (!reverse)
	{
		if (t >= 1 && t <= 5)
		{
			for (i = 0; i < 2; i += 1)
			{
				star[starcount] = instance_create(x + random(sprite_width), y + random(sprite_height), obj_marker);
				star[starcount].reversespeed = reversespeed;
				with (star[starcount])
				{
					image_xscale = 2;
					image_yscale = 2;
					sprite_index = spr_sparestar_anim;
					image_alpha = 2;
					image_speed = 0.25;
					hspeed = -3;
					gravity = 0.5;
					gravity_direction = 0;
				}
				starcount += 1;
			}
		}
		if (t >= 5 && t <= 30)
		{
			for (i = 0; i < starcount; i += 1)
			{
				with (star[i])
				{
					image_angle += 10;
					image_alpha -= 0.1;
					if (image_alpha <= 0)
						visible = false;
				}
			}
		}
	}
	else
	{
		if (t >= 6 && t <= 31)
		{
			for (i = 0; i < starcount; i += 1)
			{
				with (star[i])
				{
					image_angle -= 10;
					image_alpha += 0.1;
					if (!visible && image_alpha >= 0 && image_alpha < 2)
						visible = true;
				}
			}
		}
		if (t >= 2 && t <= 6)
		{
			for (i = 0; i < 2; i += 1)
			{
				starcount--;
				with (star[starcount])
					instance_destroy();
			}
		}
	}
	if (!reverse)
	{
		if (t >= 5 && t < 10)
			tone += 1;
		if (t >= 9)
			neotone += 1;
		else
			neotone = 0;
	}
	if (reverse && t == (15 * reversespeed))
		snd_play(snd_reverse_spare);
	if (t >= 50 && !reverse)
	{
		for (i = 0; i < starcount; i += 1)
		{
			with (star[i])
			{
				image_speed *= -reversespeed;
				hspeed = -hspeed - gravity;
			}
		}
		first_pass = false;
		reverse = true;
		t++;
	}
	if (reverse)
		t--;
	else
		t++;
	if (reverse && t < 0)
	{
		original.visible = true;
		instance_destroy();
		exit;
	}
}
