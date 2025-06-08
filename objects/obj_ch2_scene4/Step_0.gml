if (con == 0 && global.plot == 7)
{
	with (obj_caterpillarchara)
		instance_destroy();
	scr_losechar();
	con = 1;
	global.interact = 1;
}
if (con == 1)
{
	con = 2;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	with (obj_mainchara)
		y = 780;
	kr = 0;
	kr_actor = instance_create(281, 1203, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu_dark;
	su = 1;
	su_actor = instance_create(kr_actor.x + 40, kr_actor.y - 10, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susieu_dark;
	with (su_actor)
		specialsprite[0] = spr_susiel_wall_eyes;
	ra = 2;
	ra_actor = instance_create(kr_actor.x + 20, 330, obj_actor);
	scr_actor_setup(ra, ra_actor, "ralseinohat");
	ra_actor.sprite_index = spr_ralsei_walk_down;
	c_msgside("bottom");
	c_pannable(1);
	c_panspeed(0, -2, 50);
	c_wait(40);
	c_sel(kr);
	c_setxy(281, 1080);
	c_walk("u", 5, 75);
	c_sel(su);
	c_facing("susieunhappy");
	c_setxy(321, 1064);
	c_walk("u", 5, 75);
	c_wait(80);
	c_speaker("susie");
	c_msgsetloc(0, "* Here we are.../%", "obj_ch2_scene4_slash_Step_0_gml_58_0");
	c_talk_wait();
	c_sel(ra);
	c_walk_wait("d", 7.5, 35);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Kris^1!!! Susie!!!/", "obj_ch2_scene4_slash_Step_0_gml_64_0");
	c_msgnextloc("\\EH* It's been ever-so-long...!/", "obj_ch2_scene4_slash_Step_0_gml_65_0");
	c_facenext("susie", 2);
	c_msgnextloc("\\E2* Yeah, yeah^1... It's been what^1, a day?/", "obj_ch2_scene4_slash_Step_0_gml_67_0");
	c_facenext("ralsei", "H");
	c_msgnextloc("\\EH* Oh! That is^1... short^1, isn't it...?/", "obj_ch2_scene4_slash_Step_0_gml_69_0");
	c_msgnextloc("\\E1* It's just that^1, I've never had friends before.../", "obj_ch2_scene4_slash_Step_0_gml_70_0");
	c_msgnextloc("\\E2* So I've never waited so long to see them again, either!/", "obj_ch2_scene4_slash_Step_0_gml_71_0");
	c_facenext("susie", "A");
	c_msgnextloc("\\EA* Fine^1, guess we'll TRY not to let you die of loneliness./", "obj_ch2_scene4_slash_Step_0_gml_73_0");
	c_msgnextloc("\\E2* I bet Lancer wants to see us too^1, right?/%", "obj_ch2_scene4_slash_Step_0_gml_74_0");
	c_talk_wait();
	c_sel(su);
	c_wait(10);
	c_facing("l");
	c_wait(10);
	c_facing("r");
	c_wait(10);
	c_facing("d");
	c_wait(10);
	c_facing("u");
	c_wait(20);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Hey^1... wait a sec./", "obj_ch2_scene4_slash_Step_0_gml_90_0");
	c_msgnextloc("\\EZ* Where IS Lancer?/%", "obj_ch2_scene4_slash_Step_0_gml_91_0");
	c_talk_wait();
	c_walk("u", 14, 12);
	c_wait(5);
	c_sel(ra);
	c_arg_objectxy(ra_actor, -22, 0);
	c_jump(x, y, 10, 5);
	c_facing("r");
	c_wait(6);
	c_sel(su);
	c_arg_objectxy(su_actor, 0, 1);
	c_setxy(x, y);
	c_wait(10);
	c_sel(su);
	c_wait(5);
	c_facing("l");
	c_wait(5);
	c_facing("r");
	c_wait(5);
	c_facing("u");
	c_wait(5);
	c_facing("d");
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* Where's^1... EVERYBODY?/%", "obj_ch2_scene4_slash_Step_0_gml_119_0");
	c_talk_wait();
	c_sel(ra);
	c_walkdirect_wait(279, 546, 10);
	c_facing("r");
	c_wait(5);
	c_sel(su);
	c_facing("l");
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Worry not^1, Susie^1. You'll see them in a moment./", "obj_ch2_scene4_slash_Step_0_gml_134_0");
	c_msgnextloc("\\E3* Just wait here^1, alright?/", "obj_ch2_scene4_slash_Step_0_gml_135_0");
	c_facenext("susie", 1);
	c_msgnextloc("\\E1* ... OK./", "obj_ch2_scene4_slash_Step_0_gml_137_0");
	c_msgnextloc("\\EK* (Hey^1, this better not be some kind of prank or something!)/%", "obj_ch2_scene4_slash_Step_0_gml_138_0");
	c_talk_wait();
	c_sel(su);
	c_walk("r", 4, 15);
	c_sel(ra);
	c_walk("d", 4, 30);
	c_wait(15);
	c_sel(su);
	c_autowalk(0);
	c_specialsprite(0);
	c_wait(20);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EA* (Kris^1, I have something to ask you.)/", "obj_ch2_scene4_slash_Step_0_gml_153_0");
	c_msgnextloc("\\E3* (I need you to return to the Light World...)/", "obj_ch2_scene4_slash_Step_0_gml_154_0");
	c_msgnextloc("\\EI* (And go to the old classroom^1, to the EAST of the closet doors.)/", "obj_ch2_scene4_slash_Step_0_gml_155_0");
	c_msgnextloc("\\E3* (Inside^1, gather everything on the ground...)/", "obj_ch2_scene4_slash_Step_0_gml_156_0");
	c_msgnextloc("\\E2* (And bring it back here^1. Could you?)/%", "obj_ch2_scene4_slash_Step_0_gml_157_0");
	c_talk_wait();
	c_sel(ra);
	c_walk("u", 8, 10);
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_facing("d");
	c_wait(5);
	c_actortokris();
	c_pannable(0);
	c_waitcustom();
	c_terminatekillactors();
}
if (customcon == 1 && con < 50)
{
	su_npc = instance_create(su_actor.x, su_actor.y, obj_npc_room);
	su_npc.sprite_index = spr_susiel_wall_eyes;
	with (su_npc)
		scr_depth();
	with (su_actor)
		instance_destroy();
	ra_npc = instance_create(ra_actor.x, ra_actor.y, obj_npc_facing);
	ra_npc.sprite_index = spr_ralsei_walk_down;
	ra_npc.y += ra_npc.sprite_height;
	with (ra_npc)
		scr_depth();
	with (ra_actor)
		instance_destroy();
	scr_losechar();
	customcon = 0;
	c_waitcustom_end();
}
if (con == 2)
{
	if (!instance_exists(obj_cutscene_master))
	{
		mus_initloop("castletown_empty.ogg");
		global.interact = 0;
		global.plot = 8;
		con = 10;
	}
}
if (con == 10)
{
	if (obj_mainchara.y <= 200 && global.interact == 0)
	{
		obj_mainchara.y = 204;
		global.facing = 0;
		global.interact = 1;
		scr_speaker("susie");
		global.fe = 0;
		msgsetloc(0, "\\EP* Hell are you going^1? Trying to have cake without me?/%", "obj_ch2_scene4_slash_Step_0_gml_216_0");
		scr_anyface_next("ralsei", 2);
		msgnextloc("* (Kris^1! I'll show you my castle later^1, ok?)/%", "obj_ch2_scene4_slash_Step_0_gml_218_0");
		d_make();
		talked++;
		con = 11;
	}
}
if (con == 11)
{
	if (!d_ex())
	{
		global.interact = 0;
		con = 10;
	}
}
if (con >= 50)
	global.interact = 1;
if (con == 50)
{
	con = 51;
	alarm[4] = 10;
}
if (con == 52)
{
	global.facing = 2;
	with (susie)
		visible = 0;
	with (ralsei)
		visible = 0;
	cutscene_master = scr_cutscene_make();
	su = 0;
	su_actor = instance_create(susie.x, susie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_left_dw;
	ra = 1;
	ra_actor = instance_create(ralsei.x, ralsei.y, obj_actor);
	with (ra_actor)
		scr_set_facing_sprites("ralsei");
	scr_actor_setup(ra, ra_actor, "ralsei");
	ra_actor.sprite_index = spr_ralsei_down;
	c_sel(1);
	c_walk("d", 4, 24);
	c_sel(0);
	c_walk_wait("l", 6, 10);
	c_walk("d", 6, 10);
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Hey^1, Kris^1, so where is every.../%", "obj_ch2_scene4_slash_Step_0_gml_272_0");
	c_talk_wait();
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_waitcustom();
	c_wait(30);
	c_msgside("bottom");
	c_msgsetloc(0, "\\E6* ... one...?/%", "obj_ch2_scene4_slash_Step_0_gml_280_0");
	c_talk();
	c_wait(30);
	c_fadeout_color(30, 16777215);
	c_wait(30);
	c_waittalk();
	con = 55;
}
if (customcon == 1 && con >= 50)
{
	global.facing = 2;
	snd_play(snd_sparkle_glock);
	image_alpha = 0;
	breakcon = 3;
	for (i = 0; i < 60; i++)
	{
		sparkle[i] = scr_marker((room_width / 4) + random(room_width / 2), (cameray() - random(400)) + 15, spr_sparestar_anim);
		sparkle[i].image_speed = 0.5;
		sparkle[i].hspeed = random_range(-4, 4);
		sparkle[i].friction = 0.05;
		sparkle[i].gravity = 0.1 + random(0.03);
		sparkle[i].image_xscale = 2;
		sparkle[i].image_yscale = 2;
	}
	c_waitcustom_end();
	customcon = 2;
}
if (con == 55 && !instance_exists(obj_cutscene_master))
{
	global.entrance = 24;
	global.interact = 3;
	global.plot = 10;
	wh = instance_create(0, 0, obj_persistentfadein);
	wh.image_blend = c_white;
	room_goto(room_dw_castle_area_2_transformed);
}
