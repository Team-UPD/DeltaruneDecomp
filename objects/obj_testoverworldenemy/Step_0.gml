if (con == 0)
{
	if (global.interact == 0)
		frozen = 0;
	if (scr_outside_camera(200))
		frozen = 1;
	else
		frozen = 0;
	if (global.interact != 0)
		frozen = 1;
	if (frozen == 1)
	{
		if (hadfrozen == 0)
		{
			remspeed = speed;
			speed = 0;
			hadfrozen = 1;
		}
	}
	if (frozen == 0)
	{
		if (hadfrozen == 1)
		{
			if (speed == 0)
				speed = remspeed;
			hadfrozen = 0;
		}
	}
	if (frozen == 0)
	{
		fliptimer += 1;
		if (fliptimer >= 30)
		{
			vspeed = -vspeed;
			fliptimer = 0;
		}
	}
}
if (con == 1)
{
	sprite_index = touchsprite;
	hnka = snd_play(snd_tensionhorn);
	con = 2;
	alarm[4] = 8;
}
if (con == 3)
{
	hnkb = snd_play(snd_tensionhorn);
	snd_pitch(hnkb, 1.1);
	con = 4;
	alarm[4] = 12;
}
if (con == 5)
{
	depth = 5000;
	instance_create(0, 0, obj_battleback);
	instance_create(0, 0, obj_encounterbasic);
	con = 6;
	sprite_index = slidesprite;
	direction = point_direction(x, y, global.monstermakex[0], global.monstermakey[0]);
	speed = point_distance(x, y, global.monstermakex[0], global.monstermakey[0]) / 10;
	copyhave = 0;
	for (cc = 0; cc < 2; cc += 1)
	{
		if (global.monstertype[cc + 1] != 0)
		{
			copyhave += 1;
			if (global.monstertype[cc + 1] == global.monstertype[0])
			{
				copy[cc] = scr_dark_marker(x, y, sprite_index);
				copy[cc].direction = point_direction(x, y, global.monstermakex[cc + 1], global.monstermakey[cc + 1]);
				copy[cc].speed = point_distance(x, y, global.monstermakex[cc + 1], global.monstermakey[cc + 1]) / 10;
				copy[cc].depth = depth - 1 - cc;
			}
			else
			{
				copy[cc] = scr_dark_marker(global.monstermakex[cc + 1] + 200, global.monstermakey[cc + 1], object_get_sprite(global.monsterinstancetype[cc + 1]));
				copy[cc].cc = cc;
				copy[cc].depth = depth - 1 - cc;
				with (copy[cc])
				{
					direction = point_direction(x, y, global.monstermakex[cc + 1], global.monstermakey[cc + 1]);
					speed = point_distance(x, y, global.monstermakex[cc + 1], global.monstermakey[cc + 1]) / 10;
				}
			}
		}
	}
	alarm[4] = 10;
}
if (con == 7)
{
	if (copyhave > 0)
	{
		for (c = 0; c < copyhave; c += 1)
		{
			with (copy[c])
				speed = 0;
		}
	}
	speed = 0;
	if (instance_exists(obj_battlecontroller))
	{
		if (eraser == 1)
		{
			with (obj_chaseenemy)
				instance_destroy();
		}
		instance_destroy();
		if (copyhave > 0)
		{
			for (c = 0; c < copyhave; c += 1)
			{
				with (copy[c])
					instance_destroy();
			}
		}
	}
}
