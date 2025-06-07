if (attacked == 0)
{
	global.invc = reminvc;
	if (attack == 1)
	{
		box = instance_create(xx + 320, yy + 170, obj_growtangle);
		mh = scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 21;
		dd.damage = global.monsterat[myself] * 5 * tempattack;
		dd.target = mytarget;
		dd.side = 1;
		dd.btimer = -8;
		global.turntimer = 190;
	}
	if (attack == 2)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 1;
		chainking.subtype = 0;
		chainking.grazepoints = 6;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
		chainking.damage = global.monsterat[myself] * 4 * tempattack;
		chainking.target = 3;
		global.turntimer = 999;
	}
	if (attack == 3)
	{
		box = instance_create(xx + 320, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 34;
		dd.damage = global.monsterat[myself] * 5 * tempattack;
		dd.target = mytarget;
		dd.btimer = 10;
		global.turntimer = 210;
	}
	if (attack == 4)
	{
		global.invc *= 1.5;
		box = instance_create(xx + 310, yy + 165, obj_growtangle);
		box.sprite_index = spr_battlebg_2;
		box.keep = 1;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
		damagebox = instance_create(box.x, box.y, obj_growtangle_bouncer);
		damagebox.type = 5;
		damagebox.damage = global.monsterat[myself] * 5 * tempattack;
		damagebox.target = mytarget;
		global.turntimer = 999;
	}
	if (attack == 5)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.grazepoints = 6;
		chainking.type = 1;
		chainking.subtype = 1;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		chainking.damage = global.monsterat[myself] * 4 * tempattack;
		chainking.target = 3;
		global.turntimer = 999;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
	}
	if (attack == 6)
	{
		global.invc *= 1.5;
		visible = 0;
		timeruse = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 2;
		chainking.subtype = 5;
		if (chain_dragging >= 1)
			chainking.subtype = 2;
		chain_dragging += 1;
		box = instance_create(xx + 205, yy + 170, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_1;
		chainking.damage = global.monsterat[myself] * 5 * tempattack;
		chainking.target = mytarget;
		global.turntimer = 999;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
	}
	if (attack == 7)
	{
		box = instance_create(xx + 320, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 35;
		global.turntimer = 220;
		dd.damage = global.monsterat[myself] * 5 * tempattack;
		dd.target = mytarget;
		dd.btimer = 10;
	}
	if (attack == 8)
	{
		global.invc *= 1.5;
		box = instance_create(xx + 310, yy + 165, obj_growtangle);
		box.sprite_index = spr_battlebg_2;
		box.keep = 1;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
		damagebox = instance_create(box.x, box.y, obj_growtangle_bouncer);
		damagebox.type = 3;
		damagebox.damage = global.monsterat[myself] * 5 * tempattack;
		damagebox.target = mytarget;
		global.turntimer = 999;
	}
	if (attack == 9)
	{
		box = instance_create(xx + 320, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 23;
		global.turntimer = 200;
		dd.damage = global.monsterat[myself] * 5 * tempattack;
		dd.target = mytarget;
		dd.btimer = -8;
		dd.side = 1;
	}
	if (attack == 10)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.grazepoints = 6;
		chainking.type = 1;
		chainking.subtype = 2;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
		chainking.damage = global.monsterat[myself] * 4 * tempattack;
		chainking.target = 3;
		global.turntimer = 999;
	}
	if (attack == 11)
	{
		global.invc *= 1.5;
		visible = 0;
		timeruse = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 2;
		chainking.subtype = 1;
		box = instance_create(xx + 205, yy + 170, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_1;
		chainking.damage = global.monsterat[myself] * 3 * tempattack;
		chainking.target = 3;
		global.turntimer = 999;
		hm = instance_create(box.x - 10, box.y - 10, obj_heartmarker);
		scr_moveheart();
		with (hm)
			instance_destroy();
	}
	tempattack = 1;
	attacked = 1;
}
