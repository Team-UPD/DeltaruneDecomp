if (i_ex(enemy1))
{
	with (enemy1)
		image_speed = 0.25;
}
if (i_ex(enemy2))
{
	with (enemy2)
		image_speed = 0.25;
}
if (i_ex(enemy2))
{
	with (enemy3)
		image_speed = 0.25;
}
if (i_ex(enemy2))
{
	with (enemy2)
	{
		if (direction == 0 || direction == 270)
			facing = 1;
		if (direction == 180 || direction == 90)
			facing = 0;
	}
}
if (triggered == 1)
{
	if (obj_controller_dw_mansion_east_1f_a.topleftspawned == 0)
	{
		obj_controller_dw_mansion_east_1f_a.topleftspawned = 1;
		obj_controller_dw_mansion_east_1f_a.enemy1 = instance_create(-140, 136, obj_chaseenemy);
		with (obj_controller_dw_mansion_east_1f_a.enemy1)
		{
			myencounter = 64;
			sprite_index = spr_npc_swatchling_sweep;
			touchsprite = spr_swatchling_hurt;
			radius = 10000;
			ignoresolid = 1;
			alertcon = 0;
			eraser = 1;
		}
		obj_controller_dw_mansion_east_1f_a.enemy3 = instance_create(1441, 550, obj_chaseenemy);
		with (obj_controller_dw_mansion_east_1f_a.enemy3)
		{
			myencounter = 64;
			sprite_index = spr_npc_swatchling_sweep;
			touchsprite = spr_swatchling_hurt;
			radius = 10000;
			ignoresolid = 0;
			alertcon = 0;
			eraser = 1;
		}
		with (obj_controller_dw_mansion_east_1f_a.enemy2)
		{
			path_end();
			myencounter = 64;
			sprite_index = spr_npc_swatchling_sweep;
			touchsprite = spr_swatchling_hurt;
			radius = 10000;
			ignoresolid = 0;
			alertcon = 0;
		}
	}
}
if (instance_exists(obj_battleback))
{
	topleftspawned = 1;
	botRightspawned = 1;
	if (susiebreak == 0)
	{
		susiebreak = instance_create(x, y, obj_caterpillarchara_susiebreakspots);
		susiebreak.susiestart = 1;
	}
}
if (i_ex(enemy1))
{
	with (enemy1)
	{
		if (x < 220)
			ignoresolid = 1;
		else
			ignoresolid = 0;
	}
}
if (i_ex(enemy3))
{
	with (enemy3)
	{
		if (x > 1240)
			ignoresolid = 1;
		else
			ignoresolid = 0;
	}
}
