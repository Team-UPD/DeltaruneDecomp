if (con == 0)
{
	if (global.flag[915] == 2 && global.flag[916] == 0)
	{
		if (global.flag[421] == 1)
		{
			with (obj_mainchara)
			{
				if (place_meeting(x, y, obj_triggervolume))
					other.con++;
			}
		}
	}
}
if (con == 1)
{
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	mus_volume(global.currentsong[1], 0, 45);
	con++;
}
if (con == 2)
{
	con = -1;
	c_speaker("no_name");
	c_msgsetloc(0, "* If you're something else^1, maybe a Dating Shoes isn't right...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0");
	c_msgnextloc("* Maybe I could interest you in a FreezeRing?/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_29_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect(1140, 364, 12);
	c_sel(no);
	c_walkdirect_wait(1082, 346, 12);
	c_facing("u");
	c_sel(kr);
	c_facing("u");
	c_wait(1);
	c_pannable(1);
	c_panobj(kr_actor, 8);
	c_wait(8);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* Huh...? A ring...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_44_0");
	c_msgnextloc("\\E8* Faha, sorry, I don't think WE need something like that!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0");
	c_facenext("no_name", 0);
	c_msgnextloc("* C'mon, angel! You can't get stronger without good equipment!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0");
	c_facenext("noelle", "D");
	c_msgnextloc("\\E1* Stronger...? R-right, I guess that's how it works here.../%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0");
	c_talk_wait();
	c_var_instance(id, "con", 3);
	c_actortokris();
	c_actortocaterpillar();
	c_pannable(0);
	c_terminatekillactors();
}
if (con == 3 && !d_ex())
{
	global.msc = 1208;
	scr_text(global.msc);
	d_make();
	timer = 0;
	con = -1;
}
if (con == 6 && !d_ex())
{
	timer++;
	if (timer == 15)
		fade = scr_fadeout(30);
	if (timer == 75)
	{
		with (obj_npc_room)
			instance_destroy();
		snd_play(snd_icespell);
	}
	if (timer == 135)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (You got the FreezeRing.)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0");
		d_make();
		timer = 0;
		con++;
	}
}
if (con == 7 && !d_ex())
{
	timer++;
	if (timer == 15)
	{
		with (fade)
			instance_destroy();
		scr_fadein(30);
	}
	if (timer == 60)
	{
		scr_speaker("noelle");
		msgsetloc(0, "\\EB* (What..^1. what just happened?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_117_0");
		msgnextloc("\\EB* (Did I actually just...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_118_0");
		msgnextloc("\\E3* (No^1, they..^1. they must have given it to us. The ring.)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_119_0");
		msgnextloc("\\Ee* (...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_120_0");
		msgnextloc("\\Ed* (Besides..^1. it's good to get stronger^1, isn't it?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0_b");
		msgnextloc("\\E4* Th..^1. thanks^1, Kris!/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_122_0");
		d_make();
		con++;
	}
}
if (con == 8 && !d_ex())
{
	scr_weaponget(22);
	snd_free_all();
	global.flag[915] = 3;
	global.interact = 0;
	con++;
	with (obj_event_manager)
		trigger_event((0 << 0), (27 << 0));
}
if (con == 72 && !d_ex())
{
	scr_speaker("noelle");
	msgsetloc(0, "\\EQ* (Though^1, if Susie bought me a ring...)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0");
	d_make();
	con++;
}
if (con == 73 && !d_ex())
{
	if (global.flag[915] > 0)
		scr_sideb_fail();
	mus_volume(global.currentsong[1], 0.8, 16);
	global.interact = 0;
	con++;
}
