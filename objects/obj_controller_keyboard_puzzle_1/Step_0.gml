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
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Kris, I think you should handle this puzzle!/%", "obj_controller_keyboard_puzzle_1_slash_Step_0_gml_18_0");
	c_talk_wait();
	c_sel(ra);
	c_walkdirect(50, 114, 12);
	c_sel(su);
	c_walkdirect(102, 110, 12);
	c_wait(13);
	c_facing("d");
	c_sel(ra);
	c_facing("d");
	c_wait(4);
	c_actortokris();
	c_actortocaterpillar();
	c_var_instance(id, "con", 3);
	c_terminatekillactors();
}
if (con == 3 && !i_ex(cutscene_master))
{
	npcral = instance_create(realral.x, realral.y, obj_npc_sign);
	npcral.sprite_index = spr_ralsei_walk_down;
	realral.visible = false;
	npcsus = instance_create(realsus.x, realsus.y, obj_npc_sign);
	npcsus.sprite_index = spr_susie_walk_down_dw;
	realsus.visible = false;
	global.interact = 0;
	con++;
}
if (con == 4)
{
	if (global.flag[390] == 1 && obj_mainchara.x <= 160)
	{
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
}
