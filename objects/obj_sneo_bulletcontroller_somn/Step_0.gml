if (init == 0)
{
	sameattack = scr_monsterattacknamecount(global.monsterattackname[creator]);
	if (sameattack > 1)
	{
		if (creator == 2)
			sameattacker = sameattack - 1;
		else if (creator == 1)
			sameattacker = (sameattack == 3) ? creator : (global.monsterattackname[0] == global.monsterattackname[1]);
	}
	if (instance_exists(obj_growtangle))
	{
		miny = obj_growtangle.y - (obj_growtangle.sprite_height / 2);
		maxy = obj_growtangle.y + (obj_growtangle.sprite_height / 2);
		minx = obj_growtangle.x - (obj_growtangle.sprite_width / 2);
		maxx = obj_growtangle.x + (obj_growtangle.sprite_width / 2);
	}
	init = 1;
}
btimer += 1;
if (type == 5)
{
	if (btimer == 100)
	{
		instance_create(obj_spamton_neo_enemy.x + 40, obj_spamton_neo_enemy.y + 80, obj_sneo_heartattack_intro);
		instance_create(x, y, obj_sneo_sine_hand_controller);
		global.turntimer = 750;
	}
	if (!instance_exists(obj_sneo_heartattack_intro) && global.turntimer > 1)
		global.turntimer = 1;
}
