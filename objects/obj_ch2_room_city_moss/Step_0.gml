if (con == 0 && !d_ex())
{
	con = 7;
	alarm[0] = 30;
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Heck yeah^1, I didn't know there was moss here!/", "obj_ch2_room_city_moss_slash_Step_0_gml_9_0");
	c_msgnextloc("\\EA* It's totally uneaten^1, too.../", "obj_ch2_room_city_moss_slash_Step_0_gml_10_0");
	c_msgnextloc("\\E1* ..^1. wait a sec./", "obj_ch2_room_city_moss_slash_Step_0_gml_11_0");
	c_msgnextloc("\\E0* ..^1. Kris.../%", "obj_ch2_room_city_moss_slash_Step_0_gml_12_0");
	c_talk_wait();
	c_var_instance(id, "play_song", true);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Were you..^1. saving this for me?/", "obj_ch2_room_city_moss_slash_Step_0_gml_28_0");
	c_msgnextloc("\\EQ* ..^1. Heh./", "obj_ch2_room_city_moss_slash_Step_0_gml_29_0");
	c_msgnextloc("\\E2* Guess even you've got your good moments.../%", "obj_ch2_room_city_moss_slash_Step_0_gml_30_0");
	c_talk_wait();
	c_var_instance(id, "play_power", true);
	c_speaker("no_name");
	c_msgsetloc(0, "* (You ate the moss..^1. together.)/%", "obj_ch2_room_city_moss_slash_Step_0_gml_43_0");
	c_talk_wait();
	c_var_instance(id, "play_stop", true);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EX* (..^1. uh?)/%", "obj_ch2_room_city_moss_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (play_song)
{
	play_song = false;
	snd_pause(global.currentsong[1]);
	if (global.is_console)
		snd_volume(global.currentsong[1], 0, 0);
	coolsong[0] = snd_init("noelle_school.ogg");
	coolsong[1] = mus_loop(coolsong[0]);
}
if (play_power)
{
	play_power = false;
	snd_play(snd_power);
}
if (play_stop)
{
	play_power = false;
	snd_free(coolsong[0]);
}
if (con == 8 && !instance_exists(obj_cutscene_master))
{
	con = 99;
	if (global.is_console)
		snd_volume(global.currentsong[1], 1, 0);
	snd_resume(global.currentsong[1]);
	instance_activate_object(obj_readable_room1);
	global.interact = 0;
	global.facing = 0;
	with (obj_event_manager)
		trigger_event((0 << 0), (10 << 0));
}
if (dumpster_con == 10 && !d_ex())
{
	dumpster_con = 99;
	alarm[1] = 120;
	with (dumpster)
		scr_shakeobj();
}
