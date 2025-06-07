if (chaincon == 0)
{
	if (chain_noise == 0)
	{
		chainsound = snd_loop(snd_chain_extend);
		chain_noise = 1;
	}
	if (sons < 40)
	{
		sons += 1;
		son[sons] = instance_create(x, y, obj_chainpiece);
		son[sons].image_blend = c_red;
	}
	if (x <= obj_nonsolid_growtangle.x)
	{
		if (chain_noise == 1)
		{
			chain_noise = 2;
			snd_stop(chainsound);
			snd_play(snd_locker);
			snd_play(snd_screenshake);
		}
		box = obj_nonsolid_growtangle;
		x = obj_nonsolid_growtangle.x;
		y = obj_nonsolid_growtangle.y;
		speed = 0;
		chaincon = 1;
		shakeamt = 16;
		remx = obj_heart.x;
		remy = obj_heart.y;
		remx_box = obj_nonsolid_growtangle.x;
		remy_box = obj_nonsolid_growtangle.y;
		chaincon = 2.1;
		with (obj_growtangle)
			megakeep = 1;
	}
}
if (chaincon == 2.1)
{
	obj_nonsolid_growtangle.x = remx_box;
	obj_nonsolid_growtangle.y = remy_box;
	shakedir = random(360);
	xshake = lengthdir_x(shakeamt, shakedir);
	yshake = lengthdir_y(shakeamt, shakedir);
	obj_nonsolid_growtangle.x += xshake;
	obj_nonsolid_growtangle.y += yshake;
	shakeamt -= 2;
	if (shakeamt <= 0)
	{
		chaincon = 2.2;
		obj_nonsolid_growtangle.x = remx_box;
		obj_nonsolid_growtangle.y = remy_box;
	}
}
if (chaincon == 2.2)
{
	xx = __view_get(e__VW.XView, 0) + 320;
	yy = __view_get(e__VW.YView, 0) + 160;
	yy_2 = __view_get(e__VW.YView, 0);
	chaincon = 2.3;
	if (type >= 1)
	{
		spike = instance_create(x, y, obj_regularbullet_permanent);
		scr_bullet_inherit(spike);
		spike.image_speed = 0;
		spike.active = 0;
		with (obj_regularbullet)
			basealpha = 0;
		spike.image_alpha = 0;
		spike.mask_index = box.sprite_index;
		spike.sprite_index = spr_battlebg_spikes;
		spikemake = 1;
		spike.image_xscale = box.image_xscale * 0.96;
		spike.image_yscale = box.image_yscale * 0.96;
	}
	if (type <= 1)
	{
		for (i = 0; i < 5; i += 1)
		{
			for (j = 0; j < 5; j += 1)
			{
				bul[i][j] = instance_create((xx - 150) + (i * 70), yy_2 + 20 + (j * 70), obj_regularbullet_permanent);
				bul[i][j].sprite_index = spr_spadebullet;
				bul[i][j].basealpha = 0;
				bul[i][j].active = 0;
				bul[i][j].image_angle = 90;
				bul[i][j].image_xscale = 0.5;
				bul[i][j].image_yscale = 0.5;
				bul[i][j].neveractive = 1;
				scr_bullet_inherit(bul[i][j]);
			}
		}
		bulletpoint = 1;
	}
}
if (chaincon == 2.3)
{
	with (obj_regularbullet)
		basealpha += 0.04;
	if (spikemake == 1)
	{
		box.image_xscale += 0.005;
		box.image_yscale += 0.005;
		spike.image_xscale += 0.005;
		spike.image_yscale += 0.005;
		if (type == 1)
		{
			box.image_xscale += 0.01;
			box.image_yscale += 0.01;
			spike.image_xscale += 0.01;
			spike.image_yscale += 0.01;
		}
	}
	gotimer += 1;
	if (gotimer >= 30)
	{
		chaincon = 3;
		gotimer = 0;
		xx = __view_get(e__VW.XView, 0) + 320;
		yy = __view_get(e__VW.YView, 0) + 160;
		pointx = xx;
		pointy = yy;
		with (obj_regularbullet)
			active = 1;
	}
}
if (chaincon == 3)
{
	if (movecon == 0 && ended == 0)
	{
		if (mytimer > (maxtimer - 10))
			ended = 1;
	}
	if (movecon == 0 && ended == 0)
	{
		speed = 0;
		pointdist = 0;
		mind = 100;
		maxd = 130;
		if (type == 0)
		{
			maxd = 110;
			movetime = 30;
		}
		if (type >= 1)
			maxd = 140;
		if (type == 3 || type == 4)
			maxd = 120;
		if (type == 5)
		{
			maxd = 130;
			movetime = 30;
		}
		while (pointdist < mind || pointdist > maxd)
		{
			pointx = (xx + random(140)) - random(140);
			pointy = (yy + random(120)) - random(120);
			pointdist = point_distance(x, y, pointx, pointy);
		}
		target = instance_create(pointx, pointy, obj_chainpiece);
		target.sprite_index = spr_heartoutline;
		target.depth = 30;
		move_towards_point(pointx, pointy, pointdist / movetime);
		movetimer = 0;
		movecon = 1;
		chainnoise = snd_loop(snd_chain_extend);
	}
	if (movecon == 1 && ended == 0)
	{
		movetimer += 1;
		if (movetimer > movetime)
		{
			x = pointx;
			y = pointy;
			movecon = 2;
			speed = 0;
			movetimer = 0;
		}
	}
	if (movecon == 2 && ended == 0)
	{
		maxmove = 20;
		if (type == 1)
			maxmove = 22;
		if (type == 2)
			maxmove = 16;
		if (type == 3)
			maxmove = 7;
		if (type == 4)
			maxmove = 3;
		if (type == 5)
			maxmove = 22;
		movetimer += 1;
		if (movetimer >= maxmove)
		{
			with (target)
				instance_destroy();
			movecon = 0;
			snd_stop(chainnoise);
		}
	}
}
if (chaincon >= 0)
{
	kingx[0] = x;
	kingy[0] = y;
	for (i = 40; i > 0; i -= 1)
	{
		kingx[i] = kingx[i - 1];
		kingy[i] = kingy[i - 1];
	}
	for (i = 0; i <= sons; i += 1)
	{
		son[i].x = kingx[i];
		son[i].y = kingy[i];
		son[i].image_angle = direction;
	}
	if (chaincon >= 3)
	{
		obj_nonsolid_growtangle.x = kingx[sons];
		obj_nonsolid_growtangle.y = kingy[sons];
	}
}
if (bulletpoint == 1)
{
	with (obj_regularbullet)
	{
		if (sprite_index == spr_spadebullet)
		{
			image_angle = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
			pointdist = point_distance(x, y, obj_heart.x + 8, obj_heart.y + 8);
			if (pointdist > 80)
				neveractive -= 0.02;
			if (neveractive > 0)
				active = 0;
			else
				active = 1;
			alphafactor = 0.7;
			activefactor = 1 - neveractive;
			if (activefactor > 1)
				activefactor = 1;
			if (pointdist > 80)
			{
				alphafactor = 1.7 - ((pointdist * 1) / 80);
				if (alphafactor < 0)
					alphafactor = 0;
			}
			image_alpha = (0.3 + alphafactor) * basealpha * activefactor;
			if (image_xscale < 0.68 && obj_finalchain.ended == 0)
			{
				image_xscale += 0.0005;
				image_yscale += 0.0005;
			}
			else
			{
				active = 0;
				basealpha -= 0.1;
				obj_finalchain.ended = 1;
			}
		}
	}
}
if (spikemake == 1)
{
	spike.image_alpha += 0.04;
	spike.x = box.x;
	spike.y = box.y;
	if (ended == 1)
	{
		if (spike.image_alpha >= 1)
			spike.image_alpha = 1;
		spike.image_alpha -= 0.14;
	}
}
if (ended == 1)
{
	endtimer += 1;
	if (endtimer >= 10)
	{
		snd_stop(snd_chain_extend);
		with (obj_chainpiece)
			instance_destroy();
		with (obj_regularbullet)
			instance_destroy();
		with (obj_chainking)
			instance_destroy();
		global.turntimer = 3;
		instance_destroy();
	}
}
if (spikemake == 1)
{
	if (instance_exists(spike))
	{
		if (spike.grazed == 1)
		{
			if (timerbonus == 0)
			{
				mytimer += 2;
				timerbonus = 1;
			}
			grazetimer += 1;
			if (grazetimer >= 15)
			{
				timerbonus = 0;
				grazetimer = 0;
				spike.grazed = 0;
			}
		}
	}
}
mytimer += 1;
image_angle = direction;
