if ((instance_exists(obj_berdlyb_enemy) && global.mercymod[obj_berdlyb_enemy.myself] > 50) || (instance_exists(obj_berdlyb_enemy) && global.monsterhp[obj_berdlyb_enemy.myself] < (global.monstermaxhp[obj_berdlyb_enemy.myself] * 0.5)))
{
	if (smokestart == 0)
	{
		smokestart = 1;
		snd_play(snd_bomb);
		for (var _i = 0; _i < 8; _i++)
		{
			smoke = instance_create(x + 90, y, obj_berdly_smoke);
			smoke.direction = 45 * _i;
			smoke.depth = depth - 1;
		}
		var _explosion = instance_create(x + 90, y, obj_animation);
		_explosion.depth = depth - 1;
		_explosion.sprite_index = spr_coaster_explosion;
	}
	smoketimer++;
	if (smoketimer > 15)
	{
		smoketimer = 0;
		smoke = instance_create(x + 90, y, obj_berdly_smoke);
		smoke.depth = depth + 1;
	}
}
if (init == 0)
{
	if (mode == 0)
	{
		movethreshold = 60;
		moveframes = 6;
	}
	if (mode == 1)
	{
		movethreshold = 36;
		moveframes = 12;
	}
	if (mode >= 2)
	{
		queenmode = 1;
		sprite_index = spr_coaster_queen;
	}
	if (mode == 2)
	{
		movetype = 1;
		moveframes = 24;
	}
	if (mode == 3)
	{
		movethreshold = 40;
		moveframes = 16;
	}
	if (mode == 4)
	{
		movethreshold = 40;
		moveframes = 16;
	}
	if (mode == 5)
	{
		movetype = 1;
		moveframes = 8;
	}
	if (mode == 6)
	{
		movetype = 1;
		moveframes = 4;
	}
	init = 1;
}
if (obj_berdlyb_enemy.premonition > 0 && o_coaster_controller.actcon == 1)
{
	premonition = 1;
	drawpremonition = 1;
}
else
{
	drawpremonition = 0;
}
if (y > 178)
	depth = 78;
if (y > 230)
	depth = 73;
siner += 0.4;
if (xshake != 0)
{
	shaketimer++;
	if (shaketimer >= 2)
	{
		shaketimer = 0;
		xshake *= -0.8;
		if (abs(xshake) <= 1)
			xshake = 0;
	}
}
if (endscene == 1 && instance_exists(obj_ch2_scene11a))
{
	var xx = obj_ch2_scene11a.coaster_berdly.x + 22 + obj_ch2_scene11a.coaster_berdly.sinerx + obj_ch2_scene11a.coaster_berdly.coaster_offset_x;
	var yy = obj_ch2_scene11a.coaster_berdly.y + 47 + obj_ch2_scene11a.coaster_berdly.sinery + obj_ch2_scene11a.coaster_berdly.coaster_offset_y;
	if (endscenetimer < 10)
		endscenetimer++;
	x = lerp(x, xx, endscenetimer / 10);
	y = lerp(y, yy, endscenetimer / 10);
}
if (damagecon == 0)
{
	siner += 0.4;
	if (endscene == 0)
		x = xstart + (sin(siner / 6) * 3);
	damagetimer = 0;
}
if (damagecon == 1)
{
	damagetimer += 1;
	image_index = 1;
	if (kiss == 1)
		image_index = 2;
	x = (xstart + 60) - (damagetimer * 5);
	if (damagetimer >= 10)
	{
		xshake = 0;
		yshake = 0;
		x = xstart;
		damagetimer = 0;
		damagecon = 0;
		image_index = 0;
		if (sprite_index == spr_berdlyb_shocked_battle)
			sprite_index = spr_berdlyb_idle;
	}
}
if (o_coaster_controller.actcon == 1 && movecon == -1)
	movecon = 0;
if (o_coaster_controller.actcon == 0)
{
	movecon = -1;
	movetimer = 59;
	if (y < ystart)
		y += ((ystart - y) / moveframes);
	if (y > ystart)
		y += ((ystart - y) / moveframes);
}
if (movecon == 0)
{
	movebuffer = 0;
	movetimer += 1;
	if (movetype == 1)
		y = yspot[1] + ((sin(movetimer / moveframes) * (yspot[2] - yspot[0])) / 2);
	if (movetimer >= movethreshold && movetype == 0)
	{
		oldidealy = idealy;
		if (obj_berdlyb_enemy.ralseigo == 1)
		{
			forceypos = 2;
			obj_berdlyb_enemy.ralseigo = 0;
			with (o_coaster_hero)
			{
				if (HeroID == 2)
					bump = 1;
			}
		}
		else if (obj_berdlyb_enemy.susiego == 1)
		{
			forceypos = 1;
			obj_berdlyb_enemy.susiego = 0;
			with (o_coaster_hero)
			{
				if (HeroID == 1)
					bump = 1;
			}
		}
		else if (obj_berdlyb_enemy.krisgo == 1)
		{
			forceypos = 0;
			obj_berdlyb_enemy.krisgo = 0;
			with (o_coaster_hero)
			{
				if (HeroID == 0)
					bump = 1;
			}
		}
		if (forceypos == 0)
			idealy = yspot[0];
		if (forceypos == 1)
			idealy = yspot[1];
		if (forceypos == 2)
			idealy = yspot[2];
		if (forceypos == -1)
			idealy = yspot[nexty[ycount]];
		yspeed = (idealy - y) / moveframes;
		movecon = 1;
		movetimer = 0;
		ycount++;
		if (ycount >= 6)
		{
			for (i = 0; i < 6; i++)
			{
				nexty[i] = nexty[i + 6];
				nexty[i + 6] = -1;
			}
			ycount = 0;
			pick = floor(random(6) + 6);
			for (i = 0; i < 2; i++)
			{
				while (nexty[pick] != -1)
					pick = floor(random(6) + 6);
				nexty[pick] = i;
			}
			for (j = 6; j < 12; j++)
			{
				if (nexty[j] == -1)
					nexty[j] = choose(0, 1, 2);
			}
		}
	}
}
if (movecon == 1)
{
	y += yspeed;
	movetimer += 1;
	if (movetimer >= moveframes)
	{
		if (movebuffer == 0)
		{
			movetimer = 0;
			y = idealy;
		}
		movecon = 0;
	}
}
if (mode == 1)
{
	modetimer++;
	if (modetimer >= 60)
	{
		modetimer = -60;
		jama = instance_create(o_coaster_berdly.x - 40 - (20 * queenmode), yspot[choose(0, 1, 2)], o_coaster_jama);
	}
}
if (mode == 3)
{
	modetimer++;
	if (modetimer >= 60)
	{
		modetimer = -60;
		instance_create(view_xview[0] + 330, yspot[choose(0, 1, 2)], o_coaster_lightning);
	}
}
if (mode == 4)
{
	modetimer++;
	if (modetimer >= 60)
	{
		modetimer = -30;
		jama = instance_create(o_coaster_berdly.x - 60, yspot[choose(0, 1, 2)], o_coaster_jama);
		jama.bigcar = 1;
		jama.sprite_index = spr_coaster_car;
	}
}
if (mode == 5)
{
	modetimer++;
	if (modetimer == 40)
	{
		nozoki = choose(0, 1, 2);
		lit = instance_create(view_xview[0] + 330, yspot[choose(0, 1, 2)], o_coaster_lightning);
		lit.waittime = 20;
		lit.litwaittime = 20;
	}
	if (modetimer == 80)
	{
		jama = instance_create(o_coaster_berdly.x - 60, yspot[choose(0, 1, 2)], o_coaster_jama);
		modetimer = 0;
	}
}
with (obj_berdlyb_enemy)
{
	if (global.monstermaxhp[myself] != global.monsterhp[myself])
		o_coaster_berdly.kiss = 0;
}
