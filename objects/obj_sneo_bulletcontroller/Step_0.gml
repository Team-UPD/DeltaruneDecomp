if (global.mercymod[obj_spamton_neo_enemy.myself] > 99 && global.turntimer > 1)
	global.turntimer = 1;
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
	if (init == 1)
	{
		btimer = 0;
		instance_create(0, 0, obj_sneo_guymaker);
		init = 2;
		global.turntimer = 240;
		if (difficulty == 2)
			global.turntimer = 360;
		if (difficulty == 3)
			global.turntimer = 300;
	}
	else if (difficulty == 2)
	{
		if (btimer == 40 || btimer == 150 || btimer == 260)
		{
			sneoarm_x = sneo.x + sneo.partxoff[1];
			sneoarm_y = sneo.y + sneo.partyoff[1];
			armangle = -68 - random(32);
			side = armangle;
			d = instance_create(sneoarm_x + lengthdir_x(60, armangle - 90), sneoarm_y + lengthdir_y(60, armangle - 90), obj_sneo_biglaser);
			d.direction = armangle - 90;
			d.image_angle = armangle - 90;
			d.depth += 1;
			d.damage = damage * 2;
			d.target = target;
			sneo.aimmode = 1;
			sneo.armaim = armangle;
			sneo.partmode = 3;
		}
		else if (btimer == 90 || btimer == 200 || btimer == 310)
		{
			with (obj_sneo_biglaser)
			{
				firecon = 1;
				active = 1;
				image_blend = c_white;
			}
			sneo.partmode = 12;
		}
		else if ((btimer >= 90 && btimer < 120) || (btimer >= 200 && btimer < 230) || (btimer >= 310 && btimer < 340))
		{
			var otherside = (side == -110) ? -85 : -90;
			obj_sneo_biglaser.x = sneoarm_x + lengthdir_x(60, armangle - 90);
			obj_sneo_biglaser.y = sneoarm_y + lengthdir_y(60, armangle - 90);
			obj_sneo_biglaser.direction = armangle - 90;
			obj_sneo_biglaser.image_angle = armangle - 90;
			sneo.armaim = armangle;
		}
		else if (btimer == 130 || btimer == 240 || btimer == 350)
		{
			obj_sneo_biglaser.firecon = 2;
			sneo.partmode = 4;
		}
	}
	else if (difficulty == 3)
	{
		if (btimer == 1)
			sneo.partmode = 36;
	}
}
if (type == 1)
{
	atimer++;
	if (atimer == 1)
		btimer = 0;
	if (atimer == 6)
	{
		bul = instance_create(obj_spamton_neo_enemy.x + 4, obj_spamton_neo_enemy.y + 60, obj_pipis_egg_bullet);
		bul.type = 2;
		bul.drawlabel = 1;
		bul.depth = obj_spamton_neo_enemy.depth;
		bul.gravity = 0.2 + (random(10) / 100);
		bul.vspeed = 0;
		bul.hspeed = -1.55;
		bul.target = target;
		bul.damage = damage;
	}
	if (atimer < 20)
	{
		obj_spamton_neo_enemy.x += 10;
		sneo.vinex = scr_ease_in(min(10, atimer) / 10, 5) * 300;
		sneo.x = sneo.xstart + (scr_ease_in(atimer / 20, 2) * 300);
	}
	if (atimer == 20 && init == 1)
	{
		sneo.x = sneo.xstart + 300;
		sneo.vinex *= -1;
		pipis = instance_create(x, y, obj_pipis_controller);
		pipis.damage = damage;
		pipis.target = target;
		init = 2;
	}
	if (global.turntimer < 21 && global.turntimer > 1)
	{
		obj_spamton_neo_enemy.partmode = 1;
		with (obj_sneo_phonecall)
			fadealpha = 0;
		obj_spamton_neo_enemy.x -= 10;
		var _slidetimer = global.turntimer - 1;
		sneo.vinex = scr_ease_out(min(10, _slidetimer) / 10, 5) * 50;
		sneo.x = sneo.xstart + (scr_ease_out(_slidetimer / 20, 4) * 200);
		sneo.y = lerp(sneo.y, sneo.___myremembery, _slidetimer / 20);
	}
	if (global.turntimer == 1)
		obj_spamton_neo_enemy.x = obj_spamton_neo_enemy.xstart;
}
if (type == 1.5)
{
	hearttargettimer--;
	if (init == 1)
	{
		with (obj_spamton_neo_enemy)
			partmode = 34;
		init = 2;
		btimer = 100;
	}
	if (btimer == 110)
	{
		with (obj_spamton_neo_enemy)
		{
			heart_release_con++;
			if (heart_release_con == 1)
				makeheart = 1;
		}
	}
}
if (type == 2)
{
	if (difficulty == 0)
	{
		obj_spamton_neo_enemy.newcrushermovement = 0;
		if (btimer >= 30)
		{
			if (init == 1)
			{
				side = (irandom(1) * 2) - 1;
				init = 2;
			}
			btimer = 0;
			xx = obj_growtangle.x + 200;
			if (side == 1)
				yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			else
				yy = (obj_growtangle.y - 15) + (irandom(45) * -1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			difficulty = 1;
			if (made > 1)
			{
				var nextobj;
				if (difficulty == 0)
					nextobj = 0;
				else if (lastType == 1)
					nextobj = choose(0, 0, 2);
				else
					nextobj = choose(0, 0, 1, 2);
				lastType = nextobj;
				bm.crushedObj = nextobj;
				if (nextobj == 1)
					btimer = -35;
			}
			difficulty = 0;
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			side = (irandom(1) * 2) - 1;
			made++;
		}
	}
	if (difficulty == 1)
	{
		obj_spamton_neo_enemy.newcrushermovement = 0;
		if (btimer == 100)
		{
			xx = obj_growtangle.x + 190;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 0;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 110)
		{
			xx = obj_growtangle.x + 205;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 20;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 120)
		{
			xx = obj_growtangle.x + 220;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 10;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 170)
		{
			xx = obj_growtangle.x + 140;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 0;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 180)
		{
			xx = obj_growtangle.x + 155;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 20;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 190)
		{
			xx = obj_growtangle.x + 170;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 2;
			bm.siner = 10;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer > 190 && !instance_exists(obj_sneo_crusher) && global.turntimer > 2)
			global.turntimer = 2;
	}
	if (difficulty == 2)
	{
		if (btimer >= 30)
		{
			if (init == 1)
			{
				side = (irandom(1) * 2) - 1;
				init = 2;
			}
			btimer = 0;
			xx = obj_growtangle.x + 200;
			if (side == 1)
				yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			else
				yy = (obj_growtangle.y - 15) + (irandom(45) * -1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 3;
			side = (irandom(1) * 2) - 1;
		}
	}
	if (difficulty == 3)
	{
		obj_spamton_neo_enemy.newcrushermovement = 1;
		atimer++;
		var threshold = 10 + (instance_number(obj_sneo_crusher) * 15);
		if (atimer >= threshold)
		{
			xx = obj_growtangle.x + obj_spamton_neo_enemy.crusher_x_origin;
			yy = (obj_growtangle.y - 50) + irandom(100);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 4;
			bm.hp = 3;
			atimer = 0;
		}
	}
	if (difficulty == 4)
	{
		obj_spamton_neo_enemy.newcrushermovement = 0;
		if (btimer == 100)
		{
			xx = obj_growtangle.x + 190;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 0;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 110)
		{
			xx = obj_growtangle.x + 205;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 20;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
			leeway = instance_create(xx, yy, obj_crusher_leeway);
			leeway.parent = bm;
		}
		if (btimer == 120)
		{
			xx = obj_growtangle.x + 220;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 10;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
			leeway = instance_create(xx, yy, obj_crusher_leeway);
			leeway.parent = bm;
		}
		if (btimer == 170)
		{
			xx = obj_growtangle.x + 140;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 0;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
		}
		if (btimer == 180)
		{
			xx = obj_growtangle.x + 155;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 20;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
			leeway = instance_create(xx, yy, obj_crusher_leeway);
			leeway.parent = bm;
		}
		if (btimer == 190)
		{
			xx = obj_growtangle.x + 170;
			yy = obj_growtangle.y + 15 + (irandom(45) * 1);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 5;
			bm.siner = 10;
			bm.y = obj_growtangle.y + (sin(bm.siner / 6) * 50);
			leeway = instance_create(xx, yy, obj_crusher_leeway);
			leeway.parent = bm;
		}
		if (btimer > 190 && !instance_exists(obj_sneo_crusher) && global.turntimer > 2)
			global.turntimer = 2;
	}
	if (difficulty == 5)
	{
		obj_spamton_neo_enemy.newcrushermovement = 0;
		if (btimer == 100)
		{
			xx = obj_growtangle.x + 190;
			yy = obj_growtangle.y - 50;
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 6;
		}
		if (btimer == 110)
		{
			xx = obj_growtangle.x + 190;
			yy = obj_growtangle.y + 50;
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 6;
		}
		if (btimer == 120)
		{
			xx = obj_growtangle.x + 190;
			yy = obj_growtangle.y;
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 6;
		}
		if (!instance_exists(obj_sneo_crusher) && global.turntimer > 2)
			global.turntimer = 2;
	}
	if (difficulty == 6)
	{
		obj_spamton_neo_enemy.newcrushermovement = 1;
		atimer++;
		if (btimer == 99)
			atimer = 0;
		if (btimer >= 100)
		{
			xx = obj_growtangle.x + obj_spamton_neo_enemy.crusher_x_origin;
			yy = (obj_growtangle.y - 50) + irandom(100);
			bm = instance_create(xx, yy, obj_sneo_crusher);
			bm.destroyable = 1;
			bm.damage = damage;
			bm.target = target;
			bm.difficulty = 4;
			bm.hp = 3;
			btimer = 70;
			atimer -= 0;
		}
		if (atimer >= 20)
		{
			xx = obj_growtangle.x + obj_spamton_neo_enemy.crusher_x_origin;
			yy = obj_growtangle.y - 50;
			rand = -17 + irandom(34);
			bm = instance_create(xx, (yy + 29 + rand) - 256, obj_sneo_crusher_nohead);
			bm.image_yscale = bm.image_yscale * -1;
			bm = instance_create(xx, yy + 76 + rand + 256, obj_sneo_crusher_nohead);
			bm.amplitude = -8;
			btimer -= 5;
			atimer = 0;
		}
	}
}
if (type == 3)
{
	if (!instance_exists(obj_sneo_pendulum_controller))
	{
		pendulum = instance_create(x, y, obj_sneo_pendulum_controller);
		init = 1;
	}
}
if (type == 4)
{
	if (btimer >= 40)
	{
		btimer = 0;
		xx = maxx + 180;
		yy = obj_growtangle.y + random_range(-40, 40);
		bm = instance_create(xx, yy, obj_sneo_cshot);
		if (made >= 2)
			bm.difficulty = (made >= 4) ? 2 : 1;
		bm.damage = damage;
		bm.target = target;
		made++;
	}
}
if (type == 5)
{
	if (init == 1)
	{
		d = instance_create(x, y, obj_sneo_bulletcontroller_somn);
		d.damage = damage;
		d.creator = creator;
		d.target = target;
		d.difficulty = difficulty;
		d.element = element;
		init = 2;
		instance_destroy();
	}
	if (!instance_exists(obj_sneo_heartattack) && global.turntimer > 2)
		global.turntimer = 2;
}
if (type == 6)
{
	if (init == 1)
	{
		if (difficulty == 9)
			instance_create(0, 0, obj_sneo_wall_controller);
		else
			instance_create(0, 0, obj_sneo_wall_controller_new);
		init = 2;
	}
	if (global.turntimer <= 10 && global.turntimer > 9)
	{
		with (obj_spamton_neo_enemy)
			scr_move_to_rememberxy(8);
		global.turntime = 9;
	}
}
if (type == 7)
{
	if (global.turntimer >= 60)
	{
		atimer++;
		if (atimer == 1)
			btimer = 0;
		if (atimer < 20)
		{
			obj_spamton_neo_enemy.x += 10;
			sneo.vinex = scr_ease_in(min(10, atimer) / 10, 5) * 200;
			sneo.x = sneo.xstart + (scr_ease_in(atimer / 20, 2) * 200);
		}
		if (atimer == 20 && init == 1)
		{
			sneo.x = sneo.xstart + 200;
			sneo.vinex *= -1;
			instance_create(obj_growtangle.x, obj_growtangle.y, obj_sneo_elevator_test);
			init = 2;
			lastType = choose(-1, 0, 1);
		}
		if (btimer == 28)
			btimer = 60;
		if (difficulty == 1)
		{
		}
		if (difficulty == 2)
		{
			if (btimer == 25)
			{
				orb = instance_create(240, cameray() + 110, obj_sneo_elevator_electric_ball_appear);
				orb.type = 1;
			}
			if (btimer == 30)
			{
				orb = instance_create(240, cameray() + 235, obj_sneo_elevator_electric_ball_appear);
				orb.type = 1;
			}
		}
		if (btimer >= 60 && global.turntimer > 54)
		{
			btimer = 40;
			if (difficulty == 1)
				btimer = 44;
			var a = 0;
			if (lastType == -1 && arm1 == -1)
			{
				arm = instance_create(camerax() + 700, obj_growtangle.y + -104, obj_sneo_elevator_arm);
				arm.lastType = lastType;
				arm1 = 1;
			}
			else if (lastType == -1 && arm1 == 1)
			{
				a = 1;
			}
			if (lastType == 0 && arm2 == -1)
			{
				arm = instance_create(camerax() + 700, obj_growtangle.y + 0, obj_sneo_elevator_arm);
				arm.lastType = lastType;
				arm2 = 1;
			}
			else if (lastType == 0 && arm2 == 1)
			{
				a = 1;
			}
			if (lastType == 1 && arm3 == -1)
			{
				arm = instance_create(camerax() + 700, obj_growtangle.y + 104, obj_sneo_elevator_arm);
				arm.lastType = lastType;
				arm3 = 1;
			}
			else if (lastType == 1 && arm3 == 1)
			{
				a = 1;
			}
			doubleelevatorattack++;
			if (doubleelevatorattack == 4)
				a += 1;
			repeat (a)
			{
				doubleelevatorattack = 0;
				if (irandom(100) < 50)
				{
					if (arm1 == -1)
					{
						arm = instance_create(camerax() + 700, obj_growtangle.y + -104, obj_sneo_elevator_arm);
						arm.lastType = -1;
						arm1 = 1;
					}
					else if (arm2 == -1)
					{
						arm = instance_create(camerax() + 700, obj_growtangle.y + 0, obj_sneo_elevator_arm);
						arm.lastType = 0;
						arm2 = 1;
					}
					else if (arm3 == -1)
					{
						arm = instance_create(camerax() + 700, obj_growtangle.y + 104, obj_sneo_elevator_arm);
						arm.lastType = 1;
						arm3 = 1;
					}
				}
				else if (arm3 == -1)
				{
					arm = instance_create(camerax() + 700, obj_growtangle.y + 104, obj_sneo_elevator_arm);
					arm.lastType = 1;
					arm3 = 1;
				}
				else if (arm2 == -1)
				{
					arm = instance_create(camerax() + 700, obj_growtangle.y + 0, obj_sneo_elevator_arm);
					arm.lastType = 0;
					arm2 = 1;
				}
				else if (arm1 == -1)
				{
					arm = instance_create(camerax() + 700, obj_growtangle.y + -104, obj_sneo_elevator_arm);
					arm.lastType = -1;
					arm1 = 1;
				}
			}
			lastType = choose(-1, 0, 1);
			elevatororb++;
			if (difficulty == 3 && elevatororb == 3)
			{
				elevatororb = 0;
				orb = instance_create(camerax() + 205 + random(70), cameray() + 20, obj_sneo_elevator_electric_ball_appear);
				orb.type = 2;
				orb = instance_create(camerax() + 205 + random(70), cameray() + 307, obj_sneo_elevator_electric_ball_appear);
				orb.type = 2;
			}
		}
	}
	if (global.turntimer < 21 && global.turntimer > 1)
	{
		with (obj_sneo_elevator_arm)
			instance_destroy();
		obj_spamton_neo_enemy.x -= 10;
		var _slidetimer = global.turntimer - 1;
		sneo.vinex = scr_ease_out(min(10, _slidetimer) / 10, 5) * 50;
		sneo.x = sneo.xstart + (scr_ease_out(_slidetimer / 20, 4) * 200);
		with (obj_sneo_elevator_electric_ball)
		{
			if (alarm[0] > 0 && sprite_index != spr_sneo_electric_orb_destroy)
			{
				sprite_index = spr_sneo_electric_orb_destroy;
				image_index = 0;
				alarm[0] = 9999;
			}
		}
	}
	if (global.turntimer == 1)
		obj_spamton_neo_enemy.x = obj_spamton_neo_enemy.xstart;
}
if (type == 8)
{
	if (init == 1)
	{
		obj_spamton_neo_enemy.partmode = special ? 11 : 10;
		init = 2;
		made = 60;
	}
}
if (type == 8.5)
{
	if (init == 1)
	{
		init = 2;
		made = 60;
	}
	if (btimer >= 1)
	{
		if (global.turntimer > 11 && obj_spamton_neo_enemy.image_alpha > -0.2)
			obj_spamton_neo_enemy.image_alpha -= 0.2;
		if (btimer == 115)
		{
			d = instance_create(obj_growtangle.x + 40 + (obj_growtangle.sprite_width / 2), obj_growtangle.y, obj_sneo_phonehand_master);
			d.target = target;
		}
	}
}
if (type == 9)
{
	if (init == 1)
	{
		global.turntimer = 1200;
		instance_create(obj_growtangle.x, obj_growtangle.y, obj_finale_growtangle);
		init = 2;
		special = 1;
		btimer = 0;
		obj_sneo_hitdetector.active = false;
	}
	if (special == 1 && btimer == 45)
	{
		special = 2;
		d = instance_create(obj_growtangle.x, obj_growtangle.y, obj_sneo_warped_box);
		d = instance_create(camerax() + 680, sneo.y, obj_sneo_final_forme);
		d.intro = -1;
		d.damage = damage;
		d.target = target;
		d.speed = 16.75;
		d.direction = 180;
		d.friction = 0.5;
		btimer = 0;
	}
	if (special == 2 && btimer == 70)
	{
		obj_sneo_warped_box.state = 1;
		obj_sneo_final_forme_hitbox.destroyable = 1;
		obj_sneo_final_forme.destroyable = 1;
		obj_sneo_final_forme.image_index++;
		special = 3;
	}
	if (special == 3 && btimer >= 10)
	{
		if (sneodollarcount == 0)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(100)) + 100;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1;
			sneodollarcount = 1;
		}
		else if (sneodollarcount == 1)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(100)) + 200;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1;
			sneodollarcount = 2;
		}
		else if (sneodollarcount == 2)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(200)) + 100;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1.5;
			sneodollarcount = 3;
		}
		else if (sneodollarcount == 3)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(100)) + 100;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1;
			sneodollarcount = 4;
		}
		else if (sneodollarcount == 4)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(100)) + 200;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1;
			sneodollarcount = 5;
		}
		else if (sneodollarcount == 5)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(200)) + 100;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 1.5;
			sneodollarcount = 6;
		}
		else if (sneodollarcount == 6)
		{
			xx = minx - random(30) - 40;
			yy = (obj_growtangle.y - random(200)) + 100;
			d = instance_create(xx, yy, obj_sneo_dollar);
			d.startscale = 2;
			sneodollarcount = 0;
		}
		btimer = 3;
		d.speed = 0.1;
	}
}
if (type == 10)
{
	if (btimer > 50)
	{
		if (made == 0)
		{
			pattern = irandom(1);
			xx = maxx + 90;
			yy = 0;
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
		}
		d = instance_create(xx, yy, obj_sneo_headwave);
		yy += yshift;
		d.image_alpha = 0;
		d.speed = 8;
		made++;
		if (made == 4)
		{
			made = 0;
			btimer = 0;
		}
		else
		{
			btimer = 45;
		}
	}
}
if (type == 11)
{
	if (init == 1)
	{
		d = instance_create(obj_growtangle.x, obj_growtangle.y, obj_shrinktangle);
		d.target = target;
		d = instance_create(obj_growtangle.x, obj_growtangle.y - 150, obj_sneo_splitbouncer);
		d.damage = damage;
		d.target = target;
		instance_create(obj_growtangle.x, obj_growtangle.y + 150, obj_sneo_splitbouncer);
		d.damage = damage;
		d.target = target;
		init = 2;
	}
}
if (type == 12)
{
	atimer++;
	if (atimer == 1)
	{
		if (obj_spamton_neo_enemy.facebroken == 2)
		{
			global.turntimer = 170;
			obj_spamton_neo_enemy.facebroken = 1;
		}
	}
	if (atimer < 20)
	{
		obj_spamton_neo_enemy.x += 10;
		sneo.vinex = scr_ease_in(min(10, atimer) / 10, 5) * 300;
		sneo.x = sneo.xstart + (scr_ease_in(atimer / 20, 2) * 300);
	}
	if (atimer == 20)
	{
		face = instance_create(camerax() + 424, cameray() + 100, obj_sneo_faceattack);
		face.target = target;
		face.damage = damage;
		face.special = hellmode;
		if (obj_spamton_neo_enemy.faceattackcount == 1)
			face.first_time = true;
		with (face)
			event_user(0);
		obj_sneo_bulletcontroller.facetimeincrease = 0;
		if (obj_spamton_neo_enemy.eyeshp <= 0)
			obj_sneo_bulletcontroller.facetimeincrease++;
		if (obj_spamton_neo_enemy.nosehp <= 0)
			obj_sneo_bulletcontroller.facetimeincrease++;
		if (obj_spamton_neo_enemy.mouthhp <= 0)
			obj_sneo_bulletcontroller.facetimeincrease++;
		with (obj_sneo_faceattack)
		{
			if (type != 1)
			{
				if (obj_sneo_bulletcontroller.facetimeincrease == 1)
					timer += 20;
				if (obj_sneo_bulletcontroller.facetimeincrease == 2 || obj_sneo_bulletcontroller.facetimeincrease == 3)
					timer += 50;
			}
			if (type == 1)
			{
				if (obj_sneo_bulletcontroller.facetimeincrease == 1)
					timer += 20;
				if (obj_sneo_bulletcontroller.facetimeincrease == 2 || obj_sneo_bulletcontroller.facetimeincrease == 3)
					timer += 20;
			}
		}
	}
	if (global.turntimer > 80 && instance_exists(obj_sneo_faceattack) && obj_sneo_faceattack.init == 1 && obj_spamton_neo_enemy.facebroken == 0)
	{
		var a = 0;
		for (var i = 0; i < instance_number(obj_sneo_faceattack); i++)
		{
			enemy[i] = instance_find(obj_sneo_faceattack, i);
			if (enemy[i].type != 0 && enemy[i].broken == 0)
				a = 1;
		}
		if (a == 0)
			global.turntimer = 80;
	}
	if (global.turntimer < 21 && global.turntimer > 1)
	{
		with (obj_sneo_faceattack)
		{
			image_alpha -= 0.1;
			if (image_alpha < 0)
				instance_destroy();
		}
		obj_spamton_neo_enemy.x -= 10;
		var _slidetimer = global.turntimer - 1;
		sneo.vinex = scr_ease_out(min(10, _slidetimer) / 10, 5) * 50;
		sneo.x = sneo.xstart + (scr_ease_out(_slidetimer / 20, 4) * 200);
		sneo.y = lerp(sneo.y, sneo.___myremembery, _slidetimer / 20);
	}
	if (global.turntimer == 1)
	{
		if (obj_spamton_neo_enemy.facebroken == 1)
			obj_spamton_neo_enemy.facebroken = 0;
		obj_spamton_neo_enemy.x = obj_spamton_neo_enemy.xstart;
	}
}
