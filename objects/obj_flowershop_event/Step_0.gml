if (con > 0 && con < 50)
{
	if (con == 1)
	{
		global.interact = 1;
		con = 1.1;
		alarm[4] = 30;
	}
	if (con == 1.1)
		global.interact = 1;
	if (con == 2.1)
	{
		global.facing = 2;
		k = scr_marker(obj_mainchara.x, obj_mainchara.y, spr_krisu);
		with (k)
		{
			vspeed = -1;
			image_speed = 0.1;
		}
		obj_mainchara.visible = 0;
		con = 1.2;
		alarm[4] = 70;
	}
	if (con == 2.2)
	{
		obj_mainchara.y = k.y;
		obj_mainchara.visible = 1;
		with (k)
			instance_destroy();
		con = 2;
		alarm[4] = 30;
	}
	if (con == 3)
	{
		global.fc = 0;
		global.typer = 18;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_44_0");
		global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_45_0");
		global.msg[2] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_46_0");
		global.msg[3] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_47_0");
		con = 4;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 4 && !d_ex())
	{
		image_speed = 0.25;
		con = 5;
		alarm[4] = 30;
	}
	if (con == 6)
	{
		image_speed = 0.05;
		image_index = 0;
		con = 7;
		alarm[4] = 10;
	}
	if (con == 8)
	{
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_69_0");
		instance_create(0, 0, obj_dialoguer);
		con = 9;
	}
	if (con == 9 && d_ex() == 0)
	{
		con = 10;
		alarm[4] = 20;
	}
	if (con == 11)
	{
		scr_halt();
		sprite_index = spr_asgorer;
		con = 11.1;
		alarm[4] = 20;
	}
	if (con == 12.1)
	{
		sprite_index = spr_asgored;
		con = 13;
		alarm[4] = 20;
	}
	if (con == 14)
	{
		global.fc = 10;
		global.fe = 1;
		global.msc = 0;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_100_0");
		instance_create(0, 0, obj_dialoguer);
		con = 15;
	}
	if (con == 15 && !d_ex())
	{
		exc = instance_create(x + 25, y - 2, obj_excblcon);
		snd_play(snd_b);
		con = 16;
		alarm[4] = 30;
	}
	if (con == 17)
	{
		global.fe = 4;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_116_0");
		con = 18;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 18 && d_ex() == 0)
	{
		sprite_index = spr_asgored;
		image_speed = 0.334;
		vspeed = 4;
		con = 19;
	}
	if (con == 19)
	{
		if (y >= (obj_mainchara.y - 26))
		{
			vspeed = 0;
			y = obj_mainchara.y - 26;
			obj_mainchara.visible = 0;
			image_index = 0;
			image_speed = 0.25;
			sprite_index = spr_asgore_hug;
			con = 20;
			alarm[4] = 68;
		}
	}
	if (con == 21)
	{
		obj_mainchara.visible = 1;
		sprite_index = spr_asgored;
		vspeed = -2;
		image_speed = 0.2;
		image_index = 0;
		con = 21.1;
		alarm[4] = 10;
	}
	if (con == 22.1)
	{
		vspeed = 0;
		image_index = 0;
		image_speed = 0;
		con = 22;
		alarm[4] = 20;
	}
	if (con == 23)
	{
		vspeed = 0;
		image_index = 0;
		image_speed = 0;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_171_0");
		global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_172_0");
		instance_create(0, 0, obj_dialoguer);
		con = 24;
	}
	if (con == 24 && !d_ex())
	{
		sprite_index = spr_asgorer;
		con = 25;
		alarm[4] = 15;
	}
	if (con == 26)
	{
		sprite_index = spr_asgoreu;
		image_speed = 0.25;
		vspeed = -3;
		con = 27;
	}
	if (con == 27)
	{
		if (y <= 27)
		{
			y = 27;
			vspeed = 0;
			image_speed = 0;
			image_index = 0;
			con = 28;
			alarm[4] = 15;
		}
	}
	if (con == 29)
	{
		sprite_index = spr_asgorer;
		con = 30;
		alarm[4] = 15;
	}
	if (con == 31)
	{
		sprite_index = spr_asgored;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_216_0");
		global.msg[1] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_217_0");
		instance_create(0, 0, obj_dialoguer);
		con = 32;
	}
	if (con == 32 && !d_ex())
	{
		global.interact = 0;
		visible = 0;
		asg = instance_create(x, y + sprite_height, obj_npc_facing);
		con = 50;
		global.flag[262] = 1;
	}
}
if (con >= 50)
{
	if (con == 50)
	{
		if (obj_mainchara.y >= 180 && global.interact == 0)
		{
			with (obj_npc_facing)
				instance_destroy();
			sprite_index = spr_asgored;
			visible = 1;
			global.interact = 1;
			obj_mainchara.y = 180;
			con = 50.1;
			alarm[4] = 30;
			exc = instance_create(x + 25, y - 2, obj_excblcon);
			snd_play(snd_b);
		}
	}
	if (con == 51.1)
	{
		global.facing = 2;
		global.typer = 18;
		global.fc = 10;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_260_0");
		con = 52;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 52 && !d_ex())
	{
		con = 53;
		alarm[4] = 10;
	}
	if (con == 54)
	{
		sprite_index = spr_asgored;
		image_speed = 0.2;
		vspeed = 2;
		con = 55;
	}
	if (con == 55)
	{
		if (y >= (obj_mainchara.y - 34))
		{
			vspeed = 0;
			y = obj_mainchara.y - 34;
			image_index = 0;
			image_speed = 0;
			con = 57;
			alarm[4] = 20;
		}
	}
	if (con == 58)
	{
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_297_0");
		scr_noface(1);
		global.writersnd[0] = snd_item;
		global.msg[2] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_300_0");
		global.flag[262] = 2;
		scr_litemget(4);
		instance_create(0, 0, obj_dialoguer);
		con = 59;
	}
	if (con == 59 && !d_ex())
	{
		vspeed = -3;
		image_speed = 0.25;
		con = 60;
	}
	if (con == 60 && y <= ystart)
	{
		y = ystart;
		scr_halt();
		con = 61;
		alarm[4] = 10;
	}
	if (con == 62)
	{
		global.typer = 18;
		global.fc = 10;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_flowershop_event_slash_Step_0_gml_327_0");
		instance_create(0, 0, obj_dialoguer);
		con = 63;
	}
	if (con == 63 && !d_ex())
	{
		asg = instance_create(x, y + sprite_height, obj_npc_facing);
		global.interact = 0;
		visible = 0;
		con = 70;
	}
}
if (instance_exists(obj_mainchara))
	global.flag[264] = obj_mainchara.x;
