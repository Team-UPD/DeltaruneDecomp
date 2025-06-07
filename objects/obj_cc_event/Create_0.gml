if (room == room_cc_1f)
{
	if (global.flag[240] == 0)
	{
		elevatorblocker = instance_create(1040, 160, obj_soliddark);
		with (elevatorblocker)
			image_xscale = 6;
	}
}
if (room == room_cc_2f)
{
	spike[0] = scr_dark_marker(800, 280, spr_spiketile);
	spike[1] = scr_dark_marker(840, 280, spr_spiketile);
	with (spike[0])
		depth = 900000;
	with (spike[1])
		depth = 900000;
	if (global.flag[217] == 1)
	{
		with (spike[0])
			image_index = 1;
		with (spike[1])
			image_index = 1;
	}
	else
	{
		darksolid = instance_create(800, 280, obj_soliddark);
		darksolid.image_xscale = 2;
	}
}
if (room == room_cc_4f)
{
	spike[0] = scr_dark_marker(680, 920, spr_spiketile);
	spike[1] = scr_dark_marker(720, 920, spr_spiketile);
	with (spike[0])
		depth = 900000;
	with (spike[1])
		depth = 900000;
	if (global.flag[218] == 1)
	{
		with (spike[0])
			image_index = 1;
		with (spike[1])
			image_index = 1;
	}
	else
	{
		darksolid = instance_create(680, 920, obj_soliddark);
		darksolid.image_xscale = 2;
	}
	if (global.flag[245] == 1)
	{
		with (obj_bluhpainting)
		{
			bluh = 1;
			image_index = 1;
		}
		chest = instance_create(480, 980, obj_treasure_room);
	}
}
if (room == room_cc_5f)
	global.flag[240] = 1;
if (!snd_is_playing(global.currentsong[1]) && room >= room_cc_1f)
{
	if (room == room_cc_clover)
		global.currentsong[0] = snd_init("april_2012.ogg");
	else
		global.currentsong[0] = snd_init("card_castle.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
if (!snd_is_playing(global.currentsong[1]) && room < room_cc_1f)
{
	global.currentsong[0] = snd_init("basement.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
}
