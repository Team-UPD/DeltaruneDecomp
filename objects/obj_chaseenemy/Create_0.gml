event_inherited();
test_release_bullet = 0;
test_release_bullet_timer = 0;
init = 0;
state = 0;
image_xscale = 2;
image_yscale = 2;
facing = 0;
walk_index = 0;
alertcon = 0;
alerttimer = 0;
facetimer = 0;
pacecon = 0;
pacecon2 = 0;
pacetimer = 0;
targetx = 0;
targety = 0;
scr_depth();
frozen = 0;
hadfrozen = 0;
remspeed = 0;
drawsiner = 0;
ignorefreeze = 0;
viewblocked = 0;
canAlertThroughWalls = 1;
extflag = 0;
startPath = path_index;
pathProgress = path_position;
pathSpeed = 0;
stopPath = 0;
noAlertSound = 0;
chasecon = 0;
excl = 0;
pacespeed = 4;
pacesinspeed = 0;
paceinit = 0;
drawoffscreen = 0;
dodraw = 1;
float = 0;
detectpointxoffset = 0;
detectpointyoffset = 0;
viewpointx = 0;
viewpointy = 0;
yy = y;
xx = x;
increment = 0;
amplitude = 0;
t = 0;
rotation = 0;
distance = 14;
spd = 4;
customhitbox = 0;
hitx1 = 0;
hitx2 = 0;
hity1 = 0;
hity2 = 0;
hitvar = 0;
mymidx = x;
mymidy = y;
minspeed = 4;
maxspeed = 7;
specialspritecase = 0;
moveradius = 160;
pacespeed = 1;
offscreen_frozen = 1;
cancelwalk = 0;
alertskip = 0;
alerttype = 0;
alerted = 0;
slide = 1;
whichmonster = 0;
chasetype = 0;
pacetype = 1;
radius = 200;
ignoresolid = 0;
touchflag = 0;
eraser = 0;
blind = 0;
encounterflag = 0;
startchasespeed = 4;
topchasespeed = 8;
chaseaccel = 0.1;
myencounter = 4;
touchsprite = sprite_index;
frozensprite = 0;
if (room == room_GMS2_test)
{
	radius = 60;
	myencounter = 50;
}
if (room == room_battletest)
	myencounter = global.encounterno;
if (room == room_dw_cyber_tasque_battle)
{
	myencounter = 52;
	sprite_index = spr_tasque_idle;
	touchsprite = spr_tasque_hurt;
	radius = 160;
	pacetype = 9;
	pacespeed = 0.8;
	chasetype = 3;
	alertskip = 1;
	ignoresolid = 0;
	specialspritecase = "tasque";
}
if (room == room_dw_cyber_maze_tasque)
{
	myencounter = 52;
	sprite_index = spr_tasque_idle;
	touchsprite = spr_tasque_hurt;
	radius = 160;
	pacetype = 21;
	chasetype = 0;
	alertskip = 1;
	ignoresolid = 0;
	specialspritecase = "tasque";
}
if (room == room_dw_cyber_maze_virokun)
{
	if (global.flag[391] == 0)
	{
		myencounter = 55;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 120;
		pacetype = 17;
		chasetype = 0;
		ignoresolid = 0;
		alertskip = 0;
	}
	else
	{
		x = 1500;
		y = 280;
		myencounter = 55;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 0;
		pacetype = 14;
		chasetype = 4;
		alertskip = 0;
		ignoresolid = 1;
		rotation = 0;
		distance = 120;
		spd = 2;
		rotation = 180;
		var _c = dcos(rotation);
		var _s = dsin(rotation);
		x = xx + (_c * distance) + (_s * distance);
		y = yy + (-_s * distance) + (_c * distance);
	}
}
if (room == room_dw_mansion_east_2f_c)
{
	myencounter = 56;
	sprite_index = spr_npc_butler;
	touchsprite = spr_swatchling_hurt;
	radius = 150;
	pacetype = 1;
	chasetype = 5;
	alertskip = 1;
	ignoresolid = 0;
	moveradius = 10;
}
if (room == room_dw_city_roadblock)
{
	myencounter = 51;
	sprite_index = spr_poppup_idle;
	touchsprite = spr_poppup_hurt;
	radius = 150;
	pacetype = 1;
	chasetype = 3;
	alertskip = 1;
	ignoresolid = 0;
	moveradius = 10;
}
if (room == room_dw_city_big_1)
{
	if (y > 320)
	{
		if (x > 600)
		{
			path_start(path_dw_city_big_1_enem1, 6, path_action_continue, 1);
			path_position = 0.25;
			myencounter = 50;
			sprite_index = spr_omawaroid_chase;
			touchsprite = spr_omawaroid_chase;
			radius = 1;
			alertskip = 0;
			pacetype = 11;
			chasetype = -1;
			ignoresolid = 0;
			moveradius = 10;
			eraser = 1;
			alerttype = 1;
			canAlertThroughWalls = 0;
			extflag = "rightOma";
		}
		else
		{
			path_start(path_dw_city_big_1_enem1, 6, path_action_continue, 1);
			path_position = 0.75;
			myencounter = 50;
			sprite_index = spr_omawaroid_chase;
			touchsprite = spr_omawaroid_chase;
			radius = 150;
			pacetype = 11;
			chasetype = 5;
			ignoresolid = 0;
			moveradius = 10;
			eraser = 1;
			alerttype = 1;
			canAlertThroughWalls = 0;
			extflag = "leftOma";
		}
	}
	else
	{
		extflag = "tutViro";
	}
}
if (room == room_dw_city_big_2)
{
	if (scr_havechar(4))
	{
		if (y < 300)
		{
			extflag = "oma";
			myencounter = 69;
			sprite_index = spr_omawaroid_chase;
			touchsprite = spr_omawaroid_hurt;
			radius = 80;
			pacetype = 11;
			chasetype = 5;
			alertskip = 0;
			ignoresolid = 0;
			moveradius = 10;
			eraser = 1;
			path_start(path_viro_chase, 6, path_action_continue, 1);
			remPath = path_speed;
		}
		else
		{
			extflag = "viro";
			myencounter = 68;
			sprite_index = spr_virovirokun_idle;
			touchsprite = spr_virovirokun_hurt;
			radius = 80;
			pacetype = 11;
			chasetype = 5;
			alertskip = 0;
			ignoresolid = 0;
			moveradius = 10;
			eraser = 1;
			path_start(path_viro_chase, 6, path_action_continue, 1);
			path_position = 0.1;
		}
	}
	else
	{
		instance_destroy();
	}
}
if (room == room_dw_city_big_3)
{
	if (x < 620)
	{
		extflag = "viro";
		myencounter = 55;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 180;
		pacetype = 17;
		chasetype = 3;
		alertskip = 0;
		ignoresolid = 0;
		moveradius = 5;
		canAlertThroughWalls = 1;
		eraser = 0;
	}
	if (x > 620 && y > 600)
	{
		myencounter = 53;
		sprite_index = spr_werewire_hang_overworld;
		touchsprite = sprite_index;
		radius = 1;
		alertskip = 0;
		pacetype = 24;
		moveradius = 240;
		pacespeed = 50;
		chasetype = -1;
		ignoresolid = 0;
		eraser = 2;
		offscreen_frozen = 0;
	}
	if (y < 300)
	{
		myencounter = 53;
		sprite_index = spr_werewire_hang_overworld;
		touchsprite = sprite_index;
		radius = 1;
		alertskip = 0;
		pacetype = 24;
		moveradius = 240;
		pacespeed = 4;
		chasetype = -1;
		ignoresolid = 0;
		eraser = 2;
		offscreen_frozen = 0;
	}
}
if (room == room_dw_mansion_bridges)
{
	myencounter = 53;
	sprite_index = spr_werewire_hang_overworld;
	touchsprite = spr_werewire_hang_overworld;
	radius = 200;
	pacetype = 14;
	chasetype = 4;
	alertskip = 0;
	ignoresolid = 1;
	rotation = 0;
	distance = 50;
	spd = 4;
	if (global.flag[389] == 1)
		instance_destroy();
}
if (room == room_dw_mansion_east_4f_b)
{
	myencounter = 81;
	sprite_index = spr_werewerewire_idle;
	touchsprite = sprite_index;
	radius = 50;
	pacetype = 16;
	hspeed = -1;
	chasetype = 4;
	alertskip = 0;
	ignoresolid = 1;
	moveradius = 160;
}
if (room == room_dw_city_traffic_3)
{
	if (x < 800)
	{
		myencounter = 85;
		sprite_index = spr_omawaroid_chase;
		touchsprite = spr_omawaroid_hurt;
		radius = 200;
		pacetype = 20;
		pacespeed = 4;
		moveradius = 100;
		chasetype = 8;
		extflag = "oma";
	}
	else
	{
		myencounter = 86;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 200;
		pacetype = 17;
		chasetype = 8;
		moveradius = 10;
		extflag = "viro";
	}
}
if (room == room_dw_city_queen_drunk)
{
	myencounter = 87;
	sprite_index = spr_tasque_idle;
	touchsprite = spr_tasque_hurt;
	radius = 200;
	pacetype = 19;
	chasetype = 8;
	ignoresolid = 0;
	specialspritecase = "tasque";
}
if (room == room_dw_city_cheesemaze)
{
	myencounter = 79;
	sprite_index = spr_maus_idle;
	touchsprite = spr_maus_hurt;
	radius = 200;
	pacetype = 19;
	chasetype = 8;
	ignoresolid = 0;
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	path_start(path_dw_mansion_east_2f_transformed_new_mauswheel, 12, path_action_continue, 1);
	path_position = 0.75;
	myencounter = 83;
	sprite_index = spr_mauswheel_idle;
	touchsprite = sprite_index;
	radius = 1;
	pacetype = 11;
	chasetype = 0;
}
if (room == room_dw_mansion_dining3 || room == room_dw_mansion_dininghall)
{
	myencounter = 56;
	sprite_index = spr_npc_butler;
	touchsprite = spr_swatchling_hurt;
	radius = 180;
	pacetype = 20;
	pacespeed = choose(3, 4, 5, 6);
	minspeed = 4;
	maxspeed = 9;
	moveradius = irandom_range(80, 160);
	if (room == room_dw_mansion_dininghall)
		moveradius = 100;
	chasetype = 5.5;
	eraser = 1;
}
if (room == room_dw_mansion_east_2f_d)
{
	myencounter = 57;
	encounterflag = 542;
	pacetype = 0;
	chasetype = -1;
	radius = 0;
	facing = 1;
	alertskip = 1;
	whichmonster = 1;
	sprite_index = spr_npc_tasquemanager;
	touchsprite = spr_npc_tasquemanager_flipped;
	if (global.flag[encounterflag] != 0)
		instance_destroy();
}
if (room == room_dw_mansion_east_3f_projection)
{
	encounterflag = 569;
	image_speed = 0.25;
	myencounter = 81;
	sprite_index = spr_werewerewire_idle;
	touchsprite = sprite_index;
	radius = 200;
	pacetype = 1;
	hspeed = -1;
	chasetype = 6;
	alertskip = 0;
	ignoresolid = 1;
	moveradius = 160;
}
if (room == room_dw_city_spamton_house)
{
	if (x < 720)
	{
		myencounter = 95;
		sprite_index = spr_werewire_hang_overworld;
		touchsprite = sprite_index;
		radius = 1;
		alertskip = 0;
		pacetype = 23;
		chasetype = -1;
		ignoresolid = 0;
		moveradius = 140;
		eraser = 2;
		offscreen_frozen = 0;
		encounterflag = 561;
		moveradius = 80;
	}
	else
	{
		myencounter = 96;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 120;
		pacetype = 17;
		chasetype = 0;
		ignoresolid = 0;
		alertskip = 0;
		encounterflag = 560;
	}
}
if (room == room_dw_city_traffic_1)
{
	if (x < 1300)
	{
		myencounter = 97;
		sprite_index = spr_omawaroid_chase;
		touchsprite = spr_omawaroid_hurt;
		radius = 200;
		pacetype = 20;
		pacespeed = 4;
		moveradius = 100;
		chasetype = 3;
		extflag = "oma";
		encounterflag = 562;
	}
	else
	{
		myencounter = 98;
		sprite_index = spr_tasque_idle;
		touchsprite = spr_tasque_hurt;
		radius = 160;
		pacetype = 21;
		moveradius = 80;
		chasetype = 3;
		ignoresolid = 0;
		extflag = "tasque";
		encounterflag = 563;
		specialspritecase = "tasque";
	}
}
if (room == room_dw_city_traffic_2)
{
	if (x > 1300)
	{
		myencounter = 95;
		sprite_index = spr_werewire_hang_overworld;
		touchsprite = sprite_index;
		radius = 1;
		alertskip = 0;
		pacetype = 23;
		chasetype = -1;
		ignoresolid = 0;
		moveradius = 140;
		eraser = 2;
		offscreen_frozen = 0;
		encounterflag = 565;
		moveradius = 80;
	}
	else
	{
		myencounter = 96;
		sprite_index = spr_virovirokun_idle;
		touchsprite = spr_virovirokun_hurt;
		radius = 120;
		pacetype = 17;
		chasetype = 0;
		ignoresolid = 0;
		alertskip = 0;
		encounterflag = 564;
	}
}
if (room == room_dw_city_big_1)
{
	if (extflag == "tutViro")
		encounterflag = 531;
	if (extflag == "rightOma")
		encounterflag = 532;
	if (extflag == "leftOma")
		encounterflag = 532;
}
if (room == room_dw_city_big_2)
	encounterflag = 533;
if (room == room_dw_city_big_3)
{
	if (extflag == "viro")
		encounterflag = 535;
	else
		encounterflag = 534;
}
if (room == room_dw_cyber_maze_queenscreen)
	encounterflag = 528;
if (room == room_dw_cyber_maze_virokun)
	encounterflag = 527;
if (room == room_dw_cyber_battle_maze_1)
	encounterflag = 525;
if (room == room_dw_cyber_tasque_battle)
	encounterflag = 526;
if (room == room_dw_cyber_maze_tasque)
	encounterflag = 539;
if (room == room_dw_mansion_single_pot)
	encounterflag = 540;
if (room == room_dw_mansion_potBalance)
	encounterflag = 541;
if (room == room_dw_mansion_east_2f_c)
	encounterflag = 544;
if (room == room_dw_mansion_bridges)
	encounterflag = 545;
if (room == room_dw_mansion_east_4f_b)
	encounterflag = 547;
if (room == room_dw_city_traffic_3)
{
	if (extflag == "oma")
		encounterflag = 553;
	if (extflag == "viro")
		encounterflag = 554;
}
if (room == room_dw_city_queen_drunk)
	encounterflag = 556;
if (room == room_dw_city_cheesemaze)
{
	if (x > 1260)
		encounterflag = 555;
	else
		encounterflag = 566;
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	encounterflag = 543;
	if (global.flag[encounterflag] != 0)
		instance_destroy();
}
if (room == room_dw_mansion_dining3)
	encounterflag = 557;
if (room == room_dw_mansion_dininghall)
	encounterflag = 558;
if (room == room_dw_city_postbaseball_1)
{
	myencounter = 50;
	encounterflag = 570;
	sprite_index = spr_omawaroid_chase;
	touchsprite = spr_omawaroid_chase;
}
if (room == room_dw_city_postbaseball_2)
{
	myencounter = 79;
	sprite_index = spr_maus_idle;
	touchsprite = spr_maus_hurt;
}
