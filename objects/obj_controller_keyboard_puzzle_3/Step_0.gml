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
	c_sel(ra);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_sel(ra);
	c_walkdirect(ra_actor.x, 302, 8);
	c_sel(su);
	c_walkdirect(su_actor.x, 298, 8);
	c_wait(8);
	c_sel(ra);
	c_walkdirect(520, 302, 30);
	c_sel(su);
	c_walkdirect(84, 298, 30);
	c_wait(31);
	c_facing("r");
	c_sel(ra);
	c_facing("l");
	c_wait(4);
	c_actortokris();
	c_actortocaterpillar();
	c_var_instance(id, "con", 3);
	c_terminatekillactors();
}
if (con == 3 && !i_ex(cutscene_master))
{
	npcral = instance_create(realral.x, realral.y, obj_npc_sign);
	npcral.sprite_index = spr_ralsei_walk_left;
	realral.visible = false;
	npcsus = instance_create(realsus.x, realsus.y, obj_npc_sign);
	npcsus.sprite_index = spr_susie_walk_right_dw;
	realsus.visible = false;
	global.interact = 0;
	con++;
}
if (con == 4)
{
	triggered = 0;
	with (obj_mainchara)
	{
		if (place_meeting(x, y, obj_traffic_road_trigger))
			other.triggered = true;
	}
	if (global.flag[420] == 1 && triggered == true)
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
}
