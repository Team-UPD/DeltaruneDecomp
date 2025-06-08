areas = 3;
areax1[0] = 120;
areay1[0] = 100;
areax2[0] = 760;
areay2[0] = 580;
areax1[1] = 880;
areay1[1] = 360;
areax2[1] = 1360;
areay2[1] = 880;
areax1[2] = 200;
areay1[2] = 720;
areax2[2] = 760;
areay2[2] = 1360;
battlealpha = 0;
if (room == room_forest_dancers1)
{
	for (var i = 0; i < 5; i += 1)
	{
		sc = instance_create(320, 160 + (80 * i), obj_scissordancer);
		with (sc)
		{
			hspeed = 0;
			vspeed = -5;
		}
	}
	for (var i = 0; i < 4; i += 1)
	{
		sc = instance_create(520 + (80 * i), 450, obj_scissordancer);
		with (sc)
		{
			vspeed = 0;
			hspeed = -5;
		}
	}
	for (var i = 0; i < 2; i += 1)
	{
		sc = instance_create(500, 170 - (80 * i), obj_scissordancer);
		with (sc)
		{
			vspeed = 5;
			hspeed = 0;
		}
	}
	for (var i = 0; i < 4; i += 1)
	{
		sc = instance_create(960, 440 - (80 * i), obj_scissordancer);
		with (sc)
			vspeed = 5;
	}
	for (var i = 0; i < 4; i += 1)
	{
		sc = instance_create(960, 40 - (80 * i), obj_scissordancer);
		with (sc)
			vspeed = 5;
	}
	sc = instance_create(280, 830, obj_scissordancer);
	with (sc)
	{
		vspeed = -5;
		hspeed = 0;
	}
	sc = instance_create(580, 820, obj_scissordancer);
	with (sc)
	{
		hspeed = 5;
		vspeed = 0;
	}
	sc = instance_create(590, 1050, obj_scissordancer);
	with (sc)
	{
		vspeed = 5;
		hspeed = 0;
	}
	sc = instance_create(290, 1060, obj_scissordancer);
	with (sc)
	{
		hspeed = -5;
		vspeed = 0;
	}
}
if (room == room_cc_4f)
{
	areax1[0] = 260;
	areay1[0] = 40;
	areax2[0] = 1120;
	areay2[0] = 820;
	areas = 1;
}
tile_fade = 0;
if (room == room_forest_dancers1 || room == room_cc_4f)
{
	alpha_changed = 0;
	tile_fade = 1;
	tilearray = tile_get_ids_at_depth(777777);
	for (var i = 0; i < array_length_1d(tilearray); i++)
		tile_set_alpha(tilearray[i], 0);
}
