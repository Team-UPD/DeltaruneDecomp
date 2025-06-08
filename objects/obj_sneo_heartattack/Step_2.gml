if (difficulty > 0)
{
	bustertimer++;
	flyingheadtimer++;
}
if (difficulty == 1)
{
	if (bustertimer == 40)
	{
		with (obj_spamton_neo_enemy)
		{
			partmode = 3;
			armangle = point_direction(partxoff[1], partyoff[1], obj_heart.x, obj_heart.y);
			aimmode = 2;
			armaim = armangle;
			d = instance_create(x, y, obj_sneo_biglaser);
			d.direction = armangle - 90;
			d.image_angle = armangle - 90;
			d.depth += 1;
			d.damage = damage * 2;
		}
	}
	if (bustertimer >= 40 && bustertimer < 90)
		aim = 1;
	else
		aim = 0;
	if (bustertimer == 90)
	{
		with (obj_sneo_biglaser)
			instance_destroy();
		aimmode = 0;
		obj_spamton_neo_enemy.partmode = 4;
		with (obj_spamton_neo_enemy)
		{
			armendx = x + partx[1] + partxoff[1] + lengthdir_x(armlength, partrot[1] - 93);
			armendy = y + party[1] + partyoff[1] + lengthdir_y(armlength, partrot[1] - 93);
			shot = instance_create(armendx, armendy, obj_spamtonshot);
		}
	}
	if (bustertimer > 90)
	{
		bustertimer = 28;
		if (global.turntimer < 100)
		{
			obj_spamton_neo_enemy.partmode = 1;
			bustertimer = 999;
		}
	}
	with (obj_spamtonshot)
		dontexplode = 1;
}
if (difficulty == 2)
{
	if (bustertimer == 21)
	{
		with (obj_spamton_neo_enemy)
		{
			partmode = 3;
			armangle = point_direction(partxoff[1], partyoff[1], obj_heart.x, obj_heart.y);
			aimmode = 2;
			armaim = armangle;
			d = instance_create(x, y, obj_sneo_biglaser);
			d.direction = armangle - 90;
			d.image_angle = armangle - 90;
			d.depth += 1;
			d.damage = damage * 2;
		}
	}
	if (bustertimer >= 21 && bustertimer < 71)
		aim = 1;
	else
		aim = 0;
	if (bustertimer == 71)
	{
		with (obj_sneo_biglaser)
			instance_destroy();
		aimmode = 0;
		obj_spamton_neo_enemy.partmode = 4;
		with (obj_spamton_neo_enemy)
		{
			armendx = x + partx[1] + partxoff[1] + lengthdir_x(armlength, partrot[1] - 93);
			armendy = y + party[1] + partyoff[1] + lengthdir_y(armlength, partrot[1] - 93);
			shot = instance_create(armendx, armendy, obj_spamtonshot);
		}
	}
	if (bustertimer > 71)
	{
		bustertimer = -70;
		if (global.turntimer < 100)
		{
			obj_spamton_neo_enemy.partmode = 1;
			bustertimer = 999;
		}
	}
	with (obj_spamtonshot)
		dontexplode = 1;
	if (flyingheadtimer == 60)
		instance_create(x, y, obj_sneo_guymaker);
	if (flyingheadtimer == 90)
	{
		with (obj_sneo_guymaker)
			instance_destroy();
		flyingheadtimer = -90;
	}
}
if (aim == 1)
{
	with (obj_spamton_neo_enemy)
	{
		if (instance_exists(obj_heart))
		{
			armangle = point_direction(x + partxoff[1], y + partyoff[1], obj_heart.x + 8, obj_heart.y + 8) + 90;
			aimmode = 1;
			armaim = armangle;
		}
	}
	with (obj_sneo_biglaser)
	{
		x = obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[1] + obj_spamton_neo_enemy.partxoff[1] + lengthdir_x(obj_spamton_neo_enemy.armlength, obj_spamton_neo_enemy.partrot[1] - 93);
		y = obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[1] + obj_spamton_neo_enemy.partyoff[1] + lengthdir_y(obj_spamton_neo_enemy.armlength, obj_spamton_neo_enemy.partrot[1] - 93);
	}
}
