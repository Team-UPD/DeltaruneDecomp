if (con == 1)
{
	s = scr_dark_marker(400, 200, spr_susier_dark_unhappy);
	r = scr_dark_marker(300, 200, spr_ralseir);
	with (obj_marker)
	{
		scr_depth();
		hspeed = 12;
		image_speed = 0.334;
	}
	con = 2;
}
if (con == 2)
{
	if (global.interact == 0 && obj_mainchara.x >= 100)
	{
		global.interact = 1;
		con = 3;
		alarm[4] = 14;
		for (i = 0; i < dmax; i += 1)
		{
			d[i] = scr_dark_marker(400 + (i * 120), -100, spr_diamond_knight_overworld);
			with (d[i])
			{
				vspeed = 10;
				scr_depth();
			}
		}
	}
}
if (con == 4)
{
	for (i = 0; i < dmax; i += 1)
	{
		with (d[i])
			scr_halt();
	}
	con = 5;
	alarm[4] = 15;
}
if (con == 6)
{
	global.typer = 6;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("obj_lancerchase2_slash_Step_0_gml_43_0");
	global.msg[1] = scr_84_get_lang_string("obj_lancerchase2_slash_Step_0_gml_44_0");
	con = 7;
	doo = instance_create(0, 0, obj_dialoguer);
	doo.side = 1;
}
if (con == 7 && !d_ex())
{
	global.interact = 0;
	instance_create(0, 0, obj_overworld_spademaker);
	con = 8;
}
if (con == 8)
{
	siner += 1;
	for (i = 0; i < dmax; i += 1)
		d[i].x += sin((siner + (i * 2)) / 8) * 2;
}
if (con == 20)
{
	dtimer = 0;
	dsiner = 0;
	if (obj_mainchara.y <= 2640)
	{
		for (i = 0; i < 19; i += 1)
		{
			dactive[i] = 0;
			dsiner[i] = i;
			dl[i] = scr_dark_marker(-100, 20 + (i * 140), spr_diamond_knight_overworld);
			dr[i] = scr_dark_marker(660, 20 + (i * 140), spr_diamond_knight_overworld);
		}
		con = 21;
	}
}
if (con == 21)
{
	dtimer += 1;
	for (i = 0; i < 19; i += 1)
	{
		if (obj_mainchara.y < (dl[i].y + 80))
			dactive[i] = 1;
		if (dactive[i] == 1)
		{
			if (dsiner[i] < 140)
				dsiner[i] += 10;
			dl[i].x = -100 + dsiner[i] + (sin((dtimer + (i * 6)) / 16) * 8);
			dr[i].x = 660 - dsiner[i] - (sin((dtimer + (i * 6)) / 16) * 8);
		}
	}
}
