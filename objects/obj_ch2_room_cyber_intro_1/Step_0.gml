if (global.interact == 0 && con == 1)
{
	con = 2;
	alarm[0] = 30;
	global.interact = 1;
	global.facing = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	kr_actor.sprite_index = spr_krisd_dark;
	c_wait(30);
	c_sel(su);
	c_facing("u");
	scr_speaker("susie");
	msgsetloc(0, "* ..^1. This is new./%", "obj_ch2_room_cyber_intro_1_slash_Step_0_gml_21_0");
	c_talk_wait();
	c_facing("r");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.plot = 50;
	global.facing = 0;
	global.interact = 0;
	scr_tempsave();
}
