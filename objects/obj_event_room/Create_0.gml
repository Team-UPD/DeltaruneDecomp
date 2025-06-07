con = 0;
timer = 0;
entrance = global.entrance;
rem_facing = -1;
facing_timer = 0;
if (room == room_field2 && global.plot >= 34)
	instance_destroy();
if (room == room_field2A || room == room_field_puzzle1)
{
	if (room == room_field2A)
		candyflag = 101;
	if (room == room_field_puzzle1)
		candyflag = 102;
	siner = 0;
	if (global.flag[candyflag] >= 2)
	{
		instance_destroy();
	}
	else
	{
		candytree = scr_dark_marker(obj_npc_room.x, obj_npc_room.y, spr_candytree_candies);
		with (candytree)
		{
			siner = 0;
			scr_depth();
			depth -= 5;
		}
	}
}
if (room == room_torhouse)
{
	if (global.entrance == 0 && obj_mainchara.x <= (room_width / 2))
		instance_destroy();
	if (global.entrance == 1)
		instance_destroy();
	if (global.entrance == 2)
		instance_destroy();
	if (global.entrance == 24)
	{
		global.facing = 3;
		rem_facing = 3;
	}
	if (global.entrance == 4)
	{
		global.facing = 0;
		rem_facing = 0;
	}
	if (global.plot < 250)
	{
		instance_destroy();
	}
	else
	{
		if (global.flag[262] == 3)
			global.flag[262] = 4;
		pie = scr_marker(274, 96, spr_pie);
		with (pie)
			depth = 100000;
		if (!snd_is_playing(global.currentsong[1]))
		{
			global.currentsong[0] = snd_init("home.ogg");
			global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.97);
		}
	}
}
if (room == room_town_krisyard)
{
	if (global.plot < 250)
	{
		instance_destroy();
	}
	else if (global.entrance == 24)
	{
		global.facing = 0;
		rem_facing = 0;
	}
}
if (room == room_krishallway)
{
	global.facing = 0;
	rem_facing = 0;
}
if (room == room_cc_prison_prejoker)
{
	global.flag[31] = 0;
	songplayed = 0;
	m = 0;
	maxm = 0;
	if (!snd_is_playing(global.currentsong[1]) && global.flag[241] < 6)
	{
		songplayed = 1;
		global.currentsong[0] = snd_init("prejoker.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 0.85);
		mus_volume(global.currentsong[1], 0, 0);
	}
	doorimg = scr_dark_marker(x - 48, y - 170, spr_jokerdoor);
	with (doorimg)
		depth = 500000;
	doorsolid = instance_create(x, y, obj_soliddark);
	doorevent = instance_create(x, y, obj_readable_room1);
	if (global.flag[241] == 5)
	{
		with (doorimg)
			image_index = 2;
		with (doorsolid)
			instance_destroy();
		with (doorevent)
			instance_destroy();
		door_door = instance_create(x + 15, y, obj_doorA);
	}
	if (global.flag[241] >= 6)
	{
		with (doorsolid)
			instance_destroy();
		with (doorevent)
			instance_destroy();
		with (doorimg)
			instance_destroy();
		finalsolid = instance_create(1600, 1040, obj_soliddark);
	}
}
if (room == room_cc_throneroom)
{
	if (global.plot >= 240)
	{
		block = instance_create(260, 740, obj_soliddark);
		block.image_xscale = 8;
		with (obj_readable_room1)
			instance_destroy();
		th = scr_dark_marker(obj_npc_sign.x, obj_npc_sign.y, spr_darkthrone);
		with (th)
			scr_depth();
		with (obj_npc_sign)
		{
			chairsolid = instance_create(x, y, obj_solidblock);
			chairsolid.sprite_index = sprite_index;
			chairsolid.image_xscale = 2;
			chairsolid.image_yscale = 2;
			visible = 1;
			with (chairsolid)
				scr_depth();
			instance_destroy();
		}
	}
}
if (room == room_forest_savepoint3)
{
	if (global.tempflag[9] == 1)
	{
		if (global.hp[1] < 1)
			global.hp[1] = 10;
		if (global.hp[3] < 1)
			global.hp[3] = 10;
		global.fighting = 0;
		global.interact = 1;
		blackmarker = scr_dark_marker(-100, -100, spr_pixel_white);
		with (blackmarker)
		{
			image_blend = c_black;
			image_xscale = 600;
			image_yscale = 600;
			depth = 1000;
		}
		con = 10;
		alarm[4] = 30;
	}
	else
	{
		instance_destroy();
	}
}
if (room == room_field_secret1)
{
	pcon = 0;
	ptimer = 0;
	puzzle = instance_create(1000, 100, obj_suitspuzz);
	with (puzzle)
	{
		max_suit = 4;
		drawclue = 0;
		sol[0] = 2;
		sol[1] = 4;
		sol[2] = 3;
		sol[3] = 1;
	}
	spikee[0] = scr_dark_marker(1300, 240, spr_spiketile);
	spikee[1] = scr_dark_marker(1300, 280, spr_spiketile);
	with (spikee[0])
		depth = 900000;
	with (spikee[1])
		depth = 900000;
	spike_solid = instance_create(1300, 240, obj_soliddark);
	with (spike_solid)
		image_yscale = 3;
}
if (room == room_forest_beforeclover)
{
	pcon = 0;
	ptimer = 0;
	hinta = scr_dark_marker(320, 680, spr_suitsicon_fade);
	hintb = scr_dark_marker(840, 680, spr_suitsicon_fade);
	hintc = scr_dark_marker(1400, 680, spr_suitsicon_fade);
	with (hinta)
		depth = 800000;
	with (hintb)
	{
		image_index = 1;
		depth = 800000;
	}
	with (hintc)
	{
		image_index = 2;
		depth = 800000;
	}
	puzzle = instance_create(180, 140, obj_suitspuzz);
	with (puzzle)
	{
		max_suit = 3;
		drawclue = 0;
		sol[0] = 1;
		sol[1] = 2;
		sol[2] = 3;
	}
	spikee[0] = scr_dark_marker(400, 240, spr_spiketile);
	spikee[1] = scr_dark_marker(440, 240, spr_spiketile);
	with (spikee[0])
		depth = 900000;
	with (spikee[1])
		depth = 900000;
	spike_solid = instance_create(400, 240, obj_soliddark);
	with (spike_solid)
		image_xscale = 2;
	if (global.flag[290] == 1)
	{
		with (spikee[0])
			image_index = 1;
		with (spikee[1])
			image_index = 1;
		with (spike_solid)
			instance_destroy();
		with (puzzle)
			won = 1;
	}
}
if (room == room_forest_savepoint_relax)
{
	if (global.plot >= 85)
		instance_destroy();
	else
		con = 1;
}
if (room == room_forest_maze_susie)
{
	global.flag[291] = 5;
	if (global.plot >= 100)
	{
		instance_destroy();
	}
	else
	{
		image_speed = 0;
		visible = 1;
		scr_depth();
		con = 1;
		sprite_index = spr_susied_dark_unhappy;
	}
}
talked = 0;
timer = 0;
