if (bustertimer >= 100 && bustertimer < 159)
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
