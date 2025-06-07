if (con == 10 && !d_ex())
{
	with (s)
	{
		sprite_index = spr_susier_dark;
		image_speed = 0.334;
		hspeed = 12;
	}
	with (l)
	{
		sprite_index = spr_lancer_rt;
		hspeed = 12;
	}
	con = 11;
	alarm[4] = 20;
}
if (con == 11)
	global.interact = 1;
if (con == 12)
{
	with (s)
	{
		x = __view_get(e__VW.XView, 0) - 140;
		hspeed = 12;
		vspeed = 0;
		y += 90;
		sprite_index = spr_susier_dark;
		scr_depth();
	}
	with (l)
	{
		x = __view_get(e__VW.XView, 0) - 100;
		hspeed = 12;
		y += 90;
		sprite_index = spr_lancer_rt;
		scr_depth();
	}
	con = 15;
	alarm[4] = 29;
}
if (con == 16)
{
	with (s)
	{
		scr_halt();
		sprite_index = spr_susieu_dark;
	}
	with (l)
	{
		scr_halt();
		sprite_index = spr_lancer_ut;
	}
	global.facing = 3;
	with (global.cinstance[0])
	{
		fun = 1;
		sprite_index = lsprite;
	}
	con = 26;
	alarm[4] = 5;
}
if (con == 18)
{
	with (s)
		sprite_index = spr_susier_dark;
	with (l)
		sprite_index = spr_lancer_lt;
	global.typer = 30;
	global.fc = 1;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_80_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_82_0");
	con = 19;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 19 && !d_ex())
{
	with (l)
		sprite_index = spr_lancer_ut;
	with (s)
		sprite_index = spr_susieu_dark;
	con = 20;
	alarm[4] = 30;
}
if (con == 21)
{
	with (l)
		sprite_index = spr_lancer_lt;
	with (s)
		sprite_index = spr_susier_dark;
	global.typer = 32;
	global.fe = 6;
	global.fc = 5;
	global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_103_0");
	scr_susface(1, 0);
	global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_105_0");
	global.msg[3] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_106_0");
	scr_lanface(4, 3);
	global.msg[5] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_108_0");
	global.msg[6] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_109_0");
	con = 25;
	instance_create(0, 0, obj_dialoguer);
}
if (con == 25 && !d_ex())
{
	with (s)
	{
		hspeed = 13;
		image_speed = 0.25;
		sprite_index = spr_susier_dark;
	}
	with (l)
	{
		hspeed = 13;
		sprite_index = spr_lancer_rt;
	}
	con = 26;
	alarm[4] = 6;
}
if (con == 27)
{
	with (s)
	{
		scr_halt();
		sprite_index = spr_susieu_dark;
		vspeed = -10;
	}
	with (l)
	{
		scr_halt();
		sprite_index = spr_lancer_ut;
		vspeed = -10;
	}
	con = 28;
	alarm[4] = 6;
}
if (con == 29)
{
	with (s)
		scr_halt();
	with (l)
		scr_halt();
	con = 30;
	alarm[4] = 10;
}
if (con == 31)
{
	with (s)
	{
		sprite_index = spr_susied_dark;
		image_speed = 0.25;
		vspeed = 12;
	}
	with (l)
	{
		sprite_index = spr_lancer_dt;
		vspeed = 12;
	}
	con = 33;
	alarm[4] = 7;
}
if (con == 34)
{
	with (s)
		scr_halt();
	with (l)
		scr_halt();
	con = 35;
}
if (con == 35 && !d_ex())
{
	lnpc = instance_create(l.x, l.y + 108, obj_npc_facing);
	with (lnpc)
	{
		dfacing = 0;
		sprite_index = spr_lancer_dt;
		dtsprite = sprite_index;
		rtsprite = sprite_index;
		ltsprite = sprite_index;
		utsprite = sprite_index;
	}
	snpc = instance_create(s.x, s.y + 108, obj_npc_facing);
	with (snpc)
	{
		dfacing = 1;
		sprite_index = spr_susier_dark;
		dtsprite = sprite_index;
		rtsprite = sprite_index;
		ltsprite = sprite_index;
		utsprite = sprite_index;
	}
	con = 36;
	if (global.plot < 80)
		global.plot = 80;
	global.flag[238] = 1;
	global.interact = 0;
	global.facing = 0;
	with (global.cinstance[0])
		fun = 0;
	with (s)
		instance_destroy();
	with (l)
		instance_destroy();
}
if (con == 4000)
{
	if (obj_mainchara.x >= (room_width - 80) && global.interact == 0)
	{
		obj_mainchara.x -= 10;
		global.facing = 3;
		global.typer = 32;
		global.fc = 5;
		global.fe = 7;
		global.msg[0] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_237_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_239_0");
		scr_ralface(3, 6);
		global.msg[4] = scr_84_get_lang_string("obj_lancerbakesale_event_slash_Step_0_gml_241_0");
		global.interact = 1;
		con = 2;
		instance_create(0, 0, obj_dialoguer);
	}
}
if (con == 4002 && !d_ex())
{
	con = 4000;
	global.interact = 0;
}
