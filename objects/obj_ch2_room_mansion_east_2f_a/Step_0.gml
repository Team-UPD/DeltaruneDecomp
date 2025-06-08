if (global.flag[344] == 0)
{
	if (key != -1)
	{
		with (key)
			scr_depth();
		doorlocked.depth = key.depth + 10;
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
				sparkle[i] = instance_create(key.x + 50, key.y + 30, obj_afterimage);
				sparkle[i].fadeSpeed = 0.01;
				scr_darksize(sparkle[i]);
				sparkle[i].sprite_index = spr_sparestar_anim;
				sparkle[i].image_speed = 0.5;
				sparkle[i].hspeed = random_range(-3, 3);
				sparkle[i].friction = 0.05;
				sparkle[i].gravity = 0.1;
			}
		}
	}
	if (keyfloat)
	{
		key.x = lerp(key.x, doorlocked.x, 0.1);
		key.y = lerp(key.y, doorlocked.y + 50, 0.1);
		if (key.x <= (doorlocked.x + 1) && key.y <= (doorlocked.y + 51))
		{
			con = 3;
			keysparkle = false;
		}
	}
	if (con == 3)
	{
		con = -1;
		global.interact = 0;
		global.flag[344] = 1;
		explosion = instance_create(doorlocked.x + 50, doorlocked.y + 30, obj_animation);
		explosion.sprite_index = spr_realisticexplosion;
		explosion.image_xscale = 2;
		explosion.image_yscale = 2;
		dooropen = scr_dark_marker(180, 40, spr_dw_mansion_door_open);
		dooropen.depth = 899999;
		fadeplatters = false;
		snd_play(snd_badexplosion);
		instance_destroy(key);
		instance_destroy(exitcollider);
		instance_destroy(doorlocked);
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
		with (forcefield)
			instance_destroy();
		instance_destroy();
	}
	if (make_forcefield)
	{
		forcefield = scr_forcefield(410, 235, 2, 8, 1, 0);
		forcefield.depth = 80000;
		make_forcefield = false;
	}
}
