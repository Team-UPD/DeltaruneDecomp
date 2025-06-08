for (i = 0; i < 6; i += 1)
{
	x1[i] = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[i] + (obj_spamton_neo_enemy.partxoff[i] / 1.2) + (i * 5) + (sin(obj_spamton_neo_enemy.partsiner[i] / 30) * 2);
	y1[i] = ((obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[i]) - 10) + obj_spamton_neo_enemy.partyoff[i];
}
if (con == 0)
{
	timer++;
	for (i = 0; i < 6; i += 1)
		x2[i] = lerp(x2[i], x2_target[i], timer / 20);
	if (timer == 20)
	{
		con = 1;
		for (i = 0; i < 6; i += 1)
		{
			if (weakened[i] != 0 && visiblevine[i] == 1)
			{
				target = instance_create(x, y, obj_sneo_throwtarget);
				target.maker = id;
				target.x1 = x1[i];
				target.x2 = x2[i];
				target.y1 = y1[i];
				target.y2 = y2[i];
				target.vineid = i;
				with (target)
				{
					path = path_add();
					path_set_kind(path, 0);
					path_set_closed(path, false);
					path_add_point(path, x1, y1, 100);
					path_add_point(path, x2 - 3, y2, 100);
					path_start(path, 4, path_action_stop, true);
				}
				target.image_angle = point_direction(x1[i], y1[i], x2[i], y2[i]) + 282;
			}
		}
		timer = 0;
	}
}
if (con == 2)
{
	timer++;
	if (timer < 11)
	{
		for (i = 0; i < 6; i += 1)
			x2[i] = lerp(x2[i], x2_origin[i], timer / 10);
	}
	if (timer == 20)
	{
		for (i = 0; i < 6; i += 1)
		{
			if (visiblevine[i] == 1)
				obj_spamton_neo_enemy.partvisible[i] = 1;
		}
		instance_destroy();
		if (obj_spamton_neo_enemy.vinebgcount > 0)
		{
			for (i = 0; i < 6; i += 1)
			{
				if (obj_spamton_neo_enemy.partvisible[i] == 0)
				{
					obj_spamton_neo_enemy.vineid = i;
					vine = instance_create(x, y, obj_sneo_vine_transition);
				}
			}
		}
	}
}
