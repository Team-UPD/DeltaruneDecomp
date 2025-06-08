if (myinteract == 3)
{
}
if (myinteract == 3 && con == 0)
{
	if (i_ex(mydialoguer) == false)
	{
		sprite_index = spr_hammerguy;
		image_speed = 0.1;
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con >= 5)
{
	if (con == 10 || con == 30 || con == 50)
	{
		if (!d_ex())
		{
			snd_pause(global.currentsong[1]);
			sprite_index = spr_hammerguy_powerup;
			image_index = 0;
			image_speed = 0.5;
			snd_play(snd_noise);
			con += 1;
			alarm[4] = 30;
			charcycle = 0;
			charamt = 0;
			if (global.char[1] > 0)
				charamt = 1;
			if (global.char[2] > 0)
				charamt = 2;
			charcycle = charamt;
		}
	}
	if (con == 12 || con == 32 || con == 52 || con == 72)
	{
		hitmode = 1;
		sprite_index = spr_hammerguy_hit;
		image_speed = 0.5;
		image_index = 0;
		con += 1;
	}
	if (con == 15)
	{
		with (char)
			instance_destroy();
		with (global.cinstance[0])
			visible = 1;
		with (global.cinstance[1])
			visible = 1;
		obj_mainchara.visible = 1;
		con = 13;
		charcycle -= 1;
		if (charcycle < 0)
			con = 16;
	}
	if (con == 13)
	{
		chartype = global.char[charcycle];
		if (charcycle == 0)
		{
			with (obj_mainchara)
				visible = 0;
			var xpos = (global.chapter == 1) ? 390 : (x + 105);
			var ypos = (global.chapter == 1) ? 125 : (y + 30);
			char = scr_dark_marker(xpos, ypos, spr_krisd_dark);
			with (char)
				depth = 400000;
		}
		if (charcycle == 1 || charcycle == 2)
		{
			with (global.cinstance[charcycle - 1])
				visible = 0;
			if (chartype == 2)
			{
				var xpos = (global.chapter == 1) ? 380 : (x + 85);
				var ypos = (global.chapter == 1) ? 110 : (y + 15);
				char = scr_dark_marker(xpos, ypos, spr_susie_shock);
				with (char)
					depth = 400000;
			}
			if (chartype == 3)
			{
				var xpos = (global.chapter == 1) ? 390 : (x + 90);
				var ypos = (global.chapter == 1) ? 140 : (y + 35);
				var ral_sprite = (global.chapter == 1) ? spr_ralsei_shock_overworld : spr_ralsei_hurt;
				char = scr_dark_marker(xpos, ypos, ral_sprite);
				with (char)
					depth = 400000;
			}
		}
		con = 14;
		alarm[4] = 36;
	}
	if (con == 16 || con == 36 || con == 56 || con == 76)
	{
		hitmode = 0;
		sprite_index = spr_hammerguy;
		image_speed = 0.05;
		image_index = 0;
		snd_resume(global.currentsong[1]);
		con += 1;
	}
	if (con == 17)
	{
		global.hp[1] = global.maxhp[1];
		global.hp[2] = global.maxhp[2];
		global.hp[3] = global.maxhp[3];
		global.typer = 6;
		global.fc = 0;
		snd_play(snd_power);
		global.msg[0] = stringsetloc("* (Somehow^1, everyone's HP was restored.)/", "obj_npc_hammerguy_slash_Step_0_gml_108_0");
		global.msg[1] = stringsetloc("* Well^1, well^1! Don't you feel better after a nice massage^1? Huh-Hah!!/%", "obj_npc_hammerguy_slash_Step_0_gml_109_0");
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		con = 18;
	}
	if (con == 18 || con == 38 || con == 58)
	{
		if (!d_ex())
		{
			myinteract = 0;
			global.interact = 0;
			with (obj_mainchara)
				onebuffer = 10;
			con = 0;
		}
	}
	if (hitmode == 1)
	{
		if (image_index == 4)
			snd_play(snd_squeaky);
		if (image_index >= 10)
			image_index = 0;
	}
	if (con == 33)
	{
		char = scr_dark_marker(385, 160, spr_brokencake);
		with (char)
			depth = 400000;
		con = 34;
		alarm[4] = 50;
	}
	if (con == 35)
	{
		with (char)
			instance_destroy();
		con = 36;
	}
	if (con == 37)
	{
		scr_keyitemremove(3);
		global.typer = 6;
		global.fc = 0;
		snd_play(snd_item);
		global.msg[0] = stringsetloc("* (The Broken Cake was fixed beyond recognition.)/", "obj_npc_hammerguy_slash_Step_0_gml_153_0");
		global.msg[1] = stringsetloc("* (The Broken Cake became the TOPCAKE.)/", "obj_npc_hammerguy_slash_Step_0_gml_154_0");
		global.msg[2] = stringsetloc("* This is truly a tremendous cake^1.&* Use its power wisely.../%", "obj_npc_hammerguy_slash_Step_0_gml_155_0");
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		con = 38;
	}
	if (con == 53)
	{
		char = scr_dark_marker(390, 170, spr_brokenkey);
		with (char)
			depth = 400000;
		con = 54;
		alarm[4] = 50;
	}
	if (con == 55)
	{
		with (char)
			instance_destroy();
		con = 56;
	}
	if (con == 57)
	{
		scr_keyitemremove(4);
		scr_keyitemremove(6);
		scr_keyitemremove(7);
		scr_keyitemget(5);
		global.typer = 6;
		global.fc = 0;
		snd_play(snd_item);
		global.msg[0] = stringsetloc("* (The Broken Key parts were fixed beyond recognition.)/", "obj_npc_hammerguy_slash_Step_0_gml_184_0");
		global.msg[1] = stringsetloc("* (The Broken Key parts became the Prison Key.)/", "obj_npc_hammerguy_slash_Step_0_gml_185_0");
		global.msg[2] = stringsetloc("* .... Hmm^1,  this KEY has a terrible energy coming from it.../", "obj_npc_hammerguy_slash_Step_0_gml_186_0");
		global.msg[3] = stringsetloc("* Please understand that I only fixed it.../", "obj_npc_hammerguy_slash_Step_0_gml_187_0");
		global.msg[4] = stringsetloc("* So that you will never have to use it./%", "obj_npc_hammerguy_slash_Step_0_gml_188_0");
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		con = 58;
	}
}
if (con == 70 && !instance_exists(obj_fusionmenu))
{
	global.interact = 1;
	times_fused++;
	if (times_fused == 1)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Huh-hah^1! Let's feel my technique!/%", "obj_npc_hammerguy_slash_Step_0_gml_216_0");
		d_make();
	}
	else if (times_fused >= 2)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Let's pick up the pace./%", "obj_npc_hammerguy_slash_Step_0_gml_221_0");
		d_make();
	}
	con = 71;
}
if (con == 71)
	global.interact = 1;
if (con == 71 && !d_ex())
	con = 72;
if (con == 73)
{
	con = 75;
	alarm[4] = (times_fused == 1) ? 50 : 18;
}
if (con == 77)
{
	con = 78;
	msgsetsubloc(0, "* (You got ~1!)/%", fusionResultName, "obj_npc_hammerguy_slash_Step_0_gml_251_0");
	snd_play(snd_item);
	d_make();
}
if (con == 78 && !d_ex())
{
	con = 0;
	global.interact = 0;
	myinteract = 0;
}
