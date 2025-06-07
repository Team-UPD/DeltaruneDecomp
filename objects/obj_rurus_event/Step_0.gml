if (room == room_cc_rurus1)
{
	if (con == 0 && global.interact == 0)
	{
		cinstancecheck = 0;
		if (instance_exists(global.cinstance[0]) && instance_exists(global.cinstance[1]))
		{
			if (global.cinstance[0].x >= 125 && global.cinstance[1].x >= 125)
				cinstancecheck = 1;
		}
		if (obj_mainchara.x >= 125 && cinstancecheck == 1)
		{
			with (flashobj)
				instance_destroy();
			global.interact = 1;
			snd_free_all();
			snd_play(snd_impact);
			instance_create(0, 0, obj_shake);
			for (i = 0; i < 4; i += 1)
				spike[i].image_index = 0;
			spikewall1 = instance_create(spike[0].x, spike[0].y, obj_soliddark);
			spikewall2 = instance_create(spike[2].x, spike[2].y, obj_soliddark);
			spikewall1.image_yscale = 2;
			spikewall2.image_yscale = 2;
			con = 1;
			alarm[4] = 30;
		}
	}
	if (con == 2)
	{
		darkfade = scr_marker(-10, -10, spr_pixel_white);
		darkfade.image_xscale = 700;
		darkfade.image_yscale = 400;
		darkfade.image_alpha = 0;
		darkfade.depth = 800000;
		darkfade.image_blend = c_black;
		fade = 0;
		con = 3;
	}
	if (con == 3)
	{
		fade += 0.01;
		darkfade.image_alpha = fade;
		if (fade >= 0.6)
		{
			con = 4;
			alarm[4] = 20;
		}
	}
	if (con == 5)
	{
		global.facing = 2;
		with (obj_caterpillarchara)
		{
			fun = 1;
			sprite_index = usprite;
		}
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_58_0");
		global.typer = 42;
		instance_create(120, 50, obj_writer);
		con = 6;
	}
	if (con == 6 && !instance_exists(obj_writer))
	{
		global.fc = 2;
		global.fe = 3;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_71_0");
		con = 7;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 7 && !d_ex())
	{
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_78_0");
		global.typer = 42;
		instance_create(200, 50, obj_writer);
		con = 8;
	}
	if (con == 8 && !instance_exists(obj_writer))
	{
		snd_play(snd_rurus_appear);
		appear = instance_create(x, y, obj_rurus_appear);
		visible = 0;
		con = 14;
		alarm[4] = 60;
	}
	if (con == 15)
	{
		visible = 1;
		with (appear)
			instance_destroy();
		vspeed = 0;
		con = 16;
		alarm[4] = 21;
	}
	if (con == 16)
	{
		with (darkfade)
		{
			image_alpha -= 0.03;
			if (image_alpha <= 0)
				image_alpha = 0;
		}
	}
	if (con == 17)
	{
		global.currentsong[0] = snd_init("ruruskaado.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
		global.fc = 18;
		global.fe = 0;
		global.typer = 6;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_121_0");
		global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_122_0");
		global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_123_0");
		global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_124_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 1;
		con = 18;
	}
	if (con == 18 && !d_ex())
	{
		snd_play(snd_power);
		fade = 0;
		con = 19;
		with (darkfade)
		{
			image_blend = c_white;
			depth = -200;
		}
	}
	if (con == 19)
	{
		fade += 0.1;
		darkfade.image_alpha = fade;
		if (darkfade.image_alpha >= 1)
		{
			con = 20;
			block = instance_create(320, 240, obj_pushableblock);
			block.event = 0;
			tile = instance_create(280, 240, obj_blocktile);
		}
	}
	if (con == 20)
	{
		fade -= 0.1;
		darkfade.image_alpha = fade;
		if (fade <= 0)
		{
			with (darkfade)
				instance_destroy();
			con = 21;
			global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_164_0");
			d = instance_create(0, 0, obj_dialoguer);
			d.side = 1;
		}
	}
	if (con == 21 && !d_ex())
	{
		with (floorwall)
			instance_destroy();
		interactable = instance_create(280, 160, obj_readable_room1);
		interactable.image_xscale = 4;
		interactable.image_yscale = 2;
		global.facing = 0;
		with (obj_caterpillarchara)
			fun = 0;
		global.interact = 0;
		con = 25;
	}
	if (con == 25)
	{
		if (block.sprite_index == spr_npc_block_solved && global.interact == 0)
		{
			snd_free_all();
			global.interact = 1;
			snd_play(snd_won);
			with (spikewall1)
				instance_destroy();
			with (spikewall2)
				instance_destroy();
			with (interactable)
				instance_destroy();
			for (i = 0; i < 4; i += 1)
				spike[i].image_index = 1;
			con = 26;
			alarm[4] = 30;
		}
	}
	if (con == 27)
	{
		global.fc = 18;
		global.fe = 1;
		global.typer = 42;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_208_0");
		global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_209_0");
		global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_210_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 1;
		con = 28;
	}
	if (con == 28 && !d_ex())
	{
		vspeed = -8;
		con = 29;
	}
	if (con == 29 && !d_ex())
	{
		global.interact = 0;
		global.facing = 0;
		global.flag[217] = 1;
		scr_tempsave();
		con = 30;
	}
}
if (room == room_cc_rurus2)
{
	if (con == 0 && global.interact == 0)
	{
		cinstancecheck = 0;
		if (instance_exists(global.cinstance[0]) && instance_exists(global.cinstance[1]))
		{
			if (global.cinstance[0].x >= 125 && global.cinstance[1].x >= 125)
				cinstancecheck = 1;
		}
		if (obj_mainchara.x >= 125 && cinstancecheck == 1)
		{
			with (flashobj)
				instance_destroy();
			global.interact = 1;
			snd_free_all();
			snd_play(snd_impact);
			instance_create(0, 0, obj_shake);
			for (i = 0; i < 4; i += 1)
				spike[i].image_index = 0;
			spikewall1 = instance_create(spike[0].x, spike[0].y, obj_soliddark);
			spikewall2 = instance_create(spike[2].x, spike[2].y, obj_soliddark);
			spikewall1.image_yscale = 2;
			spikewall2.image_yscale = 2;
			con = 7;
			alarm[4] = 30;
		}
	}
	if (con == 8 && !instance_exists(obj_writer))
	{
		snd_play(snd_rurus_appear);
		appear = instance_create(x, y, obj_rurus_appear);
		visible = 0;
		con = 14;
		alarm[4] = 60;
	}
	if (con == 15)
	{
		visible = 1;
		with (appear)
			instance_destroy();
		vspeed = 0;
		con = 16;
		alarm[4] = 21;
	}
	if (con == 17)
	{
		global.currentsong[0] = snd_init("ruruskaado.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
		snd_pitch(global.currentsong[1], 1.1);
		global.fc = 18;
		global.fe = 0;
		global.typer = 6;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_295_0");
		global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_296_0");
		global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_297_0");
		global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_298_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 1;
		con = 18;
	}
	if (con == 18 && !d_ex())
	{
		snd_play(snd_power);
		fade = 0;
		con = 19;
		darkfade = scr_marker(-10, -10, spr_pixel_white);
		darkfade.image_xscale = 700;
		darkfade.image_yscale = 400;
		with (darkfade)
		{
			image_blend = c_white;
			depth = -200;
		}
	}
	if (con == 19)
	{
		fade += 0.1;
		darkfade.image_alpha = fade;
		if (darkfade.image_alpha >= 1)
		{
			con = 20;
			block = instance_create(340, 240, obj_pushableblock);
			block.event = 0;
			tile = instance_create(260, 240, obj_blocktile);
		}
	}
	if (con == 20)
	{
		fade -= 0.1;
		darkfade.image_alpha = fade;
		if (fade <= 0)
		{
			with (darkfade)
				instance_destroy();
			con = 21;
			global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_341_0");
			d = instance_create(0, 0, obj_dialoguer);
			d.side = 1;
		}
	}
	if (con == 21 && !d_ex())
	{
		interactable = instance_create(280, 160, obj_readable_room1);
		interactable.image_xscale = 4;
		interactable.image_yscale = 2;
		with (floorwall)
			instance_destroy();
		global.facing = 0;
		with (obj_caterpillarchara)
			fun = 0;
		global.interact = 0;
		con = 25;
	}
	if (con == 25)
	{
		if (block.sprite_index == spr_npc_block_solved && global.interact == 0)
		{
			snd_free_all();
			global.interact = 1;
			snd_play(snd_won);
			with (interactable)
				instance_destroy();
			with (spikewall1)
				instance_destroy();
			with (spikewall2)
				instance_destroy();
			for (i = 0; i < 4; i += 1)
				spike[i].image_index = 1;
			con = 26;
			alarm[4] = 30;
		}
	}
	if (con == 27)
	{
		global.fc = 18;
		global.fe = 1;
		global.typer = 6;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_385_0");
		global.msg[1] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_386_0");
		global.msg[2] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_387_0");
		global.msg[3] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_388_0");
		global.msg[4] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_389_0");
		global.msg[5] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_390_0");
		scr_ralface(6, 1);
		global.msg[7] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_392_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 1;
		con = 28;
	}
	if (con == 28 && !d_ex())
	{
		global.fc = 18;
		global.fe = 1;
		global.typer = 6;
		global.msg[0] = scr_84_get_lang_string("obj_rurus_event_slash_Step_0_gml_404_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.side = 1;
		hspeed = 12;
		con = 29;
	}
	if (con == 29 && !d_ex())
	{
		global.interact = 0;
		global.facing = 0;
		global.flag[218] = 1;
		scr_tempsave();
		con = 30;
	}
}
