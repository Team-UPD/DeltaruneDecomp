turnspassed++;
alarm[0] = 1;
c = 0;
var b = 1;
if (global.flag[34] == 0)
{
	if (global.hp[1] < 1)
		b = 0;
	if (global.hp[2] < 1)
		b = 0;
	if (global.hp[3] < 1)
		b = 0;
}
if (b == 0)
{
}
if (b == 1)
{
	global.typer = 50;
	if (instance_exists(obj_sweet_enemy) && obj_sweet_enemy.dancing == 1 && obj_sweet_enemy.danceCounter == 1)
	{
		if (happyfeetscene == 1)
		{
			with (obj_sweet_enemy)
			{
			}
		}
		else
		{
			alarm[2] = 30;
			alarm[0] = -1;
			skiptext = 1;
			with (obj_sweet_enemy)
			{
				hurtstate2 = 1;
				instance_create(x + (sprite_width / 2), y - 12, obj_excblcon);
			}
		}
	}
	if (instance_exists(obj_hatguy_enemy) && obj_hatguy_enemy.dancing == 1 && obj_hatguy_enemy.danceCounter == 1)
	{
		if (happyfeetscene == 1)
		{
			with (obj_hatguy_enemy)
			{
			}
		}
		else
		{
			alarm[2] = 30;
			alarm[0] = -1;
			skiptext = 1;
			with (obj_hatguy_enemy)
			{
				hurtstate2 = 1;
				instance_create(x + (sprite_width / 2), y - 12, obj_excblcon);
			}
		}
	}
	if (instance_exists(obj_kk_enemy) && obj_kk_enemy.dancing == 1 && obj_kk_enemy.danceCounter == 1)
	{
		if (happyfeetscene == 1)
		{
			with (obj_kk_enemy)
			{
			}
		}
		else
		{
			alarm[2] = 30;
			alarm[0] = -1;
			skiptext = 1;
			with (obj_kk_enemy)
			{
				hurtstate2 = 1;
				instance_create(x + (sprite_width / 2) + 30, y - 12, obj_excblcon);
			}
		}
	}
	with (obj_sweet_enemy)
	{
		if (dancing == 1)
		{
			danceCounter--;
			if (danceCounter <= 0)
				dancing = 0;
		}
	}
	with (obj_hatguy_enemy)
	{
		if (dancing == 1)
		{
			danceCounter--;
			if (danceCounter <= 0)
				dancing = 0;
		}
	}
	with (obj_kk_enemy)
	{
		if (dancing == 1)
		{
			danceCounter--;
			if (danceCounter <= 0)
				dancing = 0;
		}
	}
	if (obj_musical_controller.ralseiportrait == 0)
	{
		with (obj_kk_enemy)
			event_user(1);
	}
}
