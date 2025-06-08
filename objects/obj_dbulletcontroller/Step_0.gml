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
btimer += 1;
if (type == 0)
{
	if (btimer >= (timermax * ratio))
	{
		btimer = 0;
		dir = 30 + random(120);
		radius = 140 + random(80);
		var xx = lengthdir_x(radius, dir);
		var yy = lengthdir_y(radius, dir);
		bm = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_maker);
		bm.grazepoints = grazepoints;
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
		var yy = radius * side;
		var xx = -100 + random(200);
		num = choose(0, 1, 2, 3);
		if (num == 3)
			xx = -10 + random(20);
		d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_dbullet_vert);
		d.damage = damage;
		d.target = target;
	}
}
else if (type == 2)
{
	if (btimer >= (10 * ratio))
	{
		btimer = 0;
		radius = 120 + random(80);
		bm = instance_create(x, y, obj_yarnmaker);
		scr_bullet_inherit(bm);
		var childgravity = 0.5;
		var launchspeed = scr_remapvalue(40, 200, y - cameray(), 8, 16);
		if ((made % 3) == 2)
			bm.direction = 180 - scr_getlaunchdirection(launchspeed, (x - obj_heart.x) + 4, childgravity, 1);
		else
			bm.direction = 180 - scr_getlaunchdirection(launchspeed, random(250) + (x - maxx), childgravity, 1);
		bm.damage = damage;
		bm.target = target;
		bm.childgravity = 0.6;
		bm.childspeed = launchspeed;
		bm.grazepoints = 7;
		bm.image_angle = direction;
		made++;
	}
}
else if (type == 3)
{
	if (init == 1)
	{
		init = 2;
		special = instance_create(x, y, obj_tasque_meowing);
		special.loop = 0;
		special.image_speed = 0;
		special.creator = creator;
		special.depth = global.monsterinstance[creator].depth;
		global.monsterinstance[creator].visible = 0;
		if (sameattacker >= 1)
			btimer = random_range(6, 18) * ratio * (1 + difficulty);
	}
	if (btimer >= (((difficulty >= 2) ? 40 : 24) * ratio * (1 + difficulty)))
	{
		btimer = 0;
		d = instance_create(x + 28, y + 34, obj_chainbullet);
		d.childBullet = 456;
		snd_play_x(snd_electric_meow, 0.8, random_range(0.8, 1.2));
		d.element = 6;
		d.damage = damage;
		d.grazepoints = 1.4;
		d.direction = point_direction(x + 28, y + 34, obj_heart.x + 8, obj_heart.y + 8);
		d.childSpeed = (difficulty == 1) ? 4 : 7;
		d.firingSpeed = 2;
		d.target = target;
		d.sprite_index = spr_meow;
		special.image_speed = 0.5;
		special.image_index = 0;
	}
}
else if (type == 4 && (sameattack < 3 || creator < 2))
{
	if (btimer > 7)
	{
		btimer = 0;
		var xx = x - (made * 30);
		var yy = maxy;
		d = instance_create(xx, yy, obj_chainbullet);
		d.damage = damage;
		d.grazepoints = 4;
		d.direction = 90;
		d.childSpeed = 7;
		d.childgravity = 0.25;
		d.firingSpeed = 2;
		d.target = target;
		d.sprite_index = spr_diamondbullet_vert;
		made++;
	}
}
else if (type == 5)
{
	if (init == 1)
	{
		btimer = 12 * ratio;
		made = sameattacker;
		init = 2;
		if (obj_swatchling_battle_controller.yellow_count > 0)
		{
			var _birdcount = obj_swatchling_battle_controller.bird_count;
			obj_swatchling_battle_controller.bird_color[_birdcount] = (special == 1) ? c_orange : c_red;
			obj_swatchling_battle_controller.red_target[_birdcount] = target;
			obj_swatchling_battle_controller.red_damage[_birdcount] = damage;
			obj_swatchling_battle_controller.bird_count++;
			init = 3;
		}
		else
		{
			btimer -= (sameattacker * 4 * ratio);
		}
	}
	if (btimer >= (12 * ratio) && init <= 2)
	{
		var xx = choose(minx - 35, maxx + 35) + random_range(-15, 15);
		var yy = random_range(miny - 20, maxy + 20);
		d = scr_bullet_create(xx, yy, obj_swatchling_bird);
		d.image_blend = (special == 1) ? c_orange : c_red;
		d.grazepoints = 4;
		d.depth -= 11;
		btimer = 0;
	}
}
else if (type == 6)
{
	if (init == 1)
	{
		ratio = 1;
		if (scr_monsterpop() == 2)
		{
			if (sameattack == 2)
				ratio = 1.2;
			else
				ratio = 1;
		}
		if (scr_monsterpop() == 3)
		{
			if (sameattack == 3)
				ratio = 1.5;
			else if (sameattack == 2)
				ratio = 1.7;
			else
				ratio = 1.2;
		}
		init = 2;
		candyindex = irandom(6);
		if (sameattacker > 0)
			btimer = 30 * ratio * (1 - (sameattacker / sameattack));
	}
	if (btimer > (30 * ratio))
	{
		var _sbw = 447;
		side = _sbw.platter_side;
		_sbw.platter_side *= -1;
		btimer = 0;
		var _bounce = _sbw.blue_count > 0;
		var _birds = _sbw.red_count;
		var yy = miny - 30;
		var xx = obj_growtangle.x + (((obj_growtangle.sprite_width / 2) + 10) * side);
		d = instance_create(xx, yy, obj_swatchling_platter);
		d.speed = (sameattack || _combo == 3) ? 3 : 4;
		d.direction = 270;
		side *= -1;
		d.grazepoints = 4;
		if (special)
			d.hasCandy = irandom(6) == 6;
		else if (made == candyindex)
			d.hasCandy = 1;
		d.birds = _birds;
		d.timer = -1 - _sbw.platter_offset;
		_sbw.platter_offset = (_sbw.platter_offset + 5) % 30;
		d.damage = damage;
		d.target = target;
		d.startColor = special ? c_green : c_yellow;
		d.platterPlate.image_blend = image_blend == d.startColor;
		d.platterLid.image_blend = image_blend == d.startColor;
		made++;
	}
}
else if (type == 7)
{
	if (special == 0)
	{
		special = 1;
		d = instance_create(x + 82, y + 68, obj_swatchling_cannonball);
		d.creator = creator;
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		d.childgraze = 4;
		global.monsterinstance[creator].visible = 0;
		if (sameattack > 1)
			d.trackplayer = -1;
		if (sameattack > 2)
			d.spawnbullets = 0;
	}
}
else if (type == 8)
{
	if (init == 1 && difficulty == 1)
	{
		special = 1;
		init = 2;
		global.turntimer = 200;
	}
	if (btimer > (((difficulty == 0) ? 45 : 45) * ratio))
	{
		pattern = irandom(1);
		startDelay = -10;
		if (difficulty == 0)
		{
			var xx = maxx + 30;
			var yy = 0;
			yshift = (obj_growtangle.sprite_height / 3) - 14;
			if (irandom(1) == 0)
			{
				yy = miny + 22;
			}
			else
			{
				yy = maxy - 22;
				yshift = -yshift;
			}
			for (var i = 0; i < 4; i++)
			{
				d = scr_bullet_create(xx, yy, obj_berdlyb_tornado);
				yy += yshift;
				d.maxSpeed = 6;
				d.timer = startDelay;
				d.grazepoints = 5;
				d.direction = 180;
				d.image_alpha = 0;
				if (pattern && (i % 2) == 1)
					startDelay += 10;
				else
					startDelay -= 10;
				d.image_alpha = 0 - (i * 0.1);
				d.flipTimer = i - 4;
			}
		}
		else if (difficulty == 1)
		{
			var startDir = irandom(360);
			var spawnDir = 45;
			var xx = maxx + 30;
			var yy = 0;
			yshift = (obj_growtangle.sprite_height / 3) - 14;
			if (irandom(1) == 0)
			{
				yy = miny + 22;
			}
			else
			{
				yy = maxy - 22;
				yshift = -yshift;
			}
			var _spindir = choose(-1, 1);
			for (var i = 0; i < 8; i++)
			{
				pattern = 1;
				xx = obj_growtangle.x + lengthdir_x(240, startDir);
				yy = obj_growtangle.y + lengthdir_y(240, startDir);
				d = scr_bullet_create(xx, yy, obj_berdlyb_tornado);
				d.direction = startDir + 180;
				d.maxSpeed = 6;
				d.grazepoints = 5;
				d.timer = startDelay;
				d.maxdistance = 240;
				d.image_alpha = 0;
				d.spindir = _spindir;
				if (pattern)
				{
					if ((i % 2) == 1)
						startDelay += 15;
					else
						startDelay -= 15;
				}
				else
				{
					startDelay -= 5;
				}
				if (special == 1)
					d.firstwave = true;
				else if (special == 2)
					startDelay += 12.831853071795862;
				d.image_alpha = 0 - (i * 0.1);
				d.flipTimer = i - 4;
				d.middespawn = 1;
				startDir += spawnDir;
			}
			side = 1 - side;
		}
		if (special == 1)
		{
			special = 0;
		}
		else if (special == 2)
		{
			special = 0;
			btimer = 0;
		}
		else
		{
			btimer = (pattern && difficulty == 0) ? 10 : 0;
		}
	}
}
else if (type == 9)
{
	if (init == 1)
	{
		berdly = instance_create(x - 18, y - 114, obj_berdlyb_spearblaster);
		global.monsterinstance[creator].visible = 0;
		berdly.creator = creator;
		init = 2;
		special = choose(0, 1);
	}
	if (btimer > (((difficulty >= 1) ? 50 : 30) * ratio) && made < 6)
	{
		d = instance_create(x + 24, y + 30, obj_berdlyb_spearblast);
		d.grazepoints = 2;
		d.childgraze = 1;
		btimer = 10;
		d.timepoints = 0.5;
		d.damage = damage;
		d.target = target;
		d.pathLifetime = 2;
		if (difficulty == 2 || (made % 2) == special)
			d.aim_at_player = true;
		d.special = difficulty;
		made++;
	}
}
else if (type == 10)
{
	if (init == 1)
	{
		if (difficulty == 0)
			difficulty = choose(-1, 0);
		init = 2;
		maxmake = (difficulty == 1) ? 3 : 2;
	}
	if (btimer >= (50 * ratio) && made < maxmake)
	{
		d = instance_create(x + 46, y + 40, obj_berdlyb_chirashistorm);
		d.target = target;
		d.damage = damage;
		d.difficulty = difficulty;
		d.grazepoints = 4;
		if (made > 0 && scr_monsterpop() == 1)
			d.first_set = false;
		made++;
		btimer = 0;
		if (difficulty < 1)
			difficulty = -1 - difficulty;
	}
}
else if (type == 11)
{
	if (init == 1)
	{
		if (sameattacker == 1)
		{
			btimer = irandom(20 * ratio);
			made = irandom(1);
		}
		init = 2;
	}
	var _btimeSpeed = (sameattack == 1) ? 12 : 15;
	if (special)
		_btimeSpeed += 5;
	if (btimer >= (_btimeSpeed * ratio))
	{
		dir = random(360);
		radius = 140 + random(40);
		var xx = lengthdir_x(radius, dir) + obj_growtangle.x;
		var yy = lengthdir_y(radius, dir) + obj_growtangle.y;
		d = instance_create(xx, yy, obj_poppup_bird);
		d.speed = special ? 3 : 5;
		if (special)
		{
			d.slow = 0.6;
			d.image_speed = 0.6;
		}
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		btimer = 0;
		if (made == 1)
			d.targetplayer = special ? 2 : 1;
		made = 1 - made;
	}
}
else if (type == 12 && sameattacker == 0)
{
	if (init == 1)
	{
		instance_create(mouse_x, mouse_y, obj_poppup_mouse);
		d = instance_create(obj_heart.x, obj_heart.y, obj_hiddenheart);
		d.depth -= 20;
		init = 2;
	}
	var _btime = (sameattack == 2) ? 15 : 20;
	if (special)
		_btime += 5;
	if (btimer >= ((sameattack == 2) ? 15 : 20))
	{
		with (obj_poppup_ad)
			depth++;
		if (made >= ((sameattack == 2) ? 5 : 3))
		{
			var popup = instance_find(obj_poppup_ad, 0);
			if (popup != -4)
				popup.state = 2;
		}
		var xx = (obj_growtangle.x + (irandom(60) * 2)) - 60;
		var yy = (obj_growtangle.y + (irandom(60) * 2)) - 60;
		d = instance_create(xx, yy, obj_poppup_ad);
		d.depth -= 15;
		if (special)
		{
			d.slow = true;
			d.scalespeed = 0.75;
		}
		if (made < ((sameattack == 2) ? 5 : 3))
			made++;
		btimer = 0;
	}
}
else if (type == 13)
{
	if (made > 0)
		exit;
	if (sameattacker == 0)
	{
		side = irandom(2);
		monstercount = scr_monsterpop();
		yoffset = 5;
		if (monstercount != sameattack)
			yoffset += 20;
		made = 1;
		sidedirection = (irandom(1) * 2) - 1;
		cars = scr_monsterattacknamecount("CarChase") > 0 || scr_monsterattackidcount(16) > 0;
		for (var i = 0; i < ((monstercount == 1) ? 2 : 3); i++)
		{
			var xx = obj_growtangle.x;
			if (sameattack == 1)
				xx = xx + (70 * -sidedirection);
			d = instance_create(xx, miny - yoffset, obj_viro_invaderfleet);
			d.lborder = minx + 10;
			d.rborder = maxx - 10;
			d.fleetsize = sameattack;
			d.fleetspeed = monstercount;
			d.grazepoints = 5;
			d.caralert = cars;
			d.movedirection *= sidedirection;
			yoffset += ((monstercount == 1) ? 40 : 20);
			sidedirection *= -1;
			d.damage = damage;
			d.target = target;
			if (i == side)
				d.shottimer = (sameattack == monstercount) ? 15 : 5;
			if (sameattack == monstercount)
			{
				d.bigshot = true;
				d.grazepoints = 4;
			}
		}
	}
	else if (sameattacker == 1 && instance_exists(obj_viro_invaderfleet))
	{
		obj_viro_invaderfleet.targetB = target;
		made = 1;
	}
}
else if (type == 14)
{
	if (btimer >= ((ratio == 1) ? 6 : (10 * ratio)))
	{
		var xx = maxx + 40 + random(140);
		if (sameattacker == 1)
			xx = minx - 40 - random(140);
		var yy = miny + random(obj_growtangle.sprite_height);
		if (scr_monsterpop() == 1)
		{
			special--;
			if (special == 0)
				yy = obj_heart.y + 10;
			if (special <= 0)
				special = irandom(5) + 5;
		}
		d = instance_create(xx, yy, obj_viro_needle);
		btimer = 0;
		d.direction = (sameattacker == 0) ? 180 : 0;
		d.image_angle = direction;
		d.damage = damage;
		d.target = target;
		d.grazepoints = 5;
		d.speed = 1;
		if (scr_monsterpop() == 1)
			d.friction = -0.2;
		else
			d.friction = -0.15;
	}
}
else if (type == 15)
{
	if (init == 1)
	{
		if (scr_monsterpop() == sameattack || scr_monsterattacknamecount("Viruses") == 1 || scr_monsterattackidcount(14) == 1)
			ratio *= 0.75;
		init = 2;
	}
	if (btimer >= (10 * ratio))
	{
		var xx = (sameattacker == 0) ? (minx - 40 - random(140)) : (maxx + 40 + random(140));
		var yy = miny + random(obj_growtangle.sprite_height);
		d = instance_create(xx, yy, obj_omawaroid_vaccine);
		d.grazepoints = 4;
		d.direction = (sameattacker == 0) ? 0 : 180;
		d.damage = damage;
		d.target = target;
		d.speed = (scr_monsterpop() == 1) ? 7 : 5;
		btimer = 0;
	}
}
else if (type == 16)
{
	if (init == 1)
	{
		if (!instance_exists(obj_omawaroid_street))
		{
			street = instance_create(obj_growtangle.x, obj_growtangle.y, obj_omawaroid_street);
			if (special != 0)
				street.hitcheck = special;
			street.boxLeft = minx;
			street.boxTop = miny;
			street.driveSpeed = 6;
			street.depth += 2;
			street.init = 2;
		}
		else
		{
			street = 419;
			if (special != 0)
				street.hitcheck = special;
			btimer = 0;
			init = 3;
		}
		carside = (irandom(1) * 2) - 1;
		lastside = 0;
		if (sameattack > 1)
		{
			side = (sameattacker * 2) - 1;
			if (sameattacker == 1)
				btimer = 20;
		}
		else
		{
			side = (irandom(1) * 2) - 1;
		}
		made = 1;
	}
	if (btimer >= (20 * sameattack))
	{
		d = instance_create(obj_growtangle.x + ((40 + random(20)) * side), miny - 30, obj_omawaroid_cactus);
		if (sameattack == 1)
			side *= -1;
		d.direction = 270;
		d.speed = 6;
		d.grazepoints = 4;
		d.damage = damage;
		d.target = target;
		d.destroyonhit = 0;
		made++;
		if (made == 2)
		{
			var lastTimeSpeed = (carside == 1) ? street.lastRightCarSpeed : street.lastLeftCarSpeed;
			var xoffset = (init < 3) ? 15 : (irandom(10) + 10);
			street.lastside = carside;
			if (street.anti_cheese == 2)
				carside = street.lastside;
			else
				carside = (irandom(1) * 2) - 1;
			lastTimeSpeed = (carside == 1) ? street.lastRightCarSpeed : street.lastLeftCarSpeed;
			if (street.lastside == carside && sameattack == 2 && lastTimeSpeed == 2)
				carside = -carside;
			if (street.lastside == carside)
			{
				if (carside == 1)
					street.lastLeftCarSpeed = 99;
				else
					street.lastRightCarSpeed = 99;
			}
			d = instance_create(obj_growtangle.x + (xoffset * carside), maxy + 26, obj_omawaroid_policecar);
			d.direction = 90;
			d.speed = irandom(2) + 2;
			if (street.anti_cheese == 1)
			{
				d.speed = (sameattack == 2) ? 3 : 2;
			}
			else if (sameattack == 2 || scr_monsterpop() == 1)
			{
				var laneswitchSpeed = (sameattack == 2 && carside == street.lastside) ? 3 : 2;
				if ((lastTimeSpeed == laneswitchSpeed && carside == street.lastside) || street.anti_cheese == 2)
					d.speed = 4;
			}
			if (street.anti_cheese == 1)
				street.anti_cheese = 2;
			else if (street.anti_cheese == 2)
				street.anti_cheese = -2;
			if (carside == 1)
				street.lastRightCarSpeed = d.speed;
			else
				street.lastLeftCarSpeed = d.speed;
			d.damage = damage;
			d.target = target;
			d.destroyonhit = 0;
			d.grazepoints = 4;
			made = 0;
			init = 3;
		}
		btimer = 0;
	}
}
else if (type == 17)
{
	if (init == 1)
	{
		if (scr_monsterpop() == 1)
			ratio = 0.5;
		else if (sameattack == 1)
			ratio = 0.75;
		if (sameattacker <= 1)
		{
			d = instance_create(obj_growtangle.x + 1, obj_growtangle.y + 1, obj_maus_holes);
			d.damage = damage;
			d.grazepoints = 4;
			d.target = target;
		}
		init = 2;
	}
	else if (btimer >= (20 * ratio))
	{
		obj_maus_holes.mausqueue++;
		if (scr_monsterpop() == 1)
		{
			obj_maus_holes.bigmaus++;
			obj_maus_holes.alarm[0] = 21;
		}
		btimer = 0;
	}
}
else if (type == 18)
{
}
else if (type == 19)
{
	if (init == 1)
	{
		if (instance_exists(obj_mauswheel_enemy))
		{
			if (obj_mauswheel_enemy.firstturn == 1)
				global.turntimer = 120;
			else
				global.turntimer = 250;
			obj_mauswheel_enemy.firstturn = 0;
		}
		d = instance_create(x, y, obj_maus_cursor_follow);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		d = instance_create(x, y, obj_player_trail);
		d.depth = obj_heart.depth + 1;
		init = 2;
		d.damage = damage;
		d.target = target;
	}
	if (btimer == 140 && instance_exists(obj_mauswheel_enemy) && obj_mauswheel_enemy.cursor_count > 1)
	{
		d = instance_create(obj_mauswheel_enemy.x + 62, obj_mauswheel_enemy.y + 70, obj_maushwheel_lightning_orb);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
	}
	if (btimer == 200 && instance_exists(obj_mauswheel_enemy) && obj_mauswheel_enemy.cursor_count > 1)
	{
		d = instance_create(obj_mauswheel_enemy.x + 62, obj_mauswheel_enemy.y + 70, obj_maushwheel_lightning_orb);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
	}
	if (btimer == 270 && instance_exists(obj_mauswheel_enemy) && obj_mauswheel_enemy.cursor_count > 1)
	{
		d = instance_create(obj_mauswheel_enemy.x + 62, obj_mauswheel_enemy.y + 70, obj_maushwheel_lightning_orb);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
	}
}
else if (type == 20)
{
	if (init == 1)
	{
		d = instance_create(x - 22, y - 6, obj_tm_whip_attack);
		d.depth = global.monsterinstance[creator].depth;
		global.monsterinstance[creator].visible = 0;
		d.creator = creator;
		d.damage = damage;
		d.target = target;
		d.element = 6;
		d.grazepoints = 4;
		d.difficulty = scr_monsterpop() == 1;
		d.animSpeed = 1;
		init = 2;
	}
}
else if (type == 21)
{
	if (init == 1)
		init = 2;
}
else if (type == 22)
{
	if (init == 1)
	{
		btimer = 115;
		init = 2;
		side = irandom(3);
	}
	if (btimer >= 120)
	{
		var distance = (obj_growtangle.sprite_height / 2) + 30;
		var offset = -40;
		var xx = obj_growtangle.x;
		var yy = obj_growtangle.y;
		if (side >= 2)
			distance *= -1;
		if (side == 0 || side == 2)
		{
			xx -= distance;
			yy += offset;
		}
		else
		{
			yy += distance;
			xx += offset;
		}
		for (var i = 0; i < 2; i++)
		{
			d = instance_create(xx, yy, obj_musicalfight_speakers);
			d.direction = side * 90;
			d.damage = damage;
			d.target = target;
			d.grazepoints = 4;
			if (side == 0 || side == 2)
				yy += 80;
			else
				xx += 80;
		}
		btimer = 0;
		side = (side + 1) % 4;
	}
}
else if (type >= 23 && type <= 25)
{
	if (init == 1)
	{
		global.monsterinstance[creator].visible = 0;
		d = instance_create(x, y, obj_spamton_attack_mode);
		d.creator = creator;
		d.attack = type - 23;
		d.depth++;
		init = 2;
		btimer = -10;
		if (type == 25)
			instance_create(obj_growtangle.x, obj_growtangle.y, obj_spamton_warped_box);
		if (type == 23)
		{
			d.bullettype = 590;
			d.firingspeed = 10;
		}
		else if (type == 24)
		{
			d.bullettype = 591;
			d.firingspeed = 28;
			btimer = 10;
		}
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
	}
	else if (type == 25 && btimer >= 8 && global.turntimer > 50)
	{
		var xx = minx - random(30) - 20;
		var yy = (obj_growtangle.y - random(200)) + 100;
		d = instance_create(xx, yy, obj_spamton_dollar);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
		d.speed = 0.1;
		btimer = 0;
	}
}
else if (type == 26 && init == 1)
{
	var _thrash = obj_rouxls_enemy.thrash;
	obj_rouxls_enemy.head_difficulty = 1;
	var headattack = _thrash.part[1];
	obj_rouxls_enemy.headattack = 1;
	if (headattack != 3)
		obj_rouxls_enemy.thrashmode = 1;
	switch (headattack)
	{
		case 0:
			d = instance_create(0, 0, obj_thrash_laserattack);
			d.grazepoints = 8;
			d.thrash = _thrash;
			d.damage = damage;
			break;
		case 1:
			d = instance_create(0, 0, obj_thrash_swordattack);
			d.grazepoints = 8;
			d.thrash = _thrash;
			d.damage = damage;
			break;
		case 2:
			d = instance_create(0, 0, obj_thrash_flameattack);
			d.grazepoints = 8;
			d.thrash = _thrash;
			d.damage = damage;
			break;
		case 3:
			d = instance_create(0, 0, obj_thrash_duck_attack);
			d.grazepoints = 24;
			d.thrash = _thrash;
			d.damage = 1;
			break;
	}
	d.difficulty = difficulty;
	d.target = target;
	init = 2;
}
else if (type == 27)
{
	x = obj_rouxls_enemy.x;
	y = obj_rouxls_enemy.y;
	var _thrash = obj_rouxls_enemy.thrash;
	var legattack = _thrash.part[2];
	var thrashcon = obj_rouxls_enemy.thrashcon;
	obj_rouxls_enemy.headattack = 0;
	if (init == 1)
	{
		obj_rouxls_enemy.wheel_difficulty = 1;
		obj_rouxls_enemy.thrashmode = 1;
		init = 2;
		d = instance_create(x, y, obj_thrash_bodyhitbox);
		d.thrash = _thrash;
		d.grazepoints = 15;
		d.damage = damage;
		d.target = target;
		if (_thrash.part[0] == 3)
		{
			d.damage = 1;
			if (_thrash.part[1] == 3)
				d.duckmode = 1;
		}
	}
	if (thrashcon <= 2)
		btimer = 10;
	switch (legattack)
	{
		case 0:
			obj_rouxls_enemy.advancespeed = 7;
			obj_rouxls_enemy.returnspeed = 7;
			if ((thrashcon == 3 || thrashcon == 5) && _thrash.stomp != 0)
			{
				for (var i = 0; i < 1; i++)
				{
					if (i == 0)
					{
						d = instance_create(x + 30, gt_maxy() - 36, obj_animation);
						d.sprite_index = spr_thrash_bash;
						d.image_xscale = choose(3, -3);
						d.image_yscale = 3;
					}
					d = instance_create(x + 30, y + 190, obj_thrash_stomp_bullet);
					d.direction = point_direction(d.x, d.y, obj_growtangle.x, obj_growtangle.y - 600) + random_range(-30, 30);
					d.spin = sign(d.direction - 90) * random_range(1, 10);
					d.speed = random_range(8, 10);
					d.sprite_index = spr_thrash_star;
					d.gravity = 0.25;
					d.depth = obj_rouxls_enemy.depth - 1;
					d.grazepoints = 8;
					d.imageonly = 1;
					d.damage = damage;
					d.target = target;
				}
				_thrash.stomp = 0;
			}
			break;
		case 1:
			obj_rouxls_enemy.advancespeed = 12;
			obj_rouxls_enemy.returnspeed = 5;
			if (thrashcon == 4 && btimer >= 12 && obj_rouxls_enemy.thrashtimer <= 90)
			{
				d = instance_create(x + 30, y + 190, obj_thrash_wheel_bullet);
				d.direction = random_range(40, 88);
				d.speed = scr_remapvalue(40, 85, d.direction, 4, 8) + random(3);
				d.bounce = 1;
				d.sprite_index = spr_thrash_wheel;
				d.image_yscale = 1.5;
				d.image_xscale = 1.5;
				d.gravity = 0.25;
				d.depth = obj_rouxls_enemy.depth - 1;
				d.grazepoints = 10;
				d.damage = damage;
				d.target = target;
				btimer = 0;
			}
			break;
		case 2:
			obj_rouxls_enemy.advancespeed = 4;
			obj_rouxls_enemy.returnspeed = 8;
			if (thrashcon == 3 && btimer >= 11)
			{
				d = instance_create(x + 13 + (8 * made), y + 197, obj_thrash_missiles);
				d.direction = 90;
				d.speed = 2;
				d.gravity = -0.2;
				d.depth = _thrash.depth - 1;
				d.grazepoints = 8;
				d.damage = damage;
				d.target = target;
				btimer = 0;
				made++;
			}
			break;
		case 3:
			obj_rouxls_enemy.advancespeed = 7;
			obj_rouxls_enemy.returnspeed = 7;
			break;
	}
}
else if (type == 28)
{
	if (btimer >= max(10, 15 - (made / 2)))
	{
		var xoffset;
		if (init == 1)
		{
			obj_rouxls_enemy.saberanim = 1;
			xoffset = irandom(3);
			btimer = 10;
			special = -1;
			init = 2;
			exit;
		}
		else
		{
			xoffset = irandom(2);
		}
		if (xoffset == special)
			xoffset = 3;
		var leftx = obj_growtangle.x - 53;
		d = instance_create(leftx + (xoffset * 36), cameray() - 20, obj_rouxls_fallingblock);
		d.gravity = 0.25;
		d.vspeed = 3.5;
		d.damage = damage;
		d.grazepoints = 8;
		d.target = target;
		special = xoffset;
		btimer = 0;
		made++;
	}
}
else if (type == 29)
{
	if (init == 1)
	{
		special = irandom(2);
		init = 2;
	}
	var xx = x;
	var yy = y;
	d = instance_create(xx, yy, obj_thrash_laserbullet);
	d.direction = 0;
	d.damage = damage;
	d.target = target;
	d.grazepoints = 4;
	d.attackdirection = special;
	special = (special + irandom(1)) % 3;
}
else if (type == 30)
{
	if (btimer >= (20 * ratio))
	{
		var xx = __view_get(e__VW.XView, 0) - 20;
		if (side == 1)
			xx = __view_get(e__VW.XView, 0) + 660;
		var yy = miny + random(maxy - miny);
		bul = instance_create(xx, yy, obj_clubsbullet);
		bul.speed = 12;
		bul.damage = damage;
		bul.target = target;
		bul.grazepoints = 4;
		if (side == 1)
		{
			bul.direction = 180;
			bul.image_angle = 180;
		}
		btimer = 0;
	}
}
else if (type == 31)
{
	if (btimer >= (30 * ratio))
	{
		btimer = 0;
		if (side == -1)
			dir = 225;
		if (side == 1)
			dir = 315;
		radius = 400;
		var xx = lengthdir_x(radius, dir);
		var yy = lengthdir_y(radius, dir);
		d = instance_create(obj_heart.x + 8 + xx, obj_heart.y + 8 + yy, obj_clubsbullet_dark);
		d.damage = damage;
		d.target = target;
		d.grazepoints = 4;
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
else if (type == 32)
{
	if (init == 1)
	{
		dd = 0;
		dd2 = 0;
		phase = 0;
		strikes = 0;
		if (special == 1)
			global.turntimer = 5400;
		var xx = obj_growtangle.x;
		var yy = obj_growtangle.y;
		d = instance_create(xx + 1, yy, obj_bulletparent);
		d.sprite_index = spr_tm_grid;
		d.image_angle = 45;
		d.image_blend = c_gray;
		d.element = 6;
		d.depth = obj_growtangle.depth - 1;
		for (var i = 0; i < 4; i++)
		{
			xx = obj_growtangle.x;
			yy = obj_growtangle.y;
			if (i == 0 || i == 3)
				yy += ((i == 0) ? -50 : 50);
			else
				xx += ((i == 1) ? -50 : 50);
			d = instance_create(xx, yy, obj_bulletparent);
			d.sprite_index = spr_tm_letters;
			d.image_speed = 0;
			d.image_index = i;
			d.element = 6;
			d.image_blend = c_gray;
			d.depth = obj_growtangle.depth - 1;
		}
		obj_growtangle.target_angle = 45;
		obj_growtangle.image_angle = 45;
		d = scr_bullet_create(x - 22, y - 6, obj_tm_quizzler);
		made++;
		d.depth = global.monsterinstance[creator].depth;
		d.controller = self;
		d.element = 6;
		d.dojo = special < -2;
		d.creator = creator;
		global.monsterinstance[creator].lastQuizLetter = -1;
		d.difficulty = difficulty;
		init = 2;
		global.turntimer += 120;
		btimer = 0;
	}
	var attacktimer = 90;
	if (difficulty > 0)
		attacktimer = (difficulty == 3) ? 40 : 60;
	var quizReady = !instance_exists(obj_tm_quizzler);
	if ((made == 4 || special < -2) && quizReady && btimer >= 0)
	{
		if (special == 1)
		{
			special = -2;
			btimer = -20;
		}
		else if (special == -2)
		{
			special = -1;
			difficulty++;
			dd = scr_dark_marker_animated(x + 80, y + 4, spr_tm_pleased_effect, 1);
			dd2 = scr_dark_marker(x + 74, y + 66, spr_cutscene_26_tasquemanager);
			var _maru = instance_create(x + (phase * 40), y + 175, obj_bulletparent);
			_maru.sprite_index = spr_tm_maru;
			_maru.image_xscale = 2;
			_maru.image_yscale = 2;
			_maru = instance_create(obj_growtangle.x, obj_growtangle.y, obj_tm_quiz_result);
			_maru.sprite_index = spr_tm_maru_big;
			_maru.image_xscale = 3;
			_maru.image_yscale = 3;
			_maru.depth = obj_heart.depth - 15;
			_maru.max_time = 45;
			dd.depth = dd2.depth - 1;
			with (obj_tasque_manager_enemy)
				visible = 0;
			snd_play(snd_coin);
			btimer = -45;
			phase++;
		}
		else if (special == -1)
		{
			if (i_ex(dd))
				instance_destroy(dd);
			if (i_ex(dd2))
				instance_destroy(dd2);
			made = 0;
			with (obj_tasque_manager_enemy)
				visible = 1;
			if (strikes == 3)
			{
				global.flag[36] = 1;
				global.flag[39] = 1;
				global.turntimer = 10;
				btimer = -40;
				obj_tasque_manager_enemy.hspeed = 10;
				exit;
			}
			if (phase == 3)
			{
				special = -5;
				global.flag[39] = 1;
				global.turntimer = 10;
				btimer = -40;
				obj_tasque_manager_enemy.hspeed = 10;
			}
			else
			{
				special = 1;
				btimer = attacktimer - 10;
			}
		}
		else if (special == -4 && global.encounterno == 89)
		{
			special = -3;
			btimer = -20;
		}
		else if (special == -3)
		{
			special = -1;
			made = 4;
			dd2 = scr_dark_marker(x, y, spr_tm_hurt);
			with (obj_tasque_manager_enemy)
				visible = 0;
			snd_play(snd_error);
			if (global.encounterno == 89)
			{
				var _batsu = instance_create(x + (strikes * 40), y + 215, obj_bulletparent);
				_batsu.sprite_index = spr_tm_batsu;
				_batsu.image_xscale = 2;
				_batsu.image_yscale = 2;
				_batsu.element = 6;
				strikes++;
				btimer = -45;
				_batsu = instance_create(obj_growtangle.x, obj_growtangle.y, obj_tm_quiz_result);
				_batsu.sprite_index = spr_tm_batsu_big;
				_batsu.image_xscale = 3;
				_batsu.image_yscale = 3;
				_batsu.depth = obj_heart.depth - 15;
				_batsu.max_time = 45;
			}
		}
	}
	else if (quizReady && btimer > attacktimer && special >= 0 && made < 4)
	{
		if (special == 1)
			made++;
		d = scr_bullet_create(x - 22, y - 6, obj_tm_quizzler);
		d.element = 6;
		d.creator = creator;
		d.controller = self;
		d.difficulty = difficulty;
		d.turnlength = 90;
		btimer = 0;
		if (special == 1)
			d.dojo = true;
	}
}
else if (type == 33)
{
	if (made == 0)
	{
		made = 1;
		tail = instance_create(obj_clubsenemy.x + 144, obj_clubsenemy.y + 125, obj_clovertail_intro);
		tail.damage = damage;
		tail.target = target;
	}
}
else if (type == 34)
{
	if (btimer >= (14 * (difficulty + 1)))
	{
		if (init == 1 || side == 1)
		{
			side = irandom(2);
			init = 2;
		}
		else
		{
			side = (side + irandom(1)) % 3;
		}
		snd_play_x(snd_spearappear, 1, 1.2);
		d = instance_create(x, y, obj_werewerewire_laserbullet);
		d.grazepoints = 4;
		d.damage = damage;
		d.target = target;
		d.attackdirection = side;
		btimer = 0;
	}
}
else if (type == 35)
{
	if (init == 1)
	{
		global.turntimer = 3600;
		difficulty = 0;
		var xx = obj_growtangle.x;
		var yy = obj_growtangle.y;
		d = instance_create(xx + 1, yy, obj_bulletparent);
		d.sprite_index = spr_tm_grid;
		d.image_angle = 45;
		d.image_blend = c_gray;
		d.depth = obj_growtangle.depth - 1;
		for (var i = 0; i < 4; i++)
		{
			xx = obj_growtangle.x;
			yy = obj_growtangle.y;
			if (i == 0 || i == 3)
				yy += ((i == 0) ? -50 : 50);
			else
				xx += ((i == 1) ? -50 : 50);
			d = instance_create(xx, yy, obj_bulletparent);
			d.sprite_index = spr_tm_letters;
			d.image_speed = 0;
			d.image_index = i;
			d.image_blend = c_gray;
			d.depth = obj_growtangle.depth - 1;
		}
		obj_growtangle.target_angle = 45;
		obj_growtangle.image_angle = 45;
		d = scr_bullet_create(x, y, obj_tm_quizzler);
		d.depth = global.monsterinstance[creator].depth;
		d.creator = creator;
		d.difficulty = difficulty;
		d.dojo = true;
		init = 2;
		global.turntimer += 120;
		btimer = 0;
	}
}
else if (type == 46)
{
	if (init == 1)
	{
		init = 2;
		d = instance_create(obj_growtangle.x, miny - 130, obj_bqueen_missle_controller);
		d.damage = damage;
		d.target = target;
	}
}
else if (type == 47)
{
	if (init == 1)
	{
		init = 2;
		d = instance_create(obj_growtangle.x, miny - 130, obj_bqueen_breath_controller);
		d.damage = damage;
		d.target = target;
	}
}
else if (type == 48)
{
	if (btimer >= 135 && !i_ex(obj_ch2_dojo_puzzlebullet_maker))
	{
		var xmod = 0;
		if (roundcount == 1)
			xmod = irandom(20) * choose(-1, 1);
		if (roundcount == 2)
			xmod = irandom(30) * choose(-1, 1);
		if (roundcount == 3)
			xmod = irandom(40) * choose(-1, 1);
		if (roundcount == 4)
			xmod = irandom(60) * choose(-1, 1);
		if (roundcount > 4)
			xmod = irandom(80) * choose(-1, 1);
		bm = instance_create(320 + xmod, 40, obj_ch2_dojo_puzzlebullet_maker);
		bm.grazepoints = grazepoints;
		bm.damage = 1;
		bm.target = target;
		switch (roundcount)
		{
			case 0:
				bm.times = 7;
				bm.timetarg = 18;
				bm.bulletspeed = 6;
				break;
			case 1:
				bm.times = 7;
				bm.timetarg = 15;
				bm.bulletspeed = 6;
				break;
			case 2:
				bm.times = 7;
				bm.timetarg = 13;
				bm.bulletspeed = 6;
				break;
			case 3:
				bm.times = 7;
				bm.timetarg = 11;
				bm.bulletspeed = 6;
				break;
			default:
				bm.times = 7;
				bm.timetarg = 10;
				bm.bulletspeed = 6;
				break;
		}
		btimer = 0;
		roundcount++;
	}
}
else if (type == 49)
{
	if (made == 0)
	{
		made = 1;
		with (obj_heart)
			color = 1;
		instance_create(camerax() + 424, cameray() + 100, obj_sneo_faceattack);
		with (obj_battlesolid)
			x = camerax() + 260;
	}
}
else if (type == 50)
{
	if (btimer >= 45 && made == 0)
	{
		made = 1;
		snd_play(snd_explosion_8bit);
		var initangle = random(80);
		var initspeed = 4;
		bulcount = 9;
		repeat (2)
		{
			for (var i = 0; i < bulcount; i++)
			{
				bullet = instance_create(x, y, obj_regularbullet);
				bullet.sprite_index = spr_spamtonhead;
				bullet.image_index = choose(0, 1, 2, 3);
				bullet.image_speed = 0.25;
				bullet.direction = initangle;
				bullet.speed = 2 + initspeed;
				bullet.depth -= made;
				initangle += (360 / bulcount);
				scr_bullet_inherit(bullet);
			}
			initspeed += 4;
			initangle = random(50);
		}
		with (creatorid)
		{
			global.monster[myself] = 0;
			visible = 0;
		}
	}
}
else if (type == 51)
{
	if (btimer >= 1 && made == 0)
	{
		made = 1;
		pip = instance_create(camerax() + 530, cameray() + 100, obj_sneo_weird_end_pipis);
		pip.damage = damage;
		pip.target = target;
		pip = instance_create(camerax() + 448, cameray() + 168, obj_sneo_weird_end_pipis);
		pip.damage = damage;
		pip.target = target;
		pip = instance_create(camerax() + 510, cameray() + 250, obj_sneo_weird_end_pipis);
		pip.damage = damage;
		pip.target = target;
	}
	if (btimer >= 45 && btimer < 46)
	{
		snd_play(snd_explosion_8bit);
		with (obj_sneo_weird_end_pipis)
			event_user(0);
	}
	if (btimer >= 100 && btimer < 110)
	{
		btimer = 120;
		with (obj_spamton_neo_enemy)
			scr_move_to_rememberxy(4);
		global.turntimer = 1;
	}
}
