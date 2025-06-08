if (con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 0;
	snd_free_all();
	obj_mainchara.x = 1007;
	obj_mainchara.y = 100;
	scr_getchar(2);
	scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y, 2, 0);
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(su);
	c_setxy(958, 69);
	c_sprite(spr_cutscene_03a_susie_leaning_down);
}
if (con == 1)
{
	global.interact = 1;
	con = 2;
	c_sel(0);
	c_setxy(1007, 80);
	c_walk_wait("d", 1, 20);
	c_wait(20);
	c_speaker("susie");
	c_msgsetloc(0, "* ..^1. Man^1, it got late^1, didn't it...?/%", "obj_ch2_scene29_slash_Step_0_gml_38_0");
	c_talk_wait();
	c_wait(30);
	c_sel(kr);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* ... guess you should go home^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_47_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* Alright^1, you don't have to say it./%", "obj_ch2_scene29_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_delayfacing(41, "r");
	c_walkdirect_wait(979, 94, 40);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Don't wanna walk home by yourself^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_64_0");
	c_talk_wait();
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%", "obj_ch2_scene29_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_sel(su);
	c_delayfacing(31, "l");
	c_walkdirect_wait(1033, 94, 30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Let's go./%", "obj_ch2_scene29_slash_Step_0_gml_85_0");
	c_talk_wait();
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 2 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	con = 0;
	global.currentsong[0] = snd_init("town.ogg");
	global.currentsong[1] = mus_loop(global.currentsong[0]);
	with (obj_mainchara)
		visible = 1;
	global.facing = 0;
	global.plot = 205;
	instance_destroy();
}
