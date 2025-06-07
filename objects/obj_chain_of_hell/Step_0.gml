if (chaincon == 0)
	chaincon = 1;
if (chaincon == 1)
{
	chaincon = 2;
	chaintimer = 0;
}
if (chaincon == 2)
{
	image_angle = direction;
	chaintimer += 1;
	if (chaintimer >= chainrate)
	{
		chain[chain_number] = instance_create(x, y, obj_chainpiece);
		chain[chain_number].image_angle = image_angle;
		chain_max += 1;
		chain_number += 1;
		chaintimer = 0;
	}
	if (path_position >= 1)
	{
		path_speed = 0;
		shakeamt = 12;
		remx = obj_heart.x;
		remy = obj_heart.y;
		remx_box = obj_growtangle.x;
		remy_box = obj_growtangle.y;
		chaincon = 2.1;
	}
	if (type == 88)
	{
		btimer += 1;
		if (btimer >= 2 && path_position <= 0.8)
		{
			cchoice = choose(-1, 0, 1);
			ychoice = lengthdir_x(36, image_angle);
			xchoice = lengthdir_y(36, image_angle);
			bul = instance_create(x + (xchoice * cchoice), y + (ychoice * cchoice), obj_collidebullet);
			bul.active = 1;
			bul.sprite_index = spr_spadebullet;
			bul.image_angle = image_angle;
			btimer = 0;
		}
	}
}
if (chaincon == 2.1)
{
	obj_heart.x = remx;
	obj_heart.y = remy;
	obj_growtangle.x = remx_box;
	obj_growtangle.y = remy_box;
	shakedir = random(360);
	xshake = lengthdir_x(shakeamt, shakedir);
	yshake = lengthdir_y(shakeamt, shakedir);
	obj_heart.x += xshake;
	obj_heart.y += yshake;
	obj_growtangle.x += xshake;
	obj_growtangle.y += yshake;
	shakeamt -= 2;
	if (shakeamt < 0)
		chaincon = 3;
}
if (chaincon == 3)
{
	chaincon = 5;
	smashtime = 1;
	bullettimer = 0;
}
if (chaincon == 5)
{
	bullettimer += 1;
	if (bullettimer >= 30)
		chaincon = 6;
}
if (chaincon == 6)
{
	path_start(mypath2, maxspeed / factor, path_action_stop, 0);
	if (instance_exists(obj_growtangle))
	{
		obj_growtangle.maxspeed = maxspeed;
		obj_growtangle.mypath2 = mypath2;
		obj_growtangle.factor = factor;
		with (obj_growtangle)
			path_start(mypath2, maxspeed / factor, path_action_stop, 0);
	}
	chain_number -= 1;
	chain_max -= 1;
	framerule = 0;
	if (chainrate == 1)
	{
		with (chain[chain_number])
			instance_destroy();
		chain_number -= 1;
		chain_max -= 1;
	}
	chaincon = 10;
}
if (chaincon == 10)
{
	if (path_position >= 0.8)
		smashtime = 0;
	if (framerule == 1)
		image_angle = direction + 180;
	framerule = 1;
	chaintimer -= 1;
	if (chaintimer <= 0)
	{
		chaintimer = chainrate * factor;
		if (chain_number >= 0)
		{
			with (chain[chain_number])
				instance_destroy();
			chain_number -= 1;
			chain_max -= 1;
		}
	}
	if (path_position >= 1)
		chaincon = 11;
}
if (chaincon == 11)
{
}
if (smashtime == 1)
{
	if (type == 0)
	{
		btimer += 1;
		if (btimer == 10)
		{
			for (i = 0; i < 1; i += 1)
			{
				regbul = instance_create(__view_get(e__VW.XView, 0) + 320 + (i * 120), __view_get(e__VW.YView, 0) - 20, obj_regularbullet);
				regbul.vspeed = 2;
				regbul.gravity = 0.2;
				regbul.sprite_index = spr_spadebullet;
				regbul.image_angle = 270;
				scr_bullet_inherit(regbul);
			}
		}
		if (btimer >= 20)
		{
			btimer = 0;
			for (i = 0; i < 2; i += 1)
			{
				regbul = instance_create(__view_get(e__VW.XView, 0) + 260 + (i * 120), __view_get(e__VW.YView, 0) - 20, obj_regularbullet);
				regbul.vspeed = 2;
				regbul.gravity = 0.2;
				regbul.sprite_index = spr_spadebullet;
				regbul.image_angle = 270;
				scr_bullet_inherit(regbul);
			}
		}
	}
}
