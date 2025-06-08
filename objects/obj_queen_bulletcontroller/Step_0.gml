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
if (!scr_queen_buffercheck())
	btimer += 1;
if (type == 0 || type == 9 || type == 8)
{
	if (bufferattack && !instance_exists(obj_queen_buffercontroller))
	{
		bc = instance_create(obj_growtangle.x, cameray() + 60, obj_queen_buffercontroller);
		if (type == 0)
		{
			global.turntimer += 40;
			special = 4;
			made = -4;
			bc.bufferdelay = 161;
			bc.bufferduration = 45;
		}
		else if ((special % 2) == 1)
		{
			bc.bufferdelay = 150;
			bc.bufferduration = 45;
		}
	}
	if (init == 1)
	{
		if (special == 4)
		{
			side = irandom(1) + 1;
			if (bufferattack && side == 2)
				bc.bufferdelay -= 10;
		}
		else if (special == 5)
		{
			side = 0;
		}
		else if (special >= 2 && (special % 2) == 0)
		{
			side = choose(-2, -1, 0);
		}
		else
		{
			side = choose(-2, -1);
		}
		lastside = side;
		init = 2;
		if (special >= 2)
			made = -2;
	}
	if (special > 1 && made <= 0 && (btimer >= 7 || (special == 4 && btimer >= 3)))
	{
		if (special == 3 && bufferattack)
		{
			if (made == -2)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y;
			}
			if (made == -1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y;
			}
			if (made == 0)
			{
				xx = obj_growtangle.x;
				yy = obj_growtangle.y - 150;
			}
		}
		else if (special == 4)
		{
			if (made == -1)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y + ((made == side) ? random_range(20, -40) : 0);
			}
			else if (made == 0)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y + ((made == side) ? random_range(20, -40) : 0);
			}
			else
			{
				yy = obj_growtangle.y + random_range(-180, 70);
				if (yy > (obj_growtangle.y - 130))
					xx = obj_growtangle.x + (random_range(200, 250) * randomsign());
				else
					xx = obj_growtangle.x + (irandom(250) * randomsign());
			}
		}
		else if (special == 5)
		{
			if (made == -2)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y;
			}
			if (made == -1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y;
			}
		}
		else if ((special % 2) == 0)
		{
			if (made == -2)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y + random_range(20, -40);
			}
			if (made == -1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y + random_range(20, -40);
			}
			if (made == 0)
			{
				xx = obj_growtangle.x + random_range(-60, 60);
				yy = obj_growtangle.y - ((side == made) ? 140 : 100);
			}
		}
		else
		{
			if (made == -2)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y + ((made == side) ? 0 : random_range(20, -40));
			}
			if (made == -1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y + ((made == side) ? 0 : random_range(20, -40));
			}
			if (made == 0)
			{
				xx = obj_growtangle.x + (randomsign() * 60);
				yy = obj_growtangle.y - 100;
			}
		}
	}
	else if (btimer >= ((special == 2) ? 40 : 60))
	{
		btimer = 0;
		var _side;
		if (special == 0)
		{
			_side = 0;
		}
		else
		{
			_side = irandom((made == 0) ? 2 : 1);
			if (_side == lastside)
				_side = 2;
		}
		if ((special % 2) == 0)
		{
			if (_side == 0)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y + random_range(20, -40);
			}
			if (_side == 1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y + random_range(20, -40);
			}
			if (_side == 2)
			{
				xx = obj_growtangle.x + random_range(-100, 100);
				yy = obj_growtangle.y - 140;
			}
		}
		else
		{
			if (_side == 0)
			{
				xx = obj_growtangle.x + 150;
				yy = obj_growtangle.y;
			}
			if (_side == 1)
			{
				xx = obj_growtangle.x - 150;
				yy = obj_growtangle.y;
			}
			if (_side == 2)
			{
				xx = obj_growtangle.x;
				yy = obj_growtangle.y - 100;
			}
		}
		lastside = _side;
		side = 0;
	}
	else
	{
		exit;
	}
	if (special == 4)
	{
		d = instance_create(xx, yy, obj_queen_search_window);
		if (made == side)
			d.search = 1;
		else if (made > 0)
			d.search = 2;
		else
			d.search = -1;
		d.damage = damage;
		d.target = target;
	}
	else if (special == 5)
	{
		d = instance_create(xx, yy, obj_queen_search_window);
		if (made == side)
			d.search = 2;
		else
			d.search = 3;
		d.damage = damage;
		d.target = target;
		if (made == 1)
			made = 3;
	}
	else if (special == 99)
	{
		d = instance_create(xx, yy, obj_queen_search_window_bday);
		if (made == -2)
			d.search = 3;
		else
			d.search = 4;
		d.damage = damage;
		d.target = target;
		if (made == 1)
			made = 3;
	}
	else if ((special % 2) == 0)
	{
		d = instance_create(xx, yy, obj_queen_search_window);
		if (made > 0)
			d.quick = true;
		if (made == side || made > 0)
			d.search = 1;
		else
			d.search = -1;
		d.damage = damage;
		d.target = target;
	}
	else if ((special % 2) == 1)
	{
		d = instance_create(xx, yy, obj_queen_search_window);
		if (made > 0)
			d.quick = true;
		if (made == side || made > 0 || bufferattack)
			d.search = 2;
		else
			d.search = -1;
		d.damage = damage;
		d.target = target;
		if (bufferattack)
			d.spawndelay = 14 - (made * 7);
	}
	if (special < 2 && made < 3)
	{
		made = 3;
		d.firsttime = true;
		btimer = -30;
	}
	else
	{
		made++;
		btimer = 0;
	}
	if (made < 3 && special == 5)
		btimer = -120;
}
else if (type == 1)
{
	if (init == 1)
	{
		d = instance_create(obj_growtangle.x, obj_growtangle.y, obj_queen_ultimate_attack_controller);
		d = instance_create(obj_heart.x, obj_heart.y, obj_hiddenheart);
		d.depth -= 20;
		init = 2;
	}
}
else if (type == 2 || type == 2.1 || type == 2.2)
{
	if (init == 1)
	{
		init = 2;
		btimer = 30;
		d = scr_bullet_create(x, y, obj_queen_wineglass);
		d.xx = x + 20;
		d.yy = y + 37;
		if (type == 2.1)
		{
			threshold = 8;
			wineadd = 4;
			turnamount *= 1.2;
			obj_queen_enemy.beatwine2nodamage = 1;
		}
		if (type == 2.2)
		{
			threshold = 6;
			wineadd = 3;
			turnamount *= 2;
		}
	}
	if (init == 3 || init == 4)
	{
		if (init == 3)
		{
			init = 4;
			with (obj_heartmarker)
				instance_destroy();
			instance_create(obj_growtangle.x - 8, obj_growtangle.y + 30, obj_heartmarker);
			scr_moveheart();
		}
		if ((btimer >= (threshold + (wineadded / 12)) && winedebug == 0) || (winedebug == 1 && button1_p()))
		{
			droplet[dropletcount] = instance_create(x, y, obj_queen_wine_attack_droplet);
			with (droplet[dropletcount])
			{
				scr_bullet_init();
				destroyonhit = 0;
			}
			if (instance_exists(obj_heart))
				droplet[dropletcount].depth = obj_heart.depth;
			droplet[dropletcount].sprite_index = spr_dropletbullet;
			droplet[dropletcount].ydist = 280;
			droplet[dropletcount].active = 1;
			droplet[dropletcount].xdist = -65 + random(130);
			droplet[dropletcount].timefrommade = 0;
			droplet[dropletcount].fakespeed = 2;
			droplet[dropletcount].boss = obj_queen_wineglass.id;
			with (droplet[dropletcount])
			{
				if (instance_exists(obj_queen_enemy))
					damage = global.monsterat[obj_queen_enemy.myself] * 5;
				if (instance_exists(obj_queen_bulletcontroller))
					target = obj_queen_bulletcontroller.target;
				grazepoints = 4;
			}
			dropletcount++;
			btimer = 0;
		}
		for (i = 0; i < dropletcount; i++)
		{
			with (droplet[i])
			{
				fakespeed += 0.2;
				timefrommade += fakespeed;
				image_angle = obj_queen_wineglass.image_angle;
				x2 = obj_queen_wineglass.x + lengthdir_x(ydist - timefrommade, image_angle + 90);
				y2 = obj_queen_wineglass.y + lengthdir_y(ydist - timefrommade, image_angle + 90);
				x3 = x2 + lengthdir_x(xdist, image_angle);
				y3 = y2 + lengthdir_y(xdist, image_angle);
				y = y3;
				x = x3;
				if (y3 >= (obj_queen_wineglass.y + 70 + ((75 - abs(xdist)) / 1.7)))
				{
					obj_queen_wineglass.prefill += obj_queen_bulletcontroller.wineadd;
					obj_queen_bulletcontroller.wineadded += 1;
					instance_destroy();
				}
			}
		}
		ctimer++;
		if (type == 2.1 || type == 2.2 || type == 2.3)
		{
			if (winedebug == 0)
			{
				obj_queen_wineglass.image_angle = sin(ctimer / turnperiod) * turnamount;
			}
			else
			{
				if (button2_h())
					obj_queen_wineglass.image_angle += 0.5;
				if (button3_h())
					obj_queen_wineglass.image_angle -= 0.5;
			}
			image_angle = obj_queen_wineglass.image_angle;
		}
		if (winedebug == 1)
			global.turntimer = 100;
	}
}
else if (type == 3 || type == 3.1 || type == 3.2 || type == 3.3 || type == 3.4)
{
	if (type == 3)
	{
		if (btimer >= 30)
		{
			chooselocation = irandom(2);
			if (stomplocation[0] == 0 && stomplocation[1] == 1 && stomplocation[2] == 1)
				chooselocation = 0;
			if (stomplocation[0] == 1 && stomplocation[1] == 0 && stomplocation[2] == 1)
				chooselocation = 1;
			if (stomplocation[0] == 1 && stomplocation[1] == 1 && stomplocation[2] == 0)
				chooselocation = 2;
			if (stomplocation[0] == 0 && stomplocation[1] == 0 && stomplocation[2] == 1)
				chooselocation = choose(0, 1);
			if (stomplocation[0] == 0 && stomplocation[1] == 1 && stomplocation[2] == 0)
				chooselocation = choose(0, 2);
			if (stomplocation[0] == 1 && stomplocation[1] == 0 && stomplocation[2] == 0)
				chooselocation = choose(1, 2);
			if (stomplocation[0] == 1 && stomplocation[1] == 1 && stomplocation[2] == 1)
			{
				stomplocation[0] = 0;
				stomplocation[1] = 0;
				stomplocation[2] = 0;
			}
			repeat (1)
			{
				if (chooselocation == 0)
				{
					d = scr_bullet_create(obj_growtangle.x + -47, miny - 4, obj_queen_leg);
					stomplocation[0] = 1;
				}
				if (chooselocation == 1)
				{
					d = scr_bullet_create(obj_growtangle.x, miny - 4, obj_queen_leg);
					stomplocation[1] = 1;
				}
				if (chooselocation == 2)
				{
					d = scr_bullet_create(obj_growtangle.x + 47, miny - 4, obj_queen_leg);
					stomplocation[2] = 1;
				}
				d.pos = chooselocation;
				d.shootbullets = 1;
			}
			btimer = 9;
		}
	}
	if (type == 3.1)
	{
		if (btimer >= 30)
		{
			d = scr_bullet_create(maxx + 4, obj_growtangle.y + choose(-47, 0, 47), obj_queen_leg);
			d.direction = 180;
			d.sprite_index = spr_queen_leg_side;
			btimer = 0;
		}
	}
	if (type == 3.2)
	{
		if (btimer == 110)
			d = scr_bullet_create(obj_growtangle.x + choose(-47, 0, 47), miny - 4, obj_queen_leg);
		if (btimer == 130)
		{
			d = scr_bullet_create(maxx + 4, obj_growtangle.y + choose(-47, 0, 47), obj_queen_leg);
			d.direction = 180;
			d.sprite_index = spr_queen_leg_side;
		}
		if (btimer == 150)
			d = scr_bullet_create(obj_growtangle.x + choose(-47, 0, 47), miny - 4, obj_queen_leg);
		if (btimer == 170)
		{
			d = scr_bullet_create(maxx + 4, obj_growtangle.y + choose(-47, 0, 47), obj_queen_leg);
			d.direction = 180;
			d.sprite_index = spr_queen_leg_side;
		}
		if (btimer == 190)
			d = scr_bullet_create(obj_growtangle.x + -47, miny - 4, obj_queen_leg);
		if (btimer == 192)
		{
			d = scr_bullet_create(maxx + 4, obj_growtangle.y + 0, obj_queen_leg);
			d.direction = 180;
			d.sprite_index = spr_queen_leg_side;
		}
	}
	if (type == 3.3)
	{
		if (btimer == 110)
		{
			d = scr_bullet_create(obj_growtangle.x, miny - 4, obj_queen_leg);
			d.special = 1;
			d = scr_bullet_create(obj_growtangle.x + 47, miny - 4, obj_queen_leg);
			d.special = 1;
		}
		if (btimer == 140)
		{
			d = scr_bullet_create(obj_growtangle.x - 47, miny - 4, obj_queen_leg);
			d.special = 2;
		}
		if (btimer > 140 && btimer < 154)
		{
			with (obj_queen_leg)
			{
				if (special == 1)
					stomplerp -= 0.01;
			}
		}
		if (btimer == 170)
		{
			d = scr_bullet_create(maxx + 4, obj_growtangle.y + 47, obj_queen_leg);
			d.direction = 180;
			d.sprite_index = spr_queen_leg_side;
			d.special = 3;
		}
	}
	if (type == 3.4)
	{
		if (btimer >= 30)
		{
			repeat (2)
			{
				if (a == 0)
					d = scr_bullet_create(obj_growtangle.x + -47, miny - 4, obj_queen_leg);
				if (a == 1)
					d = scr_bullet_create(obj_growtangle.x, miny - 4, obj_queen_leg);
				if (a == 2)
					d = scr_bullet_create(obj_growtangle.x + 47, miny - 4, obj_queen_leg);
				a += (1 + irandom(1));
				if (a > 2)
					a -= 3;
			}
			btimer = 0;
		}
	}
}
else if (type == 4)
{
	if (instance_exists(obj_queen_finger))
		btimer += ((obj_queen_finger.scrollSpeed / 4) - 1);
	if (init == 1)
	{
		btimer = 10;
		d = instance_create(obj_growtangle.x - 15, -40, obj_queen_sm_deleter);
		d.image_xscale = 2.5;
		d.image_yscale = 3.5;
		init = 2;
		extra = sprite_get_number(spr_queen_pfps) - 1;
		d = instance_create(camerax() + 660, cameray() + 500, obj_queen_finger);
		if (difficulty == 2)
			d.bigscrollcount = irandom(1) + 1;
		d.timer = 0;
	}
	if (btimer >= 10)
	{
		var spawnheight = (cameray() - 40) + (4 * (btimer - 10));
		var everyman = irandom(499) == 0;
		if (!everyman)
		{
			for (i = 0; i < 6; i++)
			{
				d = scr_bullet_create(minx + (i * 30), spawnheight, obj_queen_social_media);
				d.image_xscale = 1.25;
				d.image_yscale = 1.25;
				d.image_speed = 0.5;
				d.speed = 4;
				d.direction = 270;
			}
		}
		if (special != 5)
		{
			d = instance_create(minx - 40, spawnheight, obj_queen_pfp);
			d.image_speed = 0;
			d.direction = 270;
			d.speed = 4;
			d.image_index = everyman ? extra : irandom(extra - 1);
			d.image_xscale = 0.65;
			d.image_yscale = 0.65;
			if (everyman)
				special = 0;
			else
				special = irandom(5);
			btimer = 0;
		}
		else
		{
			special = 0;
			btimer = 5;
		}
	}
}
else if (type == 5)
{
	if (init == 1)
	{
		d = instance_create(obj_growtangle.x, miny - 66, obj_queen_spadeblow);
		d.depth = obj_growtangle.depth;
		d.image_speed = 0;
		d.difficulty = obj_queen_enemy.difficulty;
		init = 2;
	}
}
else if (type == 6 || type == 6.1)
{
	if (init == 1)
		init = 2;
	if (btimer > 30)
	{
		if (bufferattack)
		{
			d = instance_create(obj_growtangle.x + 150, obj_growtangle.y, obj_queen_explodinghead);
			d.damage = damage;
			d.target = target;
			d.buffer = bufferattack;
			d = instance_create(obj_growtangle.x - 150, obj_growtangle.y, obj_queen_explodinghead);
		}
		else
		{
			if (irandom(100) < 60)
				d = instance_create(obj_growtangle.x + (lastside * 150), (obj_growtangle.y - 70) + irandom(140), obj_queen_explodinghead_intro);
			else
				d = instance_create((obj_growtangle.x - 70) + irandom(140), obj_growtangle.y + (lastside * 150), obj_queen_explodinghead_intro);
			lastside *= -1;
		}
		d.buffer = bufferattack;
		d.damage = damage;
		d.target = target;
		d.laugh = 1;
		btimer = 0;
		if (type == 6)
			btimer = 2;
		if (type == 6.1)
			btimer = 15;
		if (init == 2)
		{
			d.first = 1;
			init = 3;
			if (type == 6)
				btimer = 15;
		}
	}
}
else if (type == 7)
{
	if (init == 1)
	{
		instance_create(obj_berdlyplug_enemy.x, obj_berdlyplug_enemy.y, obj_queen_berdlywireattack);
		obj_berdlyplug_enemy.visible = false;
		init = 2;
	}
}
else if (type == 100)
{
	if (btimer >= 15)
	{
		if (made == 0)
		{
			dir = 0;
			made = 1;
		}
		dir = dir + 30 + random(300);
		len = 140 + random(10);
		cenx = 0;
		ceny = 0;
		if (instance_exists(obj_growtangle))
			cenx = obj_growtangle.x;
		if (instance_exists(obj_growtangle))
			ceny = obj_growtangle.y;
		gun = instance_create(cenx + lengthdir_x(len, dir), ceny + lengthdir_y(len, dir), obj_queen_lasergun);
		btimer = 0;
	}
}
else if (type == 101 || type == 102)
{
	btimerthreshold = 31;
	if (type == 102)
		btimerthreshold = 22;
	if (btimer >= btimerthreshold)
	{
		if (made == 0)
		{
			yway = 1;
			goway = 0;
			remyway = 1;
			xway = 1;
			made = 1;
			times = 0;
		}
		if (times == 0)
		{
			goway = 0;
			yway = 1;
			xway = 1;
		}
		if (times == 1)
		{
			goway = 1;
			yway = 1;
			xway = -1;
		}
		if (times == 2)
		{
			goway = 0;
			yway = -1;
			xway = -1;
		}
		if (times == 3)
		{
			goway = 1;
			yway = -1;
			xway = 1;
		}
		times += choose(-1, 1);
		if (times <= -1)
			times = 3;
		if (times >= 4)
			times = 0;
		cenx = 0;
		ceny = 0;
		if (instance_exists(obj_growtangle))
			cenx = obj_growtangle.x;
		if (instance_exists(obj_growtangle))
			ceny = obj_growtangle.y;
		fromx = cenx + (75 * xway);
		fromy = ceny + (75 * yway);
		if (goway == 0)
		{
			for (i = 0; i < 4; i++)
			{
				gun = instance_create(fromx - (xway * 50 * i), ceny + (125 * yway), obj_queen_lasergun);
				gun.inittime = i * 4;
				gun.randomshot = 0;
				gun.shotsize = 0.5;
				gun.maxsize = 1;
			}
		}
		if (goway == 1)
		{
			for (i = 0; i < 4; i++)
			{
				gun = instance_create(cenx + (125 * xway), fromy - (yway * 50 * i), obj_queen_lasergun);
				gun.inittime = i * 4;
				gun.randomshot = 0;
				gun.shotsize = 0.5;
				gun.maxsize = 1;
			}
		}
		btimer = 0;
	}
}
else if (type == 105 || type == 106 || type == 107)
{
	if (!instance_exists(obj_social_media_attack_fade_heroes))
		instance_create(x, y, obj_social_media_attack_fade_heroes);
	timerthreshold = 15;
	if (type == 106)
		timerthreshold = 20;
	init++;
	if (init == 12)
	{
		snd_play(snd_crowd);
		snd_loop(snd_crowd);
		snd_pitch(snd_crowd, 0.85);
	}
	if (btimer >= timerthreshold)
	{
		make = 1;
		if (type == 107 && made >= 7)
			make = 0;
		if (type == 107 && made == 4)
			make = 0;
		if (make)
		{
			side = choose(-1, 1);
			if (type == 107)
				face = instance_create(obj_growtangle.x + (160 * side), -80, obj_socialmedia_avatar);
			else
				face = instance_create(obj_growtangle.x + (125 * side), -80, obj_socialmedia_avatar);
			face.vspeed = 5;
		}
		if (made == 4 && type == 107)
		{
			face = instance_create(obj_growtangle.x + 125, -80, obj_socialmedia_avatar);
			face.vspeed = 5;
			face.isqueen = 1;
			face.side = 1;
			face.x = obj_growtangle.x + 125;
		}
		btimer = 0;
		made++;
	}
}
else if (type == 110 || type == 111)
{
	if (made == 0 && instance_exists(obj_growtangle))
	{
		growtangle = instance_create(obj_growtangle.x, obj_growtangle.y, obj_growtangle_electric);
		growtangle.damage = damage;
		growtangle.target = target;
		if (type == 111)
			growtangle.type = 1;
		made = 1;
	}
}
else if (type == 112 || type == 113)
{
	if (made == 0 && instance_exists(obj_growtangle))
	{
		obj_berdlyplug_enemy.con = 1;
		bardly = instance_create(obj_growtangle.x, obj_growtangle.y - obj_growtangle.sprite_height, obj_berdly_tornadomaker);
		if (type == 113)
			bardly.difficulty = 3;
		made = 1;
	}
}
else if (type == 114)
{
	if (btimer >= 30)
	{
		if (made == 0)
		{
			dir = 0;
			made = 1;
		}
		dir = dir + 30 + random(300);
		len = 140 + random(10);
		cenx = 0;
		ceny = 0;
		if (instance_exists(obj_growtangle))
			cenx = obj_growtangle.x;
		if (instance_exists(obj_growtangle))
			ceny = obj_growtangle.y;
		gun = instance_create(cenx + lengthdir_x(len, dir), ceny + lengthdir_y(len, dir), obj_queen_lasergun);
		btimer = 0;
	}
	ctimer++;
	if (ctimer == 20 || ctimer == 150)
	{
		var a = choose(1, 2, 3);
		if (a == 1)
		{
			xx = obj_growtangle.x + 150;
			yy = (obj_growtangle.y - 50) + irandom(100);
		}
		if (a == 2)
		{
			xx = obj_growtangle.x - 150;
			yy = (obj_growtangle.y - 50) + irandom(100);
		}
		if (a == 3)
		{
			xx = (obj_growtangle.x - 50) + irandom(100);
			yy = obj_growtangle.y - 100;
		}
		d = instance_create(xx, yy, obj_queen_search_window);
		d.quick = true;
		d.search = 2;
		d.damage = damage;
		d.target = target;
	}
}
else if (type == 115)
{
	if (btimer >= 30)
	{
		if (made == 0)
		{
			dir = 0;
			made = 1;
		}
		dir = dir + 30 + random(300);
		len = 140 + random(10);
		cenx = 0;
		ceny = 0;
		if (instance_exists(obj_growtangle))
			cenx = obj_growtangle.x;
		if (instance_exists(obj_growtangle))
			ceny = obj_growtangle.y;
		gun = instance_create(cenx + lengthdir_x(len, dir), ceny + lengthdir_y(len, dir), obj_queen_lasergun);
		btimer = 0;
	}
	ctimer++;
	if (ctimer == 50)
	{
		var a = irandom(2);
		repeat (1)
		{
			if (a == 0)
				d = scr_bullet_create(obj_growtangle.x + -47, miny - 4, obj_queen_leg);
			if (a == 1)
				d = scr_bullet_create(obj_growtangle.x, miny - 4, obj_queen_leg);
			if (a == 2)
				d = scr_bullet_create(obj_growtangle.x + 47, miny - 4, obj_queen_leg);
			d.pos = a;
			a += (1 + irandom(1));
			if (a > 2)
				a -= 3;
		}
		ctimer = 0;
	}
}
else if (type == 116)
{
	if (made == 0)
	{
		dir = 0;
		made = 1;
		ctimer = 89;
		dtimer = 64;
	}
	if (btimer >= 105)
	{
		dir = dir + 30 + random(300);
		len = 140 + random(10);
		cenx = 0;
		ceny = 0;
		if (instance_exists(obj_growtangle))
			cenx = obj_growtangle.x;
		if (instance_exists(obj_growtangle))
			ceny = obj_growtangle.y;
		gun = instance_create(cenx + lengthdir_x(len, dir), ceny + lengthdir_y(len, dir), obj_queen_lasergun);
		btimer = 55;
	}
	ctimer++;
	if (ctimer == 94)
	{
		var a = irandom(2);
		repeat (1)
		{
			if (a == 0)
				d = scr_bullet_create(obj_growtangle.x + -47, miny - 4, obj_queen_leg);
			if (a == 1)
				d = scr_bullet_create(obj_growtangle.x, miny - 4, obj_queen_leg);
			if (a == 2)
				d = scr_bullet_create(obj_growtangle.x + 47, miny - 4, obj_queen_leg);
			d.pos = a;
			a += (1 + irandom(1));
			if (a > 2)
				a -= 3;
		}
		ctimer = 0;
	}
	dtimer++;
	if (dtimer == 65)
	{
		if (irandom(100) < 60)
			d = instance_create(obj_growtangle.x + (lastside * 150), (obj_growtangle.y - 70) + irandom(140), obj_queen_explodinghead_intro);
		else
			d = instance_create((obj_growtangle.x - 70) + irandom(140), obj_growtangle.y + (lastside * 150), obj_queen_explodinghead_intro);
		lastside *= -1;
		dtimer = 0;
	}
}
else if (init == 1)
{
	init = 2;
}
