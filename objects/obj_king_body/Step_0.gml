if (keyboard_check(vk_enter) && active == 1 && scr_debug())
{
	attackno += 1;
	active = 0;
	if (attackno <= 11)
		attack = attackno;
	else
		attack = choose(7, 8, 9, 10, 11);
	if (attack == 1)
	{
		box = instance_create(xx + 340, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 21;
		timeruse = 1;
		faketimermax = 190;
		faketimer = 0;
	}
	if (attack == 2)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 1;
		chainking.subtype = 0;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		scr_moveheart();
	}
	if (attack == 3)
	{
		box = instance_create(xx + 340, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 34;
		timeruse = 1;
		faketimermax = 200;
		faketimer = 0;
	}
	if (attack == 4)
	{
		box = instance_create(xx + 310, yy + 165, obj_growtangle);
		box.sprite_index = spr_battlebg_2;
		scr_moveheart();
		damagebox = instance_create(box.x, box.y, obj_growtangle_bouncer);
		damagebox.type = 0;
	}
	if (attack == 5)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 1;
		chainking.subtype = 1;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		scr_moveheart();
	}
	if (attack == 6)
	{
		visible = 0;
		timeruse = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 2;
		chainking.subtype = 2;
		box = instance_create(xx + 205, yy + 170, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_1;
		scr_moveheart();
	}
	if (attack == 7)
	{
		box = instance_create(xx + 340, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 35;
		timeruse = 1;
		faketimermax = 220;
		faketimer = 0;
	}
	if (attack == 8)
	{
		box = instance_create(xx + 310, yy + 165, obj_growtangle);
		box.sprite_index = spr_battlebg_2;
		scr_moveheart();
		damagebox = instance_create(box.x, box.y, obj_growtangle_bouncer);
		damagebox.type = 3;
	}
	if (attack == 9)
	{
		box = instance_create(xx + 340, yy + 170, obj_growtangle);
		scr_moveheart();
		dd = instance_create(0, 0, obj_dbulletcontroller);
		dd.type = 23;
		timeruse = 1;
		faketimermax = 190;
		faketimer = 0;
	}
	if (attack == 10)
	{
		visible = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 1;
		chainking.subtype = 2;
		box = instance_create(xx + 200, yy + 175, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_wavechain;
		scr_moveheart();
	}
	if (attack == 11)
	{
		visible = 0;
		timeruse = 0;
		chainking = instance_create(x, y, obj_chainking);
		chainking.type = 2;
		chainking.subtype = 1;
		box = instance_create(xx + 205, yy + 170, obj_nonsolid_growtangle);
		box.sprite_index = spr_battlebg_1;
		scr_moveheart();
	}
}
if (timeruse == 1)
{
	faketimer += 1;
	if (faketimer >= faketimermax)
	{
		with (obj_bulletparent)
			instance_destroy();
		with (obj_dbulletcontroller)
			instance_destroy();
		with (obj_growtangle)
			growcon = 3;
		with (obj_heart)
			instance_destroy();
		active = 1;
		timeruse = 0;
		faketimer = 0;
	}
}
