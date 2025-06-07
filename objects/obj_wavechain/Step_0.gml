if (chaincon == 0)
{
	if (chain_noise == 0)
	{
		chain_noise = 1;
		chainsnd = snd_loop(snd_chain_extend);
	}
	sons += 1;
	son[sons] = instance_create(x, y, obj_chainpiece);
	if (x <= obj_nonsolid_growtangle.x)
	{
		snd_stop(chainsnd);
		snd_play(snd_locker);
		snd_play(snd_screenshake);
		speed = 0;
		chaincon = 1;
		shakeamt = 12;
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
	obj_heart.x = remx;
	obj_heart.y = remy;
	obj_nonsolid_growtangle.x = remx_box;
	obj_nonsolid_growtangle.y = remy_box;
	shakedir = random(360);
	xshake = lengthdir_x(shakeamt, shakedir);
	yshake = lengthdir_y(shakeamt, shakedir);
	obj_heart.x += xshake;
	obj_heart.y += yshake;
	obj_nonsolid_growtangle.x += xshake;
	obj_nonsolid_growtangle.y += yshake;
	shakeamt -= 2;
	if (shakeamt < 0)
		chaincon = 3;
}
if (chaincon == 3)
{
	if (chain_noise == 1)
	{
		chain_noise = 2;
		wavenoise = snd_loop(snd_chain_wave);
	}
	if (type == 0)
	{
		siner += 1;
		obj_chainking.y = initkingy + (sin(siner / 12) * 80);
		btimer += 1;
		if (btimer >= 20)
		{
			regbul = instance_create(__view_get(e__VW.XView, 0) - 20, initboxy, obj_regularbullet);
			regbul.sprite_index = spr_spadebullet;
			regbul.hspeed = 4;
			scr_bullet_inherit(regbul);
			btimer = 0;
		}
		if (chain_noise == 2)
			snd_pitch(wavenoise, 0.8 - (sin(siner / 12) / 2));
	}
	if (type == 1)
	{
		siner += 1;
		obj_chainking.y = initkingy + (sin(siner / 10) * 80);
		btimer += 1;
		if (btimer >= 18)
		{
			regbul = instance_create(__view_get(e__VW.XView, 0) - 20, initboxy, obj_regularbullet);
			regbul.sprite_index = spr_spadebullet;
			regbul.hspeed = 4;
			scr_bullet_inherit(regbul);
			btimer = 0;
		}
		if (chain_noise == 2)
			snd_pitch(wavenoise, 0.9 - (sin(siner / 10) / 2));
	}
	if (type == 2)
	{
		siner += 1;
		obj_chainking.y = initkingy + (sin(siner / 9) * 80);
		btimer += 1;
		if (btimer >= 16)
		{
			regbul = instance_create(__view_get(e__VW.XView, 0) - 20, initboxy, obj_regularbullet);
			regbul.sprite_index = spr_spadebullet;
			regbul.hspeed = 4;
			scr_bullet_inherit(regbul);
			btimer = 0;
		}
		if (chain_noise == 2)
			snd_pitch(wavenoise, 1 - (sin(siner / 9) / 2));
	}
	if (type == 3)
	{
		siner += 1;
		obj_chainking.y = initkingy + (sin(siner / 7) * 80 * wavefactor);
		btimer += 1;
		if (btimer >= 14)
		{
			regbul = instance_create(__view_get(e__VW.XView, 0) - 20, initboxy, obj_regularbullet);
			regbul.sprite_index = spr_spadebullet;
			regbul.hspeed = 4;
			scr_bullet_inherit(regbul);
			btimer = 0;
		}
		if (chain_noise == 2)
			snd_pitch(wavenoise, 1 - (sin(siner / 7) / 2));
	}
}
if (instance_exists(obj_chainking))
{
	kingx[0] = obj_chainking.x - initkingx;
	kingy[0] = obj_chainking.y - initkingy;
	for (i = 40; i > 0; i -= 1)
	{
		kingx[i] = kingx[i - 1];
		kingy[i] = kingy[i - 1];
	}
	for (i = 0; i <= sons; i += 1)
	{
		son[i].x = kingx[i] + son[i].xstart;
		son[i].y = kingy[i] + son[i].ystart;
	}
	if (chaincon >= 3)
	{
		x = son[sons].x;
		y = son[sons].y;
		obj_nonsolid_growtangle.x = kingx[sons] + initboxx;
		obj_nonsolid_growtangle.y = kingy[sons] + initboxy;
	}
}
t += 1;
if (t >= (tmax - 10))
{
	wavefactor *= 0.8;
	with (obj_chainpiece)
		image_alpha -= 0.1;
	with (obj_regularbullet)
	{
		active = 0;
		image_alpha -= 0.1;
	}
}
if (t >= tmax)
{
	if (chain_noise == 2)
	{
		chain_noise = 3;
		snd_stop(wavenoise);
	}
	global.turntimer = 3;
	with (obj_regularbullet)
		instance_destroy();
	with (obj_chainking)
		sprite_index = spr_chainking_receive;
	with (obj_chainking)
		instance_destroy();
	instance_destroy();
}
