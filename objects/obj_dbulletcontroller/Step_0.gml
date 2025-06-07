btimer += 1;
if (type == 0)
{
	if (btimer >= (timermax * ratio))
	{
		btimer = 0;
		dir = 30 + random(120);
		radius = 140 + random(80);
		xx = lengthdir_x(radius, dir);
		yy = lengthdir_y(radius, dir);
		bm = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_maker);
		if (bm.y < (__view_get(e__VW.YView, 0) + 40))
			bm.y = __view_get(e__VW.YView, 0) + 40;
		bm.damage = damage;
		bm.target = target;
	}
}
if (type == 1)
{
	if (btimer >= (9 * ratio))
	{
		btimer = 0;
		radius = 140 + random(40);
		yy = radius * side;
		xx = -100 + random(200);
		num = choose(0, 1, 2, 3);
		if (num == 3)
			xx = -10 + random(20);
		d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_vert);
		d.damage = damage;
		d.target = target;
	}
}
if (type == 2)
{
	if (btimer >= (20 * ratio))
	{
		xx = __view_get(e__VW.XView, 0) - 20;
		if (side == 1)
			xx = __view_get(e__VW.XView, 0) + 660;
		yy = miny + random(maxy - miny);
		bul = instance_create(xx, yy, obj_clubsbullet);
		bul.speed = 12;
		bul.damage = damage;
		bul.target = target;
		if (side == 1)
		{
			bul.direction = 180;
			bul.image_angle = 180;
		}
		btimer = 0;
	}
}
if (type == 3)
{
	if (btimer >= (20 * ratio))
	{
		btimer = 0;
		if (side == 1)
			dir = choose(225, 315);
		if (side == -1)
			dir = choose(45, 135);
		radius = 400;
		xx = lengthdir_x(radius, dir);
		yy = lengthdir_y(radius, dir);
		d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
		d.direction = dir + 180;
		d.speed = 20;
		d.friction = 1;
		d.damage = damage;
		d.target = target;
		with (d)
			image_angle = direction;
		if (side == 1)
			side = -1;
		else
			side = 1;
	}
}
if (type == 4)
{
	if (btimer >= (30 * ratio))
	{
		btimer = 0;
		if (side == -1)
			dir = 225;
		if (side == 1)
			dir = 315;
		radius = 400;
		xx = lengthdir_x(radius, dir);
		yy = lengthdir_y(radius, dir);
		d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
		d.damage = damage;
		d.target = target;
		d.direction = dir + 180;
		d.speed = 20;
		d.friction = 1;
		with (d)
			image_angle = direction;
		if (side == 1)
			side = -1;
		else
			side = 1;
	}
}
if (type == 6)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made == 0)
	{
		d = instance_create(300 + xx, -20 + yy, obj_dicebul);
		e = instance_create(360 + xx, -60 + yy, obj_dicebul);
		d.target = target;
		d.damage = damage;
		e.target = target;
		e.damage = damage;
		made = 1;
	}
}
if (type == 7)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made < 3 && btimer >= 15)
	{
		btimer = 0;
		mine = instance_create(300 + xx, -20 + yy, obj_dicebul);
		mine.damage = damage;
		mine.target = target;
		with (obj_dicebul)
		{
			gravity = 0.15 + gravbonus;
			image_xscale = 1;
			image_yscale = 1;
		}
		made += 1;
	}
}
if (type == 8)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made < 4 && btimer >= 15)
	{
		btimer = 0;
		mine = instance_create(300 + xx, yy - 40, obj_dicebul);
		mine.damage = damage;
		mine.target = target;
		with (mine)
		{
			hspeed = 1.2 + random(1.2);
			hspeed *= choose(-1, 1);
			gravbonus = random(0.1);
			gravity = 0.15 + gravbonus;
			image_xscale = 0.7;
			image_yscale = 0.7;
		}
		made += 1;
	}
}
if (type == 10)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (btimer >= 15)
	{
		btimer = 0;
		dicecomet = instance_create(choose(xx + 680, xx - 100), 0 - random(100), obj_dicebul);
		dicecomet.damage = damage;
		dicecomet.target = target;
		with (dicecomet)
		{
			image_xscale = 2;
			image_yscale = 2;
			if (x > (__view_get(e__VW.XView, 0) + 320))
				hspeed = -6 - random(1);
			else
				hspeed = 6 + random(1);
			vspeed = 2 + random(2);
		}
	}
}
if (type == 11)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made < 4 && btimer >= 15)
	{
		btimer = 0;
		bb = instance_create(300 + xx, -20 + yy, obj_dicebul);
		bb.damage = damage;
		bb.target = target;
		with (obj_dicebul)
		{
			gravity = 0.15 + gravbonus;
			image_xscale = 1;
			image_yscale = 1;
		}
		if (made == 3)
		{
			with (bb)
			{
				green = 1;
				image_blend = c_lime;
			}
		}
		made += 1;
	}
}
if (type == 12)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made == 0)
	{
		db = instance_create(320 + xx, -20 + yy, obj_dicebul);
		db.image_xscale = 1;
		db.image_yscale = 1;
		db.damage = damage;
		db.target = target;
		made = 1;
	}
}
if (type == 13)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (made < 2 && btimer >= 20)
	{
		db[made] = instance_create(320 + xx, -20 + yy, obj_dicebul);
		db[made].image_xscale = 1;
		db[made].image_yscale = 1;
		db[made].damage = damage;
		db[made].target = target;
		if (made == 1)
		{
			with (db[1])
			{
				green = 1;
				image_blend = c_lime;
			}
			db[1].hspeed = -db[0].hspeed;
		}
		made += 1;
	}
}
if (type == 14)
{
	if (btimer >= 10)
	{
		xx = __view_get(e__VW.XView, 0) - 20;
		if (side == 1)
			xx = __view_get(e__VW.XView, 0) + 660;
		yy = miny + random(maxy - miny);
		bul = instance_create(xx, yy, obj_regularbullet);
		bul.sprite_index = spr_smallbullet;
		bul.hspeed = -8;
		bul.damage = damage;
		bul.target = target;
		if (side == 1)
		{
			bul.direction = 180;
			bul.image_angle = 180;
		}
		btimer = 0;
	}
}
if (type == 20 || type == 22)
{
	if (instance_exists(obj_lancerboss3))
	{
		if (made == 0)
		{
			snd_play(snd_lancerwhistle);
			whistletimer = 0;
			made = 1;
			with (obj_lancerboss3)
				idlesprite = spr_lancerbike_l;
		}
		if (made == 1)
		{
			whistletimer += 1;
			if (whistletimer >= 30)
			{
				with (obj_lancerboss3)
					idlesprite = spr_lancerbike;
				made = 2;
			}
		}
	}
	if (type == 20)
		bmax = 8;
	if (type == 22)
		bmax = 6;
	if (btimer >= bmax)
	{
		radius = -80 + random(160) + 8;
		fallspade = instance_create(obj_heart.x + radius, __view_get(e__VW.YView, 0) - 20, obj_regularbullet);
		fallspade.damage = damage;
		fallspade.target = target;
		with (fallspade)
		{
			sprite_index = spr_spadebullet;
			image_angle = 270;
			gravity = 0.3;
			speed = 0;
			vspeed = 3;
			hspeed = -0.6 + random(1.2);
		}
		if (side == 1)
			side = -1;
		else
			side = 1;
		btimer = 0;
	}
}
if (type == 21 || type == 23 || type == 25)
{
	if (type == 21)
		bmax = 9;
	if (type == 23)
		bmax = 7;
	if (type == 25)
		bmax = 4;
	with (obj_regularbullet)
		image_alpha += 0.2;
	if (btimer >= bmax)
	{
		if (side == 0)
			radius = 80;
		else
			radius = 560;
		sidespade[side] = instance_create(__view_get(e__VW.XView, 0) + radius, (obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + random(obj_growtangle.sprite_height), obj_regularbullet);
		if (side == 0)
			sidespade[side].direction = 0;
		if (side == 1)
			sidespade[side].direction = 180;
		sidespade[side].image_alpha = 0;
		sidespade[side].damage = damage;
		sidespade[side].target = target;
		with (sidespade[side])
		{
			sprite_index = spr_spadebullet;
			speed = 5;
			friction = -0.1;
			image_angle = direction;
		}
		if (side == 1)
			side = 0;
		else
			side = 1;
		btimer = 0;
	}
}
if (type == 24)
{
	bmax = difficulty + 5;
	with (obj_regularbullet)
	{
		if (instance_exists(obj_heart))
		{
			xdiff = x - (obj_heart.x + 8);
			if (y >= (obj_heart.y - 240) && abs(xdiff) <= 30)
			{
				if (xdiff >= 0 && hspeed < 5)
					hspeed += 0.4;
				if (xdiff < 0 && hspeed > -5)
					hspeed -= 0.4;
			}
			if (y >= (obj_heart.y - 100))
			{
				if (abs(xdiff) <= 60)
				{
					if (xdiff >= 0)
					{
						if (hspeed < 2)
							hspeed += 0.25;
						if (xdiff < 10)
							x += 3;
						if (xdiff < 20)
							x += 3;
						if (xdiff < 30)
							x += 3;
						if (xdiff < 40)
							x += 2;
						if (xdiff < 60)
							x += 1;
					}
					else
					{
						if (hspeed > -2)
							hspeed -= 0.25;
						if (xdiff > -10)
							x -= 3;
						if (xdiff > -20)
							x -= 3;
						if (xdiff > -30)
							x -= 3;
						if (xdiff > -40)
							x -= 2;
						if (xdiff > -60)
							x -= 1;
					}
				}
			}
		}
	}
	if (btimer >= bmax)
	{
		radius = -80 + random(160) + 8;
		fallspade = instance_create(obj_heart.x + radius, -20, obj_regularbullet);
		fallspade.damage = damage;
		fallspade.target = target;
		with (fallspade)
		{
			sprite_index = spr_spadebullet;
			image_angle = 270;
			gravity = 0.3;
			speed = 0;
			vspeed = 3;
			hspeed = -0.6 + random(1.2);
		}
		if (side == 1)
			side = -1;
		else
			side = 1;
		btimer = 0;
	}
}
if (type == 26)
{
	with (obj_regularbullet)
	{
		if (sprite_index == spr_blockbullet)
			image_alpha += 0.1;
	}
	timer = 35;
	if (scr_monsterpop() == 2)
		timer = 52.5;
	if (scr_monsterpop() == 3)
		timer = 77;
	if (btimer >= timer)
	{
		x_c = __view_get(e__VW.XView, 0) + 300;
		y_c = __view_get(e__VW.YView, 0) + 140;
		x_o = 200;
		y_o = -60;
		y_o_o = -80 + random(160);
		y_o += y_o_o;
		v_s = -y_o_o / 160;
		h_s = -2;
		for (i = 0; i < 2; i += 1)
		{
			upallow = choose(0, 1, 2);
			rightallow = choose(0, 1, 2);
			for (j = 0; j < 2; j += 1)
			{
				bul[i][j] = instance_create(x_c + x_o + (i * 80), y_c + y_o + (j * 80), obj_regularbullet);
				scr_bullet_inherit(bul[i][j]);
				if (j == upallow)
					bul[i][j].y += choose(0, 40);
				if (i == 1 && j == 1)
				{
					bul[i][j].x += choose(0, -40);
					bul[i][j].y = y_c + y_o + choose(0, 40) + (j * 80);
				}
				bul[i][j].hspeed = h_s;
				bul[i][j].vspeed = v_s;
				bul[i][j].friction = -0.07;
				if (scr_monsterpop() >= 2)
					bul[i][j].friction = -0.1;
				bul[i][j].sprite_index = spr_blockbullet;
				bul[i][j].image_alpha = 0;
			}
		}
		btimer = 0;
	}
}
if (type == 27)
{
	timer = 15;
	if (scr_monsterpop() == 2)
		timer = 25.5;
	if (scr_monsterpop() == 3)
		timer = 34.5;
	lx = (obj_battlesolid.x - (obj_battlesolid.sprite_width / 2)) + 8;
	ly = (obj_battlesolid.y + (obj_battlesolid.sprite_height / 2)) - 15;
	if (btimer >= timer)
	{
		prevmade = made;
		made = choose(0, 1, 2, 3);
		if (made == prevmade)
			made = choose(0, 1, 2, 3);
		btimer = 0;
		block = instance_create(100, 100, obj_blockbullet_fall);
		block.xpos = made;
		scr_bullet_inherit(block);
		testblock = collision_point(lx + (made * block.sprite_width) + 8, ly - (block.sprite_height * 3) - 10, obj_blockbullet_fall, false, true);
		if (testblock > 1)
		{
			if (testblock.halt == 1)
			{
				with (block)
					instance_destroy();
			}
		}
	}
	legoa = collision_point(lx + 15, ly, obj_blockbullet_fall, false, true);
	legob = collision_point(lx + 15 + 34, ly, obj_blockbullet_fall, false, true);
	legoc = collision_point(lx + 15 + 68, ly, obj_blockbullet_fall, false, true);
	legod = collision_point(lx + 15 + 102, ly, obj_blockbullet_fall, false, true);
	if (legoa > 1 && legob > 1 && legoc > 1 && legod > 1)
	{
		with (legoa)
			con = 3;
		with (legob)
			con = 3;
		with (legoc)
			con = 3;
		with (legod)
			con = 3;
	}
}
if (type == 30)
{
	bmax = 34;
	if (scr_monsterpop() == 2)
		bmax = 46;
	if (scr_monsterpop() == 3)
		bmax = 60;
	if (btimer >= bmax)
	{
		rab = instance_create(obj_battlesolid.x + obj_battlesolid.sprite_width, obj_battlesolid.y, obj_rabbitbullet);
		scr_bullet_inherit(rab);
		btimer = 0;
	}
}
if (type == 32)
{
	skiprab = 0;
	if (instance_exists(obj_carrotthrower))
	{
		skiprab = 1;
		type = 30;
	}
	if (made == 0 && skiprab == 0)
	{
		made = 1;
		rab = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_carrotthrower);
		scr_bullet_inherit(rab);
		instance_destroy();
	}
}
if (type == 33)
{
	if (btimer >= (26 * ratio))
	{
		hs = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_heartshaper);
		hs.maxradius = 50;
		hs.type = 1;
		btimer = 0;
		hs.thisx = (obj_battlesolid.x - 50) + random(100);
		hs.thisy = (obj_battlesolid.y - 50) + random(100);
		scr_bullet_inherit(hs);
	}
}
if (type == 34)
{
	if (btimer >= 28)
	{
		typechoice = choose(0, 1, 2, 3);
		xx = 0;
		yy = 0;
		if (typechoice == 0 || typechoice == 3)
		{
			xx = (__view_get(e__VW.XView, 0) + 320 + random(300)) - random(300);
			yy = -60;
		}
		if (typechoice == 1)
		{
			xx = __view_get(e__VW.XView, 0) - 60;
			yy = random(320);
		}
		if (typechoice == 2)
		{
			xx = __view_get(e__VW.XView, 0) + 700;
			yy = random(320);
		}
		chain = instance_create(xx, yy, obj_skychain);
		scr_bullet_inherit(255);
		btimer = 0;
	}
}
if (type == 35)
{
	if (btimer >= 22)
	{
		typechoice = choose(0, 1, 2, 3);
		xx = 0;
		yy = 0;
		if (typechoice == 0 || typechoice == 3)
		{
			xx = (__view_get(e__VW.XView, 0) + 320 + random(300)) - random(300);
			yy = -60;
		}
		if (typechoice == 1)
		{
			xx = __view_get(e__VW.XView, 0) - 60;
			yy = random(320);
		}
		if (typechoice == 2)
		{
			xx = __view_get(e__VW.XView, 0) + 700;
			yy = random(320);
		}
		chain = instance_create(xx, yy, obj_skychain);
		scr_bullet_inherit(chain);
		btimer = 0;
	}
}
if (type == 36)
{
	if (btimer >= 16)
	{
		typechoice = choose(0, 1, 2, 3);
		xx = 0;
		yy = 0;
		if (typechoice == 0 || typechoice == 3)
		{
			xx = (__view_get(e__VW.XView, 0) + 320 + random(300)) - random(300);
			yy = -60;
		}
		if (typechoice == 1)
		{
			xx = __view_get(e__VW.XView, 0) - 60;
			yy = random(320);
		}
		if (typechoice == 2)
		{
			xx = __view_get(e__VW.XView, 0) + 700;
			yy = random(320);
		}
		chain = instance_create(xx, yy, obj_skychain);
		scr_bullet_inherit(chain);
		btimer = 0;
	}
}
if (type >= 80 && type <= 84)
{
	maxtimer = 40;
	if (type == 81)
		maxtimer = 30;
	if (type == 82)
		maxtimer = 26;
	if (type == 83)
		maxtimer = 19;
	if (type == 84)
		maxtimer = 14;
	if (btimer >= maxtimer)
	{
		btimer = 0;
		lx = obj_battlesolid.x;
		ly = obj_battlesolid.y;
		side = choose(0, 1);
		if (type == 81 || type == 84)
		{
			side = made;
			if (made == 0)
				made = 1;
			else
				made = 0;
		}
		if (side == 0)
		{
			puzz1 = instance_create(obj_heart.x + 8, ly - 150, obj_jigsawbullet);
			puzz1.side = 3;
			puzz2 = instance_create(obj_heart.x + 8, ly + 150, obj_jigsawbullet);
			puzz2.side = 1;
			if (type == 82)
				puzz1.timer = 10;
			if (type == 82)
				puzz2.timer = 10;
			if (type == 83 || type == 84)
				puzz1.timer = 15;
			if (type == 83 || type == 84)
				puzz2.timer = 15;
			scr_bullet_inherit(puzz1);
			scr_bullet_inherit(puzz2);
		}
		if (side == 1)
		{
			puzz1 = instance_create(lx + 150, obj_heart.y + 8, obj_jigsawbullet);
			puzz1.side = 2;
			puzz2 = instance_create(lx - 150, obj_heart.y + 8, obj_jigsawbullet);
			puzz2.side = 0;
			if (type == 82)
				puzz1.timer = 10;
			if (type == 82)
				puzz2.timer = 10;
			if (type == 83)
				puzz1.timer = 15;
			if (type == 83)
				puzz2.timer = 15;
			scr_bullet_inherit(puzz1);
			scr_bullet_inherit(puzz2);
		}
		if (type == 83)
		{
			with (obj_jigsawbullet)
				joker = 1;
		}
	}
}
if (type == 85)
{
	if (made == 0)
	{
		cheer = 0;
		cheertimer = 0;
		remhp[0] = global.hp[global.char[0]];
		remhp[1] = global.hp[global.char[1]];
		with (obj_susieenemy)
			visible = 0;
		with (obj_lancerboss3)
			visible = 0;
		fakelan = instance_create(__view_get(e__VW.XView, 0) + 580, obj_battlesolid.y + 160, obj_bulletparent);
		with (fakelan)
		{
			depth += 1;
			image_xscale = 2;
			image_yscale = 2;
			visible = 1;
			sprite_index = spr_lancerbike;
			active = 0;
			image_speed = 0.2;
		}
		fakesus = instance_create(__view_get(e__VW.XView, 0) + 530, obj_battlesolid.y - 40, obj_bulletparent);
		with (fakesus)
		{
			image_xscale = 2;
			image_yscale = 2;
			visible = 1;
			sprite_index = spr_susie_enemy_attack;
			active = 0;
			image_speed = 0;
		}
		made = 1;
	}
	if (made == 1)
	{
		if (instance_exists(fakelan))
		{
			if (cheer == 0)
			{
				if (global.inv > 10)
				{
					cheer = 1;
					snd_play(snd_lancerwhistle);
					with (fakelan)
						sprite_index = spr_lancerbike_l;
				}
			}
			if (cheer == 1)
			{
				cheertimer += 1;
				if (cheertimer >= 30)
				{
					cheertimer = 0;
					with (fakelan)
						sprite_index = spr_lancerbike;
					cheer = 0;
				}
			}
		}
		if (instance_exists(fakesus))
		{
			with (fakesus)
			{
				if (image_index < 5)
					image_index += 0.334;
			}
		}
	}
	if (made == 1 && global.turntimer <= 10)
	{
		with (fakesus)
			visible = 0;
		with (fakelan)
			visible = 0;
		with (obj_susieenemy)
			visible = 1;
		with (obj_lancerboss3)
			visible = 1;
	}
	if (btimer >= 27 && instance_exists(obj_battlesolid) && global.turntimer > 10)
	{
		with (fakesus)
		{
			image_index = 0;
			snd_play(snd_laz_c);
		}
		for (i = 0; i < 1; i += 1)
		{
			axe[i] = instance_create(__view_get(e__VW.XView, 0) + 540, obj_battlesolid.y, obj_axebullet);
			scr_bullet_inherit(axe[i]);
		}
		btimer = 0;
	}
}
if (joker == 1)
{
	if (type == 45)
	{
		if (btimer >= 18)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			if (bomb.type == 2)
				bomb.type = choose(0, 1, 2, 3);
			btimer = 0;
		}
	}
	if (type == 46)
	{
		if (btimer >= 12)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			if (bomb.type == 2)
				bomb.type = choose(0, 1, 2, 3);
			btimer = 0;
		}
	}
	if (type == 47)
	{
		if (btimer >= 12)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			bomb.type = 1;
			btimer = 0;
		}
	}
	if (type == 48)
	{
		if (btimer >= 12)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			bomb.type = 0;
			btimer = 0;
		}
	}
	if (type == 49)
	{
		if (btimer >= 20)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			bomb.type = 2;
			btimer = 0;
		}
	}
	if (type == 50)
	{
		if (btimer >= 12)
		{
			xx = choose(0, 1);
			basex = __view_get(e__VW.XView, 0) + 320;
			if (instance_exists(obj_growtangle))
				basex = obj_growtangle.x;
			if (xx == 0)
				idealx = basex - 180 - random(100);
			if (xx == 1)
				idealx = basex + 180 + random(100);
			bomb = instance_create(idealx, -20, obj_suitbomb);
			scr_bullet_inherit(bomb);
			bomb.type = 3;
			btimer = 0;
		}
	}
	if (type == 55)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			scythe = instance_create(obj_battlesolid.x - 200, obj_battlesolid.y, obj_bigscythe);
			scr_bullet_inherit(scythe);
			scythe.image_angle = 270 + random(120);
		}
	}
	if (type == 56)
	{
		if (btimer >= 29 && made == 0)
		{
			btimer = 0;
			xchoose = choose(-250);
			scythe = instance_create(obj_battlesolid.x + xchoose, obj_battlesolid.y, obj_bigscythe);
			scr_bullet_inherit(scythe);
			scythe.image_angle = random(90);
			scythe.type = 3;
			scythe.friction = -0.25;
			if (xchoose > 0)
				scythe.hspeed = -1;
			if (xchoose < 0)
				scythe.hspeed = 1;
		}
	}
	if (type == 57)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			scythe = instance_create(obj_battlesolid.x - 140, obj_battlesolid.y, obj_bigscythe);
			scr_bullet_inherit(scythe);
			scythe.anglespeed = -12;
			scythe.image_angle = 270 + random(120);
		}
	}
	if (type == 58)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			scythe = instance_create(obj_battlesolid.x - 150, obj_battlesolid.y, obj_bigscythe);
			scythe.anglespeed = -17;
			scythe.image_angle = 270 + random(120);
		}
	}
	if (type == 60)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			for (i = 0; i < 3; i += 1)
			{
				for (j = 0; j < 7; j += 1)
				{
					horse1 = instance_create(obj_battlesolid.x + 150, (obj_battlesolid.y - 80) + (i * 80), obj_carouselbullet);
					horse1.siner = j * 18;
					horse1.vsin = j * 9;
					scr_bullet_inherit(horse1);
				}
			}
		}
	}
	if (type == 61)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			horse = 0;
			vseed = random(300);
			for (j = 0; j < 3; j += 1)
			{
				for (i = 0; i < 3; i += 1)
				{
					horse1 = instance_create(obj_battlesolid.x + 150, (obj_battlesolid.y - 80) + (i * 80), obj_carouselbullet);
					horse1.siner = j * 42;
					horse1.vsin = 0 + vseed;
					horse1.image_index = 0;
					horse1.altmode = 2;
					horse1.sinspeed = 1.1;
					scr_bullet_inherit(horse1);
					horse1 = instance_create(obj_battlesolid.x + 150, (obj_battlesolid.y - 80) + (i * 80), obj_carouselbullet);
					horse1.siner = (j * 42) + 21;
					horse1.vsin = 0 + vseed;
					horse1.image_index = 1;
					horse1.altmode = 1;
					horse1.sinspeed = 1.1;
					scr_bullet_inherit(horse1);
					chance = floor(random(50));
					if (chance == 1)
						horse1.image_index = 2;
				}
				if (horse == 0)
					horse = 1;
				else
					horse = 0;
			}
		}
	}
	if (type == 62)
	{
		if (btimer >= 40 && made == 0)
		{
			btimer = 0;
			made = 1;
			for (i = 0; i < 3; i += 1)
			{
				for (j = 0; j < 7; j += 1)
				{
					horse1 = instance_create(obj_battlesolid.x + 150, (obj_battlesolid.y - 80) + (i * 80), obj_carouselbullet);
					horse1.siner = j * 18;
					horse1.vsin = j * 9;
					horse1.sinspeed = 1.15;
					horse1.altmode = 3;
					scr_bullet_inherit(horse1);
				}
			}
		}
	}
	if (type == 65)
	{
		if (btimer >= 60)
		{
			ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering);
			ring.maxspade = 10;
			ring.grav = 0.4;
			scr_bullet_inherit(ring);
			btimer = 0;
		}
	}
	if (type == 66)
	{
		if (btimer >= 30)
		{
			ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering);
			ring.maxspade = 6;
			ring.grav = 3;
			ring.size = 1.5;
			scr_bullet_inherit(ring);
			btimer = 0;
		}
	}
	if (type == 67)
	{
		if (btimer >= 20)
		{
			ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering);
			ring.grav = 0.2;
			ring.maxspade = 4;
			ring.special = 1;
			scr_bullet_inherit(ring);
			btimer = 0;
		}
	}
	if (type == 68)
	{
		with (obj_heart)
			wspeed = 5;
		if (btimer >= 54)
		{
			ring = instance_create(obj_battlesolid.x, obj_battlesolid.y, obj_spadering);
			ring.side = choose(0, 1);
			ring.grav = 0.45;
			ring.maxspade = 10;
			scr_bullet_inherit(ring);
			btimer = 0;
		}
	}
	if (type == 70)
	{
		if (btimer >= 20 && global.turntimer >= 30)
		{
			jokerx = choose(obj_battlesolid.x - 100 - random(100), obj_battlesolid.x + 100 + random(100));
			jokery = choose(obj_battlesolid.y - random(100), obj_battlesolid.y + random(100));
			jokern = instance_create(jokerx, jokery, obj_joker_teleport);
			jokern.type = 1;
			scr_bullet_inherit(jokern);
			jokern.active = 0;
			btimer = 0;
		}
	}
	if (type == 71)
	{
		if (btimer >= 9 && global.turntimer >= 20)
		{
			jokerx = choose(obj_battlesolid.x - 100 - random(100), obj_battlesolid.x + 100 + random(100));
			jokery = choose(obj_battlesolid.y - random(100), obj_battlesolid.y + random(100));
			jokern = instance_create(jokerx, jokery, obj_joker_teleport);
			scr_bullet_inherit(jokern);
			jokern.active = 0;
			btimer = 0;
		}
	}
	if (type == 72)
	{
		if (btimer >= 18)
		{
			btimer = 0;
			if (side == 1)
				dir = choose(225, 315);
			if (side == -1)
				dir = choose(45, 135);
			radius = 360;
			xx = lengthdir_x(radius, dir);
			yy = lengthdir_y(radius, dir);
			d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
			d.direction = dir + 180;
			d.speed = 20;
			d.friction = 1;
			d.type = 2;
			d.damage = damage;
			d.target = target;
			with (d)
				image_angle = direction;
			if (side == 1)
				side = -1;
			else
				side = 1;
		}
	}
	if (type == 73)
	{
		if (btimer >= 4)
		{
			btimer = 0;
			radius = 140 + random(40);
			yy = radius * side;
			xx = -100 + random(200);
			num = choose(0, 1, 2, 3);
			if (num == 3)
				xx = -10 + random(20);
			if (instance_exists(obj_battlesolid))
			{
				db = instance_create(obj_heart.x + 8 + xx, obj_battlesolid.y + 100, obj_dbullet_vert);
				with (db)
					type = 1;
				db.damage = damage;
				db.target = target;
				db.timepoints = 2;
			}
		}
	}
	if (type == 74)
	{
		if (btimer >= 9)
		{
			btimer = 0;
			radius = 140 + random(40);
			yy = radius * side;
			xx = -100 + random(200);
			num = choose(0, 1, 2, 3);
			if (num == 3)
				xx = -10 + random(20);
			d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_vert);
			d.grazepoints = 12;
			d.timepoints = 2;
			d.damage = damage;
			d.target = target;
		}
	}
	if (type == 75 || type == 76)
	{
		if (btimer >= 0 && special == 0)
		{
			snd_play(snd_spearappear);
			scythe = instance_create(0, 0, obj_centerscythe);
			obj_centerscythe.damage = damage;
			obj_centerscythe.grazepoints = grazepoints;
			obj_centerscythe.timepoints = timepoints;
			obj_centerscythe.inv = inv;
			obj_centerscythe.target = target;
			obj_centerscythe.grazed = 0;
			obj_centerscythe.grazetimer = 0;
			special = 1;
		}
	}
	if (type == 77)
	{
		global.sp = 10;
		with (obj_heart)
			wspeed = 10;
		if (special == 0)
		{
			snd_play(snd_joker_byebye);
			prevmake = 0;
			special = 1;
			rank = 16;
			realtimer = 0;
			chase = 0;
			made = 0;
			amount = 0;
			jokertimer = 0;
			darkfader = scr_dark_marker(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) - 10, spr_tallpx);
			with (darkfader)
			{
				depth = 2;
				image_alpha = 0;
				image_blend = c_black;
				image_xscale = 200;
				image_yscale = 2;
			}
		}
		if (realtimer >= 0 && realtimer < 10)
		{
			with (darkfader)
				image_alpha += 0.1;
			with (obj_battlesolid)
				image_alpha -= 0.1;
			with (obj_heart)
			{
				y += 16;
				boundaryup = 160;
			}
		}
		if (realtimer == 10)
		{
			with (obj_battlesolid)
				instance_destroy();
		}
		if (realtimer == 20)
			instance_create(__view_get(e__VW.XView, 0) + 40, -60, obj_laserscythe);
		if (realtimer == 40)
			instance_create(__view_get(e__VW.XView, 0) + 570, -60, obj_laserscythe);
		if (realtimer >= 60 && amount < 30)
		{
			if (btimer >= rank)
			{
				if (rank > 7)
					rank -= 1;
				which = floor(random(5));
				if (which == prevmake)
					which = floor(random(5));
				if (chase == 3)
				{
					which = floor((obj_heart.x + 8) / 90);
					chase = 0;
				}
				scythe = instance_create(__view_get(e__VW.XView, 0) + 40 + (90 * which), -60, obj_laserscythe);
				if (which == 1)
					scythe2 = instance_create(__view_get(e__VW.XView, 0) + 40 + 450, -60, obj_laserscythe);
				if (which == 0)
					scythe2 = instance_create(__view_get(e__VW.XView, 0) + 40 + 540, -60, obj_laserscythe);
				prevmake = which;
				btimer = 0;
				chase += 1;
				amount += 1;
			}
		}
		if (amount >= (29 - made) && special == 1)
		{
			jokertimer = 0;
			jokerin = instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 100, obj_joker_teleport);
			with (jokerin)
			{
				type = 66;
				depth = -30;
			}
			special = 2;
			which2 = 0;
		}
		if (special == 2)
		{
			jokertimer += 1;
			if (jokertimer == 10)
				snd_play(scr_84_get_sound("snd_joker_neochaos"));
			if (jokertimer == 40 || jokertimer == 98)
			{
				scythe = instance_create(__view_get(e__VW.XView, 0) + 40, -60, obj_laserscythe);
				scythe = instance_create(__view_get(e__VW.XView, 0) + 580, -60, obj_laserscythe);
			}
			if (jokertimer == 46 || jokertimer == 86)
			{
				scythe = instance_create(__view_get(e__VW.XView, 0) + 130, -60, obj_laserscythe);
				scythe = instance_create(__view_get(e__VW.XView, 0) + 490, -60, obj_laserscythe);
			}
			if (jokertimer == 52 || jokertimer == 80)
			{
				scythe = instance_create(__view_get(e__VW.XView, 0) + 220, -60, obj_laserscythe);
				scythe = instance_create(__view_get(e__VW.XView, 0) + 400, -60, obj_laserscythe);
			}
			if (jokertimer == 66 || jokertimer == 98)
				scythe = instance_create(__view_get(e__VW.XView, 0) + 310, -60, obj_laserscythe);
			if (jokertimer == 130)
			{
				lastscythe = instance_create(__view_get(e__VW.XView, 0) + 320, -320, obj_laserscythe);
				p = 0;
				vol = 0;
				vol2 = 1;
				rumnoise = audio_play_sound(snd_rumble, 50, 1);
				with (lastscythe)
				{
					vspeed = 1;
					gravity = 0.02;
					image_xscale = 16;
					image_yscale = 16;
					scale = 16;
					rotspeed = 0;
					remrot = 160;
					image_angle = 160;
				}
				fadewhite = instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) - 40, obj_marker);
				fadewhite.sprite_index = spr_tallpx;
				fadewhite.image_xscale = 400;
				fadewhite.image_yscale = 2;
				fadewhite.depth = -100;
				fadewhite.image_alpha = -0.3;
			}
			if (jokertimer >= 131)
			{
				with (lastscythe)
					x = xstart + random(8);
				with (fadewhite)
					image_alpha += 0.01;
				vol += 0.01;
				if (fadewhite.image_alpha >= 1)
				{
					with (darkfader)
						instance_destroy();
					with (lastscythe)
						instance_destroy();
				}
				if (fadewhite.image_alpha >= 1.3)
					special = 3;
			}
		}
		if (special == 3)
		{
			with (obj_heart)
			{
				x = __view_get(e__VW.XView, 0) + 320;
				y = __view_get(e__VW.YView, 0) + 120;
			}
			vol -= 0.1;
			audio_sound_gain(rumnoise, vol, 0);
			with (fadewhite)
				image_alpha -= 0.1;
			if (fadewhite.image_alpha <= 0)
			{
				audio_stop_sound(rumnoise);
				global.turntimer = 11;
				special = 4;
			}
		}
		realtimer += 1;
	}
}
