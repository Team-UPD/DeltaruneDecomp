if (attacked == 0)
{
	turns += 1;
	chaosdance += 1;
	if (chaosdance >= 9)
		chaosdance = 0;
	remat = global.monsterat[myself];
	global.monsterat[myself] *= pfactor;
	if (jattack == 0)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 70;
		dc.target = mytarget;
		dc.grazepoints = 2;
		dc.damage = global.monsterat[myself] * 5;
		with (body)
			condition = 2;
	}
	if (jattack == 1)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.grazepoints = 3;
		dc.type = 65;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 5;
	}
	if (jattack == 2)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 49;
		dc.target = 3;
		dc.damage = global.monsterat[myself] * 4;
		dc.grazepoints = 3;
		with (body)
			condition = 2;
	}
	if (jattack == 3)
	{
		if (body.condition < 4)
			body.condition = 5;
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.grazepoints = 3;
		dc.type = 75;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 6;
	}
	if (jattack == 4)
	{
		snd_play(scr_84_get_sound("snd_joker_anything"));
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 62;
		dc.target = mytarget;
		dc.inv = 20;
		dc.damage = global.monsterat[myself] * 5;
		dc.grazepoints = 2;
	}
	if (jattack == 5)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.grazepoints = 3;
		dc.type = 50;
		dc.target = 3;
		dc.damage = global.monsterat[myself] * 4;
		global.turntimer = 300;
		with (body)
			condition = 2;
	}
	if (jattack == 6)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 73;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 5;
	}
	if (jattack == 7)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 68;
		dc.target = mytarget;
		dc.grazepoints = 2;
		dc.damage = global.monsterat[myself] * 5;
	}
	if (jattack == 8)
	{
		snd_play(scr_84_get_sound("snd_joker_anything"));
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.inv = 20;
		dc.type = 61;
		dc.target = mytarget;
		dc.grazepoints = 3;
		dc.damage = global.monsterat[myself] * 5;
		global.turntimer = 240;
	}
	if (jattack == 9)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 48;
		dc.target = 3;
		dc.damage = global.monsterat[myself] * 4;
		dc.grazepoints = 4;
		global.turntimer = 270;
		with (body)
			condition = 2;
	}
	if (jattack == 10)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 72;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 5;
	}
	if (jattack == 11)
	{
		if (body.condition < 4)
			body.condition = 5;
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 76;
		dc.target = mytarget;
		dc.grazepoints = 3;
		dc.damage = global.monsterat[myself] * 6;
	}
	if (jattack == 12)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 71;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 5;
		dc.grazepoints = 2;
		with (body)
			condition = 2;
	}
	if (jattack == 13)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 46;
		dc.target = 3;
		dc.damage = global.monsterat[myself] * 4;
		dc.grazepoints = 4;
		global.turntimer = 330;
		with (body)
			condition = 2;
	}
	if (jattack == 14)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 74;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 4;
	}
	if (jattack == 15)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 77;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 4;
		global.turntimer = 1500;
		if (body.condition < 4)
			body.condition = 5;
	}
	if (jattack == 99)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 47;
		dc.target = 3;
		dc.damage = global.monsterat[myself] * 4;
		global.turntimer = 300;
		with (body)
			condition = 2;
	}
	if (jattack == 999)
	{
		dc = instance_create(x, y, obj_dbulletcontroller);
		dc.type = 25;
		dc.target = mytarget;
		dc.damage = global.monsterat[myself] * 4;
		global.turntimer = 300;
	}
	with (obj_dbulletcontroller)
		joker = 1;
	pfactor = 1;
	global.monsterat[myself] = remat;
	attacked = 1;
}
