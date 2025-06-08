if (encounterflag > 0 && init == 0)
{
	if (global.flag[encounterflag] == 1)
		instance_destroy();
	if (global.flag[encounterflag] == 6)
	{
		if (frozensprite == 0)
			frozensprite = touchsprite;
		frozennpc = instance_create(x, y, obj_frozennpc);
		frozennpc.sprite_index = frozensprite;
		frozennpc.fresh = 1;
		instance_destroy();
		if (sprite_index == spr_werewire_hang_overworld)
			frozennpc.sprite_index = spr_werewire_hurt;
		if (room == room_dw_city_big_1)
		{
			if (extflag == "tutViro")
			{
				frozennpc.x = 224;
				frozennpc.y = 72;
			}
			if (extflag == "leftOma")
			{
				frozennpc.x = 246;
				frozennpc.y = 440;
				frozennpc.sprite_index = spr_omawaroid_hurt;
			}
			if (extflag == "rightOma")
			{
				frozennpc.x = 606;
				frozennpc.y = 440;
				frozennpc.sprite_index = spr_omawaroid_hurt;
			}
		}
		if (room == room_dw_city_roadblock)
		{
			if (extflag == "tutViro")
			{
				frozennpc.x = 1000;
				frozennpc.y = 588;
			}
		}
		if (room == room_dw_city_big_2)
		{
			if (extflag == "viro")
			{
				frozennpc.x = 510;
				frozennpc.y = 196;
			}
			else
			{
				frozennpc.x = 600;
				frozennpc.y = 202;
			}
		}
		if (room == room_dw_city_big_3)
		{
			if (extflag == "viro")
			{
				frozennpc.x = 426;
				frozennpc.y = 1000;
			}
			else if (y < 300)
			{
				frozennpc.x = 1390;
				frozennpc.y = 92;
			}
			else
			{
				frozennpc.x = 1420;
				frozennpc.y = 694;
			}
		}
		if (room == room_dw_cyber_maze_queenscreen)
			frozennpc.y = 120;
		if (room == room_dw_mansion_single_pot)
		{
			frozennpc.x = 370;
			frozennpc.y = 140;
		}
		if (room == room_dw_city_cheesemaze && encounterflag == 566)
		{
			frozennpc.x = 1190;
			frozennpc.y = 622;
		}
		if (room == room_dw_mansion_potBalance)
		{
			frozennpc.x = 320;
			frozennpc.y = 600;
			frozennpc.sprite_index = spr_swatchling_hurt;
		}
		if (room == room_dw_city_queen_drunk)
		{
			frozennpc.x = 1240;
			frozennpc.y = 64;
			frozennpc.sprite_index = spr_tasque_hurt;
		}
		if (room == room_dw_city_traffic_1)
		{
			if (x > 1330)
			{
				frozennpc.x = 1644;
				frozennpc.y = 118;
				frozennpc.sprite_index = spr_tasque_hurt;
			}
			else
			{
				frozennpc.x = 852;
				frozennpc.y = 118;
				frozennpc.sprite_index = spr_omawaroid_hurt;
			}
		}
		if (room == room_dw_city_spamton_house)
		{
			if (x > 680)
			{
				frozennpc.x = 960;
				frozennpc.y = 118;
				frozennpc.sprite_index = spr_virovirokun_hurt;
			}
			else
			{
				frozennpc.x = 416;
				frozennpc.y = 116;
				frozennpc.sprite_index = spr_werewire_hurt;
			}
		}
	}
	init = 1;
}
scr_depth_alt();
targetx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (sprite_width / 2);
targety = (obj_mainchara.bbox_bottom - sprite_height) + (sprite_get_yoffset(sprite_index) * image_yscale);
if (global.interact == 0 || global.interact == 4)
	frozen = 0;
if (scr_outside_camera(200) && offscreen_frozen == 1)
	frozen = 1;
else
	frozen = 0;
if (global.interact != 0 && global.interact != 4)
	frozen = 1;
if (frozen == 1 && ignorefreeze == 0)
{
	if (hadfrozen == 0)
	{
		remspeed = speed;
		speed = 0;
		hadfrozen = 1;
	}
}
if (frozen == 0)
{
	if (hadfrozen == 1)
	{
		if (speed == 0)
			speed = remspeed;
		hadfrozen = 0;
	}
	if (pacecon == 0)
	{
		pacetimer += 1;
		if (pacetype == 0)
		{
		}
		if (pacetype == 1)
		{
			if (pacetimer == 10)
				hspeed = 2;
			if (pacetimer == 34)
				hspeed = 0;
			if (pacetimer == 50)
				hspeed = -2;
			if (pacetimer == 74)
				hspeed = 0;
			if (pacetimer == 80)
				pacetimer = 0;
		}
		if (pacetype == 2)
		{
			hspeed = sin(pacetimer / 24) * 4;
			vspeed = cos(pacetimer / 24) * 4;
		}
		if (pacetype == 5)
		{
			if (pacetimer == 1)
				vspeed = 6;
			if (pacetimer == 25)
				vspeed = -6;
			if (y < ystart)
				pacetimer = 0;
		}
		if (pacetype == 6)
		{
			cancelwalk = 1;
			walk_index += 0.25;
		}
		if (pacetype == 7)
			hspeed = -sin(pacetimer / 30) * 10;
		if (pacetype == 7.1)
			hspeed = -sin(pacetimer / 30) * 10;
		if (pacetype == 7.5)
			hspeed = sin(pacetimer / 30) * 10;
		if (pacetype == 8)
			vspeed = -sin(pacetimer / 25) * 12.5;
		if (pacetype == 9)
		{
			if (float != 0)
				y = yy - (sin(pacetimer / 5) * float);
			hspeed = sin(pacetimer / (pacespeed * 30)) * (moveradius / 20);
			pacespeed = 0.8;
		}
		if (pacetype == 9.5)
		{
			if (float != 0)
				y = yy - sin(pacetimer / float);
			hspeed = 2 * (sin(pacetimer / 24) * (moveradius / 20));
		}
		if (pacetype == 10)
		{
			if (pacecon2 == 0)
			{
				if (vspeed > 0)
					vspeed *= 0.9;
				if (vspeed <= 0.5 && pacecon2 == 0)
					pacecon2 = 1;
			}
			if (pacecon2 == 1)
				move_towards_point(obj_mainchara.x, obj_mainchara.y, 4);
		}
		if (pacetype == 11)
		{
			cancelwalk = 1;
			image_speed = 0.25;
			if (pathSpeed == 0)
			{
				if (room == room_dw_city_big_2)
					pathSpeed = 6;
				else if (room == room_dw_mansion_east_1f_a)
					pathSpeed = 6;
				else if (room == room_dw_city_big_1)
					pathSpeed = 6;
				else
					pathSpeed = 6;
			}
			if (direction >= 136 && direction <= 225)
				facing = 0;
			if (direction >= 306 || direction <= 45)
				facing = 1;
		}
		if (pacetype == 12)
		{
			hspeed = -sin(pacetimer / 30) * 10;
			vspeed = (-sin(pacetimer / 12) * 12.5) / 10;
		}
		if (pacetype == 13)
		{
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			y = yy + shift;
		}
		if (pacetype == 14)
		{
			var _c = dcos(rotation);
			var _s = dsin(rotation);
			x = xx + (_c * distance) + (_s * distance);
			y = yy + (-_s * distance) + (_c * distance);
			rotation += spd;
			if (rotation > 359)
				rotation -= 360;
			if (room == room_dw_cyber_maze_virokun)
			{
				if (rotation > 180)
					facing = 1;
				else
					facing = 0;
			}
		}
		if (pacetype == 15)
		{
			if (float != 0)
				y = yy - sin(pacetimer / float);
			t = (t + increment) % 360;
			shift = amplitude * dsin(t);
			x = xx + shift;
			vspeed = (-sin(pacetimer / 12) * 12.5) / 10;
		}
		if (pacetype == 16)
		{
			if (pacecon2 == 0)
			{
				hspeed *= 1.2;
				hspeed = clamp(hspeed, -12, 12);
				if (x <= 240)
					pacecon2 = 0.1;
			}
			if (pacecon2 == 0.1)
			{
				hspeed *= 0.7;
				if (abs(hspeed) < 0.5)
				{
					hspeed = 1;
					pacecon2 = 1;
				}
			}
			if (pacecon2 == 1)
			{
				hspeed *= 1.2;
				hspeed = clamp(hspeed, -12, 12);
				if (x >= 860)
					pacecon2 = 1.1;
			}
			if (pacecon2 == 1.1)
			{
				hspeed *= 0.7;
				if (abs(hspeed) < 0.5)
				{
					hspeed = -1;
					pacecon2 = 0;
				}
			}
		}
		if (pacetype == 17)
		{
			y = yy - sin(pacetimer / 5);
			x = xx - (sin(pacetimer / 20) * 10);
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
		if (pacetype == 18)
			y = yy - sin(pacetimer / 5);
		if (pacetype == 19)
		{
			x = xx - (sin(pacetimer / 20) * 20);
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
		if (pacetype == 20)
		{
			if (float != 0)
				y = yy - sin(pacetimer / float);
			image_speed = 0.25;
			cancelwalk = 1;
			if (pacecon2 == 0)
			{
				if (x < (xstart + moveradius))
				{
					x += pacespeed;
				}
				else
				{
					x = xstart + moveradius;
					pacecon2 = 1;
				}
			}
			if (pacecon2 == 1)
			{
				if (x > (xstart - moveradius))
				{
					x -= pacespeed;
				}
				else
				{
					x = xstart - moveradius;
					pacecon2 = 0;
				}
			}
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
		if (pacetype == 21 || pacetype == 22)
		{
			if (paceinit == 0)
			{
				leftbound = 0;
				leftboundcheck = 0;
				while (leftboundcheck == 0)
				{
					if (place_meeting(x - leftbound, y, obj_solidblock) || place_meeting(x - leftbound, y, obj_solidenemy) || place_meeting(x - leftbound, y, obj_solidenemy_2) || leftbound >= 480)
						leftboundcheck = 1;
					else
						leftbound++;
				}
				rightbound = 0;
				rightboundcheck = 0;
				while (rightboundcheck == 0)
				{
					if (place_meeting(x + rightbound, y, obj_solidblock) || place_meeting(x + rightbound, y, obj_solidenemy) || place_meeting(x + rightbound, y, obj_solidenemy_2) || rightbound >= 480)
						rightboundcheck = 1;
					else
						rightbound++;
				}
				if (leftbound < rightbound)
					moveradius = leftbound - 8;
				else
					moveradius = rightbound - 8;
				siner = 0;
				pacesinspeed = moveradius / (pacespeed * 3);
				paceinit = 1;
			}
			siner++;
			if (pacetype == 21)
				x = xx - (sin(siner / pacesinspeed) * moveradius);
			if (pacetype == 22)
				x = xx + (sin(siner / pacesinspeed) * moveradius);
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
		if (pacetype == 23)
		{
			y = yy - sin(pacetimer / 5);
			x = xx - (sin(pacetimer / 20) * moveradius);
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
		if (pacetype == 24)
		{
			pacespeed = 25;
			y = yy + (sin(pacetimer / 20) * 10);
			x = xx - (sin(pacetimer / pacespeed) * moveradius);
			if (x > xprevious)
				facing = 1;
			else
				facing = 0;
		}
	}
	viewblocked = 0;
	viewpointx = ((bbox_left + bbox_right) / 2) + detectpointxoffset;
	viewpointy = bbox_bottom + detectpointyoffset;
	if (canAlertThroughWalls == 0)
	{
		mcx = (obj_mainchara.bbox_left + obj_mainchara.bbox_right) / 2;
		mcy = obj_mainchara.bbox_bottom;
		if (collision_line(viewpointx, viewpointy, mcx, mcy, obj_solidblock, 1, 1) > 0)
			viewblocked = 1;
		if (collision_line(viewpointx, viewpointy, mcx, mcy, obj_interactablesolid, 1, 0) > 0)
			viewblocked = 1;
		if (collision_line(viewpointx, viewpointy, mcx, mcy, obj_solidenemy, 1, 0) > 0)
			viewblocked = 1;
	}
	if (alerted == 0)
	{
		if (alerttype == 0)
		{
			if (point_distance(viewpointx, viewpointy, charaHeartX(), charaHeartY()) <= radius && blind == 0)
				alerted = 1;
		}
		if (alerttype == 1)
		{
			if (direction >= 45 && direction <= 135)
			{
				if (point_in_rectangle(obj_mainchara.x + 20, obj_mainchara.y + 35, (x + sprite_width) - radius, y + (sprite_height / 2), x + radius, (y + (sprite_height / 2)) - ((radius * 3) / 4)))
					alerted = 1;
			}
			if (direction >= 225 && direction <= 315)
			{
				if (point_in_rectangle(obj_mainchara.x + 20, obj_mainchara.y + 35, (x + sprite_width) - radius, y + (sprite_height / 2), x + radius, y + (sprite_height / 2) + ((radius * 3) / 4)))
					alerted = 1;
			}
			if ((direction >= 315 && direction <= 405) || (direction >= -45 && direction <= 45))
			{
				if (point_in_rectangle(obj_mainchara.x + 20, obj_mainchara.y + 35, x + (sprite_width / 2), (y + sprite_height) - radius, x + sprite_width + radius, y + radius))
					alerted = 1;
			}
			if (direction >= 135 && direction <= 225)
			{
				if (point_in_rectangle(obj_mainchara.x + 20, obj_mainchara.y + 35, x - radius, (y + sprite_height) - radius, x + (sprite_width / 2), y + radius))
					alerted = 1;
			}
		}
	}
	if (viewblocked == 1)
		alerted = 0;
	if (alerted == 1)
	{
		speed = 0;
		pacecon = 1;
		alerttimer = 0;
		alertcon = 1;
		if (pacetype == 11)
			path_end();
		if (alertskip == 0)
		{
			if (noAlertSound == 0)
				snd_play(snd_b);
			targalarm = 20;
			if (chasetype == 8)
				targalarm = 8;
			excl = instance_create(x + (sprite_width / 2), y - 20, obj_excblcon);
			excl.alarm[0] = targalarm;
			alarm[4] = targalarm;
		}
		else
		{
			alertcon = 2;
		}
		alerted = 2;
	}
	if (alertcon == 2)
	{
		if (chasetype == -1)
		{
			alerttimer = 0;
			alertcon = 0;
			pacecon = 0;
		}
		if (chasetype == 0)
		{
			if (speed < 4)
				speed = 4;
			if (speed < 7)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 1)
		{
			if (alerttimer == 0)
				move_towards_point(targetx, targety, 10);
			alerttimer += 1;
			if (alerttimer >= 20)
				speed *= 0.75;
			if (alerttimer >= 25)
				speed = 0;
			if (alerttimer >= 27)
				alerttimer = 0;
		}
		if (chasetype == 2)
		{
			if (alerttimer == 0)
			{
				xnext = 0;
				ynext = 0;
				if (right_h())
					xnext = 132;
				if (left_h())
					xnext = -132;
				if (down_h())
					ynext = 132;
				if (up_h())
					ynext = -132;
				move_towards_point(targetx + xnext, targety + ynext, 10);
			}
			alerttimer += 1;
			if (alerttimer >= 20)
				speed *= 0.75;
			if (alerttimer >= 25)
				speed = 0;
			if (alerttimer >= 27)
				alerttimer = 0;
		}
		if (chasetype == 3)
		{
			if (speed < 2)
				speed = 2;
			if (speed < 4)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 4)
		{
			if (speed < 6)
				speed = 6;
			if (speed < 14)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 5)
		{
			hspeed += lengthdir_x(0.5, point_direction(x, y, targetx, targety));
			vspeed += lengthdir_y(0.5, point_direction(x, y, targetx, targety));
			if (speed < 4)
				speed = 4;
			if (speed < 7)
				speed += 0.5;
			if (speed >= 7)
				speed = 7;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 5.5)
		{
			hspeed += lengthdir_x(0.5, point_direction(x, y, targetx, targety));
			vspeed += lengthdir_y(0.5, point_direction(x, y, targetx, targety));
			if (speed < startchasespeed)
				speed = startchasespeed;
			if (speed != topchasespeed)
				speed = lerp(speed, topchasespeed, chaseaccel);
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 6)
		{
			speed = 8;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 7)
		{
			if (speed == 0)
				speed = 6;
			if (speed < 10)
				speed *= 1.1;
			image_speed = 0.25;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 8)
		{
			mymidx = x + (sprite_width / 2);
			mymidy = y + ((bbox_bottom - y) / 2);
			if (point_distance(mymidx, mymidy, charaHeartX(), charaHeartY()) > 50)
				direction = point_direction(mymidx, mymidy, charaHeartX(), charaHeartY()) + 180;
			speed = 6;
		}
		if (chasetype == 9)
		{
			hspeed += lengthdir_x(0.5, point_direction(x, y, targetx, targety));
			vspeed += lengthdir_y(0.5, point_direction(x, y, targetx, targety));
			speed = clamp(speed, minspeed, maxspeed);
			move_towards_point(targetx, targety, speed);
		}
	}
	facetimer += 1;
	if (facetimer >= 10)
	{
		if (hspeed <= -0.2 && facing == 1)
		{
			facing = 0;
			facetimer = 0;
		}
		if (hspeed >= 0.2 && facing == 0)
		{
			facing = 1;
			facetimer = 0;
		}
	}
	if (cancelwalk == 0)
	{
		walk_index += (speed / 20);
		if (speed == 0)
			walk_index = 0;
	}
	else
	{
		walk_index = image_index;
	}
	if (test_release_bullet == 1)
	{
		test_release_bullet_timer++;
		if (test_release_bullet_timer > 20)
		{
			bullet = instance_create(x, y, obj_encounter_bullet);
			bullet.creator = id;
			with (bullet)
				move_towards_point(obj_mainchara.x + 20, obj_mainchara.y + 20, 4);
			test_release_bullet_timer = 0;
		}
	}
}
if (sprite_index == spr_werewire_hang_overworld)
{
	detectpointyoffset = -88;
	customhitbox = 1;
	hitx1 = -2;
	hitx2 = 66;
	hity1 = 42;
	hity2 = 130;
}
if (sprite_index == spr_virovirokun_idle)
	detectpointyoffset = -50;
