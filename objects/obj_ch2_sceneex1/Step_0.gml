if (obj_mainchara.x >= 970 && obj_mainchara.x <= 1020 && obj_mainchara.y < 180 && con == -1 && global.flag[309] < 9 && scr_havechar(2) && scr_havechar(3))
{
	instance_deactivate_object(obj_doorW);
	con = 1;
	global.interact = 1;
	global.facing = 0;
	obj_mainchara.y += 4;
}
if (con == -1 && global.flag[358] == 1 && obj_mainchara.x <= 900)
{
	global.flag[358] = 2;
	con = 10;
	global.interact = 1;
	global.facing = 0;
}
if (con == 1)
{
	con = 2;
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
}
if (con == 2)
{
	con = 3;
	if (global.flag[358] == 0)
	{
		global.flag[358] = 1;
		c_sel(kr);
		c_facing("d");
		c_sel(ra);
		c_walkdirect(1030, 180, 12);
		c_delayfacing(13, "l");
		c_sel(su);
		c_walkdirect(930, 175, 12);
		c_delayfacing(13, "r");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\E5* Kris...? You want us to stay here...?/", "obj_ch2_sceneex1_slash_Step_0_gml_54_0");
		c_facenext("susie", 0);
		c_msgnextloc("* .../", "obj_ch2_sceneex1_slash_Step_0_gml_56_0");
		c_msgnextloc("\\E1* Sure^1, whatever./", "obj_ch2_sceneex1_slash_Step_0_gml_57_0");
		c_msgnextloc("\\EA* Me n' Ralsei'll have fun without you./%", "obj_ch2_sceneex1_slash_Step_0_gml_58_0");
		c_talk_wait();
		c_wait(15);
		c_sel(kr);
		c_facing("u");
	}
	else
	{
		global.flag[358]++;
	}
	c_waitcustom();
}
if (con == 3 && customcon == 1)
{
	con = 4;
	alarm[0] = 30;
	c_waitcustom_end();
	instance_create(0, 0, obj_fadeout);
	if (snd_is_playing(global.currentsong[1]))
		mus_volume(global.currentsong[1], 0, 14);
	c_wait(30);
	c_terminatekillactors();
}
if (con == 5 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.interact = 3;
	global.entrance = 20;
	scr_losechar();
	snd_free_all();
	instance_create(0, 0, obj_persistentfadein);
	if (global.flag[309] < 5)
		global.flag[309] = 5;
	room_goto(room_dw_mansion_b_entrance);
}
if (con == 10)
{
	con = 11;
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y, 2, 0);
	scr_makecaterpillar(obj_mainchara.x - 120, obj_mainchara.y, 3, 1);
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	cutscene_master = scr_cutscene_make();
	with (nise_susie)
		visible = 0;
	with (nise_ralsei)
		visible = 0;
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisl_dark;
	su = 1;
	su_actor = instance_create(nise_susie.x, nise_susie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = nise_susie.sprite_index;
	su_actor.image_speed = nise_susie.image_speed;
	ra = 2;
	ra_actor = instance_create(nise_ralsei.x, nise_ralsei.y, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = nise_ralsei.sprite_index;
	ra_actor.image_speed = nise_ralsei.image_speed;
	c_sel(ra);
	c_autowalk(0);
	c_sprite(spr_cutscene_ex1_ralsei_glasses_1);
	c_imageindex(0);
	c_imagespeed(0.2);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_ex1_susie_ralsei_glasses_1);
	c_imageindex(0);
	c_imagespeed(0.2);
}
if (con == 11)
{
	con = 12;
	alarm[0] = 30;
	c_sel(kr);
	c_walkdirect(735, 285, 30);
	c_pannable(1);
	c_panspeed_wait(-6, 0, 35);
	c_msgside("top");
	c_var_instance(id, "disable_face", true);
	c_speaker("ralsei");
	c_msgsetloc(0, "* C'mon^1, Susie!^1! Give me my glasses back!!/", "obj_ch2_sceneex1_slash_Step_0_gml_165_0");
	c_facenext("susie", "a");
	c_msgnextloc("\\Ea* Oooh^1, look at me^1, I'm a big dweeb that loves homework!!/%", "obj_ch2_sceneex1_slash_Step_0_gml_167_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_cutscene_ex1_ralsei_glasses_2);
	c_addxy(8, -3);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait(10);
	c_imageindex(1);
	c_wait(10);
	c_imageindex(2);
	c_wait(10);
	c_sel(su);
	c_sprite(spr_cutscene_ex1_susie_ralsei_glasses_2);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\ES* C..^1. C'mon.../%", "obj_ch2_sceneex1_slash_Step_0_gml_184_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\Ea* .../", "obj_ch2_sceneex1_slash_Step_0_gml_189_0");
	c_msgnextloc("\\EK* Fine^1, take them back!!/%", "obj_ch2_sceneex1_slash_Step_0_gml_190_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(1);
	c_sprite(spr_ralsei_walk_left);
	c_sel(su);
	c_autowalk(1);
	c_sprite(spr_susie_walk_right_dw);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EP* Thank you!/%", "obj_ch2_sceneex1_slash_Step_0_gml_203_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EJ* Oh^1, Kris^1! Everything OK?/%", "obj_ch2_sceneex1_slash_Step_0_gml_214_0");
	c_talk_wait();
	c_wait(60);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Whatever^1, let's go./%", "obj_ch2_sceneex1_slash_Step_0_gml_237_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect(694, su_actor.y, 20);
	c_panobj(kr_actor, 15);
	c_wait(20);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 13 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	con = 99;
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	con = 0;
}
if (disable_face)
{
	disable_face = false;
	global.fc = 0;
}
