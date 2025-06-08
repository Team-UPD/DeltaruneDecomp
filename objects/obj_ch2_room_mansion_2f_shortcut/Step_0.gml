if (global.flag[346] == 0)
{
	if (i_ex(key))
	{
		with (key)
			scr_depth();
		bookcase.depth = key.depth + 10;
	}
	if (con == 1)
	{
		con = 2;
		global.interact = 1;
		key = scr_dark_marker(keyXPos, keyYPos, spr_ch2_gimmick_saucer_key);
		fadeplatters = true;
	}
	if (fadeplatters)
	{
		with (obj_saucer)
		{
			if (x < 520)
			{
				if (image_alpha > 0)
					image_alpha = lerp(image_alpha, 0, 0.2);
			}
		}
	}
	if (con == 2 && !keyfloat)
	{
		keysparkle = true;
		if (key.y != (keyYPos - 20))
		{
			key.y = lerp(key.y, keyYPos - 20, 0.1);
			if (key.y < (keyYPos - 18))
				key.y = keyYPos - 20;
		}
		else
		{
			floattimer++;
			if (floattimer == 30)
			{
				floattimer = 0;
				keyfloat = true;
			}
		}
	}
	if (keysparkle)
	{
		sparkletimer++;
		if ((sparkletimer % 4) == 0)
		{
			for (var i = 0; i < 1; i++)
			{
				sparkle[i] = scr_marker(key.x + 50, key.y + 30, spr_sparestar_anim);
				sparkle[i].image_speed = 0.5;
				sparkle[i].hspeed = random_range(-3, 3);
				sparkle[i].friction = 0.05;
				sparkle[i].gravity = 0.1;
			}
		}
	}
	if (keyfloat)
	{
		key.x = lerp(key.x, bookcase.x, 0.1);
		key.y = lerp(key.y, bookcase.y + 50, 0.1);
		if (key.x <= (bookcase.x + 1) && key.y <= (bookcase.y + 51))
		{
			con = 3;
			keysparkle = false;
		}
	}
	if (con == 3)
	{
		con = -1;
		global.interact = 0;
		global.flag[346] = 1;
		explosion = instance_create(bookcase.x + 50, bookcase.y + 30, obj_animation);
		explosion.sprite_index = spr_realisticexplosion;
		explosion.image_xscale = 2;
		explosion.image_yscale = 2;
		fadeplatters = false;
		snd_play(snd_badexplosion);
		safe_delete(key);
		safe_delete(bookcase);
		for (var i = 0; i < array_length_1d(sparkle); i++)
		{
			with (sparkle[i])
				instance_destroy();
		}
		with (obj_saucer_monty)
			instance_destroy();
		with (obj_saucer)
		{
			if (x < 520)
			{
				instance_destroy(collider);
				instance_destroy();
			}
		}
		safe_delete(forcefield_right);
		instance_destroy();
	}
	if (make_forcefield)
	{
		if (!i_ex(obj_forcefield))
		{
			forcefield_right = scr_forcefield(520, 240, 2, 8, 1, 0);
			forcefield_right.depth = 80000;
		}
		make_forcefield = false;
	}
}
