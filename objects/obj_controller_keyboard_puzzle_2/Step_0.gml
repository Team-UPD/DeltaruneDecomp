if (con == 0)
{
	with (obj_mainchara)
	{
		if (place_meeting(x, y, obj_traffic_road_trigger))
			other.con = 1;
	}
}
if (con == 1)
{
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	con++;
}
if (con == 2)
{
	con = -999;
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Wait, is this another puzzle? You do it./%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_18_0");
	c_talk_wait();
	c_sel(ra);
	c_walkdirect(150, ra_actor.y, 8);
	c_sel(su);
	c_walkdirect(86, su_actor.y, 6);
	c_wait(8);
	c_sel(ra);
	c_walkdirect(150, 348, 12);
	c_sel(su);
	c_walkdirect(86, 344, 12);
	c_wait(13);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_wait(4);
	c_actortokris();
	c_actortocaterpillar();
	c_var_instance(id, "con", 3);
	c_terminatekillactors();
}
if (con == 3 && !i_ex(cutscene_master))
{
	npcral = instance_create(realral.x, realral.y, obj_npc_sign);
	npcral.sprite_index = spr_ralsei_walk_up;
	realral.visible = false;
	npcsus = instance_create(realsus.x, realsus.y, obj_npc_sign);
	npcsus.sprite_index = spr_susie_walk_up_dw;
	realsus.visible = false;
	global.interact = 0;
	con++;
}
if (con == 4)
{
	if (global.flag[333] == 1)
	{
		with (obj_mainchara)
		{
			if (place_meeting(x, y, obj_traffic_road_trigger))
				other.con = 5;
		}
	}
}
if (con == 5)
{
	scr_tempsave();
	realral.x = npcral.x;
	realral.y = npcral.y;
	with (realral)
		scr_caterpillar_interpolate();
	realral.visible = true;
	realsus.x = npcsus.x;
	realsus.y = npcsus.y;
	with (realsus)
		scr_caterpillar_interpolate();
	realsus.visible = true;
	with (npcral)
		instance_destroy();
	with (npcsus)
		instance_destroy();
	con++;
}
if (con == 4)
{
	failcount = obj_ch2_keyboardpuzzle_controller.failcount;
	if (hintcon == 0 && global.interact == 0)
	{
		if (failcount == 8)
		{
			global.interact = 1;
			hintcon++;
			timer = 0;
		}
	}
	if (hintcon == 1)
	{
		timer++;
		if (timer == 15)
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\EQ* Um..^1. Kris?/", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_109_0");
			msgnextloc("\\EJ* Maybe you can press the same key more than once?/%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_110_0");
			d = d_make();
			d.side = 0;
			hintcon++;
		}
	}
	if (hintcon == 2 && !d_ex())
	{
		global.interact = 0;
		global.facing = 0;
		hintcon++;
	}
}
