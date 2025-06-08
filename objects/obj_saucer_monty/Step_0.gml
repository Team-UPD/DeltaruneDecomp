scr_depth();
if (con == 0 && myinteract == 1)
{
	global.interact = 1;
	myinteract = 0;
	con = 1;
	visible = 0;
	if (i_ex(collider))
		instance_destroy(collider);
	if (room == room_dw_mansion_east_2f_a)
	{
		with (obj_ch2_room_mansion_east_2f_a)
		{
			if (forcefield == -4)
				make_forcefield = true;
		}
	}
	if (room == room_dw_mansion_east_2f_shortcut)
	{
		with (obj_ch2_room_mansion_2f_shortcut)
		{
			if (forcefield == -4)
				make_forcefield = true;
		}
	}
}
if (con == 1)
{
	if (boss == 1)
		snd_play(snd_spearappear);
	radius = 0;
	keysaucer = floor(random(saucercount));
	for (i = 0; i < saucercount; i += 1)
	{
		saucer[i] = instance_create(x, y, obj_saucer);
		saucer[i].montyboss = 2;
		saucer[i].image_alpha = 0.7;
		saucer[i].mode = 1;
		if (i == keysaucer)
		{
			saucer[i].content = 3;
			saucer[i].contentsprite = spr_ch2_gimmick_saucer_key;
		}
		else
		{
			saucer[i].content = 2;
			saucer[i].contentsprite = spr_ch2_gimmick_saucer_bomb;
		}
		saucerangle[i] = 90 + ((360 / saucercount) * i);
	}
	saucer[0].montyboss = 1;
	con = 2;
}
if (con == 2)
{
	radius += 2;
	for (i = 0; i < saucercount; i += 1)
	{
		saucer[i].x = x + lengthdir_x(radius, saucerangle[i]);
		saucer[i].y = y + lengthdir_y(radius, saucerangle[i]);
	}
	obj_mainchara.x = lerp(obj_mainchara.x, (x + 50) - 19, radius / 200);
	obj_mainchara.y = lerp(obj_mainchara.y, (y + 40) - 38, radius / 200);
	if (radius >= 100)
	{
		con = 3;
		for (i = 0; i < saucercount; i += 1)
			saucer[i].image_alpha = 1;
		timer = 0;
	}
}
if (con == 3)
{
	timer += (1 * multiplier);
	if (timer == 30)
	{
		for (i = 0; i < saucercount; i += 1)
		{
			with (saucer[i])
				myinteract = 1;
		}
	}
	if (timer >= 100)
	{
		if (boss == 1)
			loop = snd_loop(snd_chain_wave);
		con = 4;
		timer = 0;
		maxsiner = 960 + ((floor(random(6)) * saucercount) / 360);
		siner = 0;
		sinerspeed = 1;
	}
}
if (con == 4)
{
	if (boss == 1)
		snd_pitch(loop, (sin(siner / 8) * 0.5) + 1);
	siner += (sinerspeed * multiplier);
	if (siner <= (maxsiner - 90))
	{
		if (sinerspeed <= 10)
			sinerspeed += (0.25 * multiplier);
	}
	if (siner >= (maxsiner - 90))
	{
		if (sinerspeed >= 5)
			sinerspeed -= (0.5 * multiplier);
	}
	if (siner >= maxsiner)
	{
		siner = maxsiner;
		con = 5;
		if (boss == 1)
			snd_stop(loop);
		with (obj_mainchara)
			global.interact = 0;
		for (i = 0; i < saucercount; i += 1)
			saucer[i].mode = 3;
		with (obj_saucer)
		{
			collider.x = x + 8;
			collider.y = y + 22;
		}
	}
	for (i = 0; i < saucercount; i += 1)
	{
		saucer[i].x = x + lengthdir_x(radius, saucerangle[i] + siner);
		saucer[i].y = y + lengthdir_y(radius, saucerangle[i] + siner);
	}
}
if (con == 6)
{
	obj_mainchara.battlemode = 1;
	if (i_ex(saucer[0]))
		timer = 0;
	if (!i_ex(saucer[0]))
	{
		timer += (1 * multiplier);
		if (timer >= 120)
			obj_mainchara.battlemode = 0;
		if (timer >= 150)
		{
			krischeck = collision_rectangle(bbox_left - 6, bbox_top - 6, bbox_right + 6, bbox_bottom + 6, obj_mainchara, true, false);
			if (!place_meeting(x, y, obj_mainchara))
			{
				shadow = instance_create(x, y, obj_marker);
				shadow.sprite_index = sprite_index;
				shadow.image_index = 0;
				shadow.image_speed = 0;
				shadow.image_xscale = 2;
				shadow.image_yscale = 2;
				shadow.image_blend = c_black;
				shadow.depth = 900000;
				fakeblock = instance_create(x, y, obj_soliddark);
				fakeblock.sprite_index = sprite_index;
				fakeblock.image_index = 0;
				fakeblock.image_speed = 0;
				fakeblock.image_xscale = 2;
				fakeblock.image_yscale = 2;
				fakeblock.image_blend = c_red;
				fakeblock.depth = 900000;
				fakeme = instance_create(x, -100, obj_marker);
				fakeme.sprite_index = sprite_index;
				fakeme.image_index = 0;
				fakeme.image_speed = 0;
				fakeme.image_xscale = 2;
				fakeme.image_yscale = 2;
				fakeme.gravity = 1;
				con = 7;
			}
		}
	}
}
if (con == 7)
{
	if (fakeme.y >= (y - 15))
	{
		with (fakeme)
			instance_destroy();
		with (shadow)
			instance_destroy();
		with (fakeblock)
			instance_destroy();
		visible = 1;
		con = 0;
		timer = 0;
		myinteract = 0;
		collider = instance_create(x + 8, y + 22, obj_solidblock);
		collider.image_xscale = 4.2;
		collider.image_yscale = 3;
	}
}
