if (con == 1 && obj_mainchara.x >= 540)
{
	con = 99;
	global.interact = 1;
}
if (con == 99 && obj_mainchara.x >= 540)
{
	global.interact = 1;
	global.facing = 2;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	kr_actor.sprite_index = spr_krisr_dark;
	su_actor.sprite_index = spr_susie_walk_right_dw;
	no = actor_count + 1;
	no_actor = instance_create(950, 208, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_noelle_kneel;
	no_actor.specialsprite[5] = spr_noelle_kneel_shocked;
	no_actor.specialsprite[6] = spr_noelle_shocked_dw;
	qu = actor_count + 2;
	qu_actor = instance_create(725, 273, obj_actor_queenchair);
	scr_actor_setup_nofacing(qu, qu_actor, "queen");
	qu_actor.visible = 0;
	qu_actor.shadow = 0;
	qu_actor.auto_depth = 0;
	qu_actor.depth = 1000300;
	with (qu_actor)
		fakeshadow.visible = 0;
	qu_flame = actor_count + 8;
	qu_flame_actor = scr_dark_marker(qu_actor.x, cameray() + view_hport[0] + 200, spr_queen_chair_flame);
	qu_flame_actor.visible = 0;
	qu_flame_actor.auto_depth = 0;
	qu_flame_actor.depth = qu_actor.depth + 100;
	ca = actor_count + 3;
	ca_actor = instance_create(camerax() + 900, no_actor.y - 46, obj_ch2_capsule);
	ca_actor.visible = 0;
	scr_actor_setup_nofacing(ca, ca_actor, "capsule");
	npc1 = actor_count + 4;
	npc1_actor = scr_dark_marker(npc1_o.x, npc1_o.y, spr_plugboy_cower);
	scr_actor_setup_nofacing(npc1, npc1_actor, "npc1");
	with (npc1_actor)
		scr_depth();
	npc2 = actor_count + 5;
	npc2_actor = scr_dark_marker(npc2_o.x, npc2_o.y, spr_plugboy_cower);
	scr_actor_setup_nofacing(npc2, npc2_actor, "npc2");
	with (npc2_actor)
		scr_depth();
	wire1 = actor_count + 6;
	wire1_actor = scr_dark_marker(npc2_o.x, npc1_o.y - 400, spr_plugboy_plug);
	scr_actor_setup_nofacing(wire1, wire1_actor, "wire1");
	wire2 = actor_count + 7;
	wire2_actor = scr_dark_marker(npc2_o.x, npc2_o.y - 400, spr_plugboy_plug);
	scr_actor_setup_nofacing(wire2, wire2_actor, "wire1");
	scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame");
	with (obj_npc_room)
		instance_destroy();
	c_mus2("volume", 0, 30);
	c_speaker("noelle");
	c_fefc(0, 0);
	c_msgsetloc(0, "* Somebody help me.../%", "obj_ch2_scene9_slash_Step_0_gml_74_0");
	c_talk_wait();
	c_pannable(1);
	c_pan(470, 0, 40);
	c_sel(qu_flame);
	c_setxy(qu_actor.x, qu_actor.y - 80);
	c_imagespeed(0.25);
	c_stickto(qu_actor, 100);
	c_sel(kr);
	c_delayfacing(21, "r");
	c_walkdirect(600, 200, 20);
	c_sel(su);
	c_facing("susieunhappy");
	c_delayfacing(21, "r");
	c_walkdirect(540, 223, 20);
	c_wait(50);
	c_msgsetloc(0, "* Somebody, please.../%", "obj_ch2_scene9_slash_Step_0_gml_93_0");
	c_talk_wait();
	c_sel(no);
	c_emote("!", 20);
	c_specialsprite(5);
	c_imagespeed(0);
	c_imageindex(0);
	c_autowalk(0);
	c_wait(20);
	c_mus("free_all");
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* Susie!?/%", "obj_ch2_scene9_slash_Step_0_gml_104_0");
	c_talk_wait();
	c_imageindex(1);
	c_msgsetloc(0, "\\E3* Cool that you're here, just.../%", "obj_ch2_scene9_slash_Step_0_gml_107_0");
	c_talk_wait();
	c_imageindex(0);
	c_msgsetloc(0, "\\EB* Wait, get out of here before it's too late!/%", "obj_ch2_scene9_slash_Step_0_gml_110_0");
	c_talk_wait();
	c_sel(ca);
	c_visible(1);
	c_sel(su);
	c_delaywalkdirect(80, 814, 179, 20);
	c_sel(kr);
	c_delaywalkdirect(80, 707, 194, 20);
	c_waitcustom();
	c_speaker("susie");
	c_msgside("bottom");
	c_msgsetloc(0, "\\EZ* NOELLE!/%", "obj_ch2_scene9_slash_Step_0_gml_120_0");
	c_talk_wait();
	c_wait(21);
	c_mus2("initloop", "queen_intro.ogg", 0);
	c_sel(su);
	c_facing("u");
	c_sel(kr);
	c_facing("u");
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_queen_chair_ohoho_1);
	c_imagespeed(0.1);
	c_visible(1);
	c_sel(qu_flame);
	c_visible(1);
	c_sel(qu);
	c_walkdirect_wait(qu_actor.x, 90, 180);
	c_autodepth(1);
	c_wait(52);
	c_mus("free");
	c_wait(10);
	c_wait(2);
	c_sprite(spr_queen_chair_swish_wine);
	c_imagespeed(0.1);
	c_mus2("initloop", "queen.ogg", 0);
	c_msgside("bottom");
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* Hell Of A Study Session/", "obj_ch2_scene9_slash_Step_0_gml_151_0");
	c_facenext("susie", 17);
	c_msgnextloc("\\EH* Who the hell are you!?/", "obj_ch2_scene9_slash_Step_0_gml_153_0");
	c_facenext("queen", 0);
	c_msgnextloc("\\E2* I Am Known As Serial Number Q5U4EX7YY2E9N/", "obj_ch2_scene9_slash_Step_0_gml_155_0");
	c_msgnextloc("\\E0* But You Foolish Children May Call Me/%", "obj_ch2_scene9_slash_Step_0_gml_156_0");
	c_talk_wait();
	c_sel(qu);
	c_sprite(spr_queen_chair_drink_wine);
	c_imageindex(0);
	c_imagespeed(0.05);
	c_wait(50);
	c_imagespeed(0);
	c_wait(15);
	c_sprite(spr_queen_chair_pose);
	c_imagespeed(0.1);
	c_var_instance(id, "screenmax", 2);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* \"Queen\"/%", "obj_ch2_scene9_slash_Step_0_gml_172_0");
	c_talk_wait();
	c_sprite(spr_queen_chair_swish_wine);
	c_speaker("susie");
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_09_susie_point);
	c_imagespeed(0);
	c_msgsetloc(0, "\\E2* Heh^1, like we're gonna call YOU \"Queen^1,\"/%", "obj_ch2_scene9_slash_Step_0_gml_181_0");
	c_talk_wait();
	c_sprite(spr_cutscene_09_susie_point2);
	c_msgsetloc(0, "\\EK* \"Q5U....3...7...\" uh^1,/%", "obj_ch2_scene9_slash_Step_0_gml_184_0");
	c_talk_wait();
	c_sel(qu);
	c_sprite(spr_queen_chair_pose);
	c_var_instance(id, "screenmax", 4);
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* \"Queen\"/%", "obj_ch2_scene9_slash_Step_0_gml_192_0");
	c_sprite(spr_queen_chair_swish_wine);
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_point);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* Well LOOK^1, \"Queen.\" We're not \"children!\"/%", "obj_ch2_scene9_slash_Step_0_gml_200_0");
	c_talk_wait();
	c_var_instance(id, "screencon", 1);
	c_wait(1);
	c_var_instance(id, "screenmax", 7);
	c_wait(5);
	c_speaker("queen");
	scr_smallface(0, "queen", 1, "mid", "bottom", stringsetloc("And Adults Are Even Bigger Children", "obj_ch2_scene9_slash_Step_0_gml_208_0"));
	c_msgsetloc(0, "\\E1* Teens Are Merely Big Children \\f0 /%", "obj_ch2_scene9_slash_Step_0_gml_209_0");
	c_talk_wait();
	c_speaker("susie");
	c_sprite(spr_cutscene_09_susie_point2);
	c_msgsetloc(0, "\\EK* ..^1. doesn't that make you a child too then?/%", "obj_ch2_scene9_slash_Step_0_gml_213_0");
	c_talk_wait();
	c_var_instance(id, "screenmax", 10);
	c_wait(2);
	c_sprite(spr_cutscene_09_susie_point);
	c_speaker("queen");
	c_msgsetloc(0, "\\EQ* No I Am: A Computer (Smart)/%", "obj_ch2_scene9_slash_Step_0_gml_220_0");
	c_talk_wait();
	c_sprite(spr_cutscene_09_susie_point2);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* ..^1. computer?/%", "obj_ch2_scene9_slash_Step_0_gml_225_0");
	c_talk_wait();
	c_var_instance(id, "screencon", 1);
	c_speaker("queen");
	c_sel(qu);
	c_walkdirect(qu_actor.x, -180, 15);
	c_msgsetloc(0, "\\ED* Well Thank You For The Stimuli But I Must Leave Now (Goodbye)/%", "obj_ch2_scene9_slash_Step_0_gml_233_0");
	c_talk();
	c_wait(15);
	c_waittalk();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_point);
	c_walk("u", 6, 4);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* Wait^1! WAIT!^1! Why'd you capture Noelle!?/%", "obj_ch2_scene9_slash_Step_0_gml_243_0");
	c_talk_wait();
	c_delaywalk(20, "d", 3, 8);
	c_sel(qu);
	c_walkdirect_wait(qu_actor.x, 90, 30);
	c_speaker("queen");
	c_msgsetloc(0, "\\EO* I Would Have Captured You Too But I Ran Out Of Cages/%", "obj_ch2_scene9_slash_Step_0_gml_252_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Why the CAPTURING!?/%", "obj_ch2_scene9_slash_Step_0_gml_258_0");
	c_talk_wait();
	c_var_instance(id, "screenmax", 11);
	c_facing("u");
	c_sel(qu);
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* So That She May Become My Willing Peon/%", "obj_ch2_scene9_slash_Step_0_gml_264_0");
	c_talk_wait();
	c_sprite(spr_queen_chair_pose);
	c_msgsetloc(0, "\\E6* In My Quest For World Domination/%", "obj_ch2_scene9_slash_Step_0_gml_267_0");
	c_var_instance(id, "screenmax", 16);
	c_talk_wait();
	c_sprite(spr_queen_chair_swish_wine);
	c_msgsetloc(0, "\\E9* Also Maybe I Will Make Her Face Into A Robot One?/%", "obj_ch2_scene9_slash_Step_0_gml_271_0");
	c_var_instance(id, "screenmax", 18);
	c_talk_wait();
	c_sel(su);
	c_shakeobj();
	c_sprite(spr_cutscene_09_susie_shock);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* What!? Why!?/%", "obj_ch2_scene9_slash_Step_0_gml_278_0");
	c_talk_wait();
	c_sel(qu);
	c_sprite(spr_queen_chair_ohoho_1);
	c_imagespeed(0.1);
	c_speaker("queen");
	c_msgsetloc(0, "\\EQ* Seems Cool/", "obj_ch2_scene9_slash_Step_0_gml_285_0");
	c_facenext("susie", 4);
	c_msgnextloc("\\E4* Well^1, FORGET it^1, dude./%", "obj_ch2_scene9_slash_Step_0_gml_287_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_point);
	c_shakeobj();
	c_sel(qu);
	c_sprite(spr_queen_chair_swish_wine);
	c_imagespeed(0.1);
	c_speaker("susie");
	c_msgsetloc(0, "\\E4* Nobody's turning anyone's face into a robot!/", "obj_ch2_scene9_slash_Step_0_gml_297_0");
	c_facenext("queen", 14);
	c_msgnextloc("\\EE* Could That Be A Statement Of Animous Dissension/", "obj_ch2_scene9_slash_Step_0_gml_299_0");
	c_facenext("susie", 6);
	c_msgnextloc("\\E6* Huh?/", "obj_ch2_scene9_slash_Step_0_gml_301_0");
	c_facenext("queen", 1);
	c_msgnextloc("\\E1* You Wanna Fight^1, Loser/%", "obj_ch2_scene9_slash_Step_0_gml_303_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_susieb_attack);
	c_imagespeed(0.25);
	c_var_instance(id, "susieattackcon", 1);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* YES!!^1! YES ALREADY^1, YES!!!/%", "obj_ch2_scene9_slash_Step_0_gml_310_0");
	c_talk_wait();
	c_imagespeed(0);
	c_imageindex(3);
	c_sel(qu);
	c_var_instance(id, "screencon", 1);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Oh Then Bye/%", "obj_ch2_scene9_slash_Step_0_gml_318_0");
	c_walkdirect(qu_actor.x + 400, 90, 40);
	c_sel(kr);
	c_facing("r");
	c_talk_wait();
	c_sel(su);
	c_imagespeed(1);
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* WAIT^1! A GODDAMN^1! SECOND!!/", "obj_ch2_scene9_slash_Step_0_gml_327_0");
	c_facenext("queen", 0);
	c_msgnextloc("* I Have No Time For Such Frivolities (And Would Kick Your Ass)/", "obj_ch2_scene9_slash_Step_0_gml_329_0");
	c_msgnextloc("\\E1* But Perhaps Someone Else Could Entertain You/%", "obj_ch2_scene9_slash_Step_0_gml_330_0");
	c_talk_wait();
	c_var_instance(id, "susieattackcon", 0);
	c_sel(su);
	c_facing("r");
	c_imageindex(0);
	c_imagespeed(0);
	c_sel(npc1);
	c_setxy(npc2_actor.x, npc1_actor.y);
	c_sel(npc2);
	c_setxy(npc2_actor.x + 50, npc2_actor.y);
	c_pan_wait(280, 0, 20);
	c_mus2("volume", 0, 60);
	c_sel(su);
	c_facing("l");
	c_sel(kr);
	c_facing("l");
	c_var_instance(id, "wirecon", 1);
	c_sel(su);
	c_sprite(spr_susie_shock);
	c_wait(60);
	c_pan(620, 0, 30);
	c_wait(5);
	c_var_instance(id, "funcon", 1);
	c_wait(5);
	c_sel(kr);
	c_facing("r");
	c_autofacing(0);
	c_sel(su);
	c_facing("r");
	c_autofacing(0);
	xx = 620;
	yy = 0;
	c_sel(npc1);
	c_setxy((xx + 480) - 200, -320);
	c_walkdirect((xx + 480) - 200, 120, 30);
	c_sel(npc2);
	c_setxy(xx + 440, -210);
	c_walkdirect(xx + 440, 170, 30);
	c_sel(wire1);
	c_setxy((xx + 480 + 2) - 200, -320);
	c_walkdirect((xx + 480) - 200, 124, 30);
	c_sel(wire2);
	c_setxy(xx + 440 + 2, -210);
	c_walkdirect(xx + 440, 174, 30);
	c_wait(10);
	c_sel(npc1);
	c_animate(18, 23, 0.5);
	c_sel(npc2);
	c_animate(18, 23, 0.5);
	c_wait(60);
	c_speaker("queen");
	c_msgsetloc(0, "* Enjoy: Your Assimilation/%", "obj_ch2_scene9_slash_Step_0_gml_415_0");
	c_mus("free");
	c_talk_wait();
	c_actortokris();
	c_actortocaterpillar();
	con = 2;
}
if (screencon == 1)
{
	with (obj_queenscreen)
		dismiss = 1;
	screencon = 2;
}
if (susieattackcon == 1)
{
	if (su_actor.image_index == 1)
		snd_play(snd_laz_c);
}
if (customcon == 1 && con == 2)
{
	ca_actor.depth = 5000;
	ca_actor.hspeed = -8;
	if (ca_actor.x <= (no_actor.x - 12))
	{
		ca_actor.x = no_actor.x - 16;
		with (ca_actor)
		{
			hspeed = 0;
			con = 1;
		}
		customtimer = 0;
		customcon = 2;
	}
}
if (customcon == 2 && con == 2)
{
	customtimer++;
	if (customtimer == 14)
	{
		with (su_actor)
			sprite_index = spr_susie_shock_r;
		with (no_actor)
			sprite_index = spr_noelle_shocked_dw;
	}
	if (customtimer == 49)
	{
		snd_play(snd_spearappear);
		with (ca_actor)
			gravity = -1;
		with (no_actor)
			gravity = -1;
		c_waitcustom_end();
		customcon = 3;
	}
}
if (funcon == 1)
{
	global.encounterno = 53;
	scr_encountersetup(global.encounterno);
	funcon = 2;
}
if (wirecon == 1)
{
	with (obj_marker)
	{
		if (sprite_index == spr_plugboy_cower)
			sprite_index = spr_plugboy_shock;
		if (sprite_index == spr_plugboy_plug)
			sprite_index = spr_werewire_plug_vertical;
		image_index = 1;
	}
	wire1_actor.x = npc1_actor.x + 20;
	wire1_actor.y = npc1_actor.y - 300;
	wire2_actor.x = npc2_actor.x + 20;
	wire2_actor.y = npc2_actor.y - 300;
	with (wire1_actor)
	{
		gravity = 1;
		depth = -400;
	}
	with (wire2_actor)
	{
		gravity = 1;
		depth = -400;
	}
	wirecon = 2;
}
if (wirecon == 2)
{
	if (wire1_actor.y >= (npc1_actor.y + 10))
	{
		wire1_actor.gravity = 0;
		wire1_actor.vspeed = 0;
		wire2_actor.gravity = 0;
		wire2_actor.vspeed = 0;
		wire1_actor.y = npc1_actor.y + 20;
		wire2_actor.y = npc2_actor.y + 20;
		snd_play(snd_grab);
		with (npc1_actor)
			scr_shakeobj();
		with (npc2_actor)
			scr_shakeobj();
		wirecon = 3;
		wiretimer = 0;
	}
}
if (wirecon == 3)
{
	wiretimer++;
	if (wiretimer >= 8)
	{
		with (obj_marker)
			gravity = -2;
		wirecon = 4;
		wiretimer = 0;
	}
}
if (wirecon == 4)
{
	if (wire1_actor.y <= -140)
	{
		with (obj_marker)
		{
			vspeed = 0;
			gravity = 0;
			if (sprite_index == spr_werewire_plug_vertical)
				sprite_index = spr_plugboy_plug;
			if (sprite_index == spr_plugboy_shock)
				sprite_index = spr_plugboy_transform;
		}
		wirecon = 5;
		wiretimer = 0;
	}
}
if (wirecon == 5)
{
	wiretimer++;
	if (wiretimer == 70)
	{
		snd_play(snd_electric_talk);
		wiretimer = 0;
		wirecon++;
	}
}
if (con == 2 && !instance_exists(obj_cutscene_master))
{
	global.specialbattle = 3;
	global.flag[9] = 1;
	global.batmusic[0] = snd_init("battle.ogg");
	instance_create(0, 0, obj_battleback);
	instance_create(0, 0, obj_encounterbasic);
	encounterflag = 552;
	global.flag[54] = encounterflag;
	global.encounterno = 53;
	scr_encountersetup(global.encounterno);
	with (obj_actor)
	{
		if (name == "queen")
		{
			sprite_index = spr_queen_chair_ohoho_1;
			hspeed = 6;
		}
	}
	with (npc1_actor)
	{
		depth = -100;
		scr_move_to_point_over_time(global.monstermakex[0] - 2, global.monstermakey[0] - 34, 15);
		depth += 20;
	}
	with (wire1_actor)
	{
		depth = -200;
		scr_move_to_point_over_time(global.monstermakex[0] - 2, global.monstermakey[0] - 34, 15);
		depth += 20;
	}
	with (npc2_actor)
	{
		depth = -100;
		scr_move_to_point_over_time(global.monstermakex[1] - 2, global.monstermakey[1] - 34, 15);
	}
	with (wire2_actor)
	{
		depth = -200;
		scr_move_to_point_over_time(global.monstermakex[1] - 2, global.monstermakey[1] - 34, 15);
	}
	con = 3;
	alarm[4] = 25;
}
if (con == 4)
{
	with (obj_actor)
		instance_destroy();
	with (obj_marker)
		instance_destroy();
	con = 5;
	alarm[4] = 30;
}
if (con == 6 && !instance_exists(obj_battlecontroller))
{
	global.interact = 1;
	con = 8.5;
	alarm[4] = 30;
	obj_mainchara.cutscene = 1;
	obj_mainchara.x = 707;
	obj_mainchara.y = 194;
	obj_caterpillarchara.x = 814;
	obj_caterpillarchara.y = 176;
	camerax_set(620);
	scr_losechar();
	scr_getchar(2);
	scr_getchar(3);
	global.cinstance[1] = scr_makecaterpillar(540, 180, 3, 1);
}
if (con == 9.5)
{
	con = 9.6;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	kr_actor.sprite_index = spr_krisr_dark;
	su_actor.sprite_index = spr_susie_walk_left_dw;
	ra_actor.sprite_index = spr_ralsei_walk_right;
}
if (con == 9.6 || scr_cutscene_loaded())
{
	con = 10;
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* Phew^1, nice fighting again after so long!/%", "obj_ch2_scene9_slash_Step_0_gml_639_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Now let's go catch up to Queen!/%", "obj_ch2_scene9_slash_Step_0_gml_645_0");
	c_talk_wait();
	c_var_instance(id, "wirecon", 10);
	c_wait(30);
	c_sprite(spr_susie_shock_r);
	c_shakeobj();
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* ..^1. or not!/%", "obj_ch2_scene9_slash_Step_0_gml_657_0");
	c_talk_wait();
	c_var_instance(id, "wirecon", 15);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Huh? They calmed down...?/%", "obj_ch2_scene9_slash_Step_0_gml_663_0");
	c_facing("r");
	c_talk_wait();
	c_facing("l");
	c_sel(kr);
	c_facing("l");
	c_sel(ra);
	c_panspeed(-8, 0, 25);
	c_walk_wait("r", 3, 20);
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EH* I just used my PACIFY spell to put them into \"Sleep Mode\"!/", "obj_ch2_scene9_slash_Step_0_gml_675_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* Ralsei! You're here!/%", "obj_ch2_scene9_slash_Step_0_gml_677_0");
	c_talk_wait();
	c_sel(0);
	c_specialsprite(0);
	c_autofacing(0);
	c_sel(kr);
	c_walk("u", 4, 10);
	c_sel(ra);
	c_walk("r", 4, 15);
	c_sel(1);
	c_walk_wait("l", 8, 9);
	c_wait(15);
	c_sel(ra);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E0* I felt a dark presence and hurried over!/%", "obj_ch2_scene9_slash_Step_0_gml_692_0");
	c_talk_wait();
	c_facing("u");
	c_msgsetloc(0, "\\E9* It seems that a new Dark Fountain has appeared.../%", "obj_ch2_scene9_slash_Step_0_gml_695_0");
	c_talk_wait();
	c_sel(ra);
	c_facing("r");
	c_sel(su);
	c_facing("susieunhappy");
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\ER* Ralsei..^1. they got Noelle!/%", "obj_ch2_scene9_slash_Step_0_gml_704_0");
	c_talk_wait();
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EN* Damn^1, what was she THINKING messing in our Dark World!?/%", "obj_ch2_scene9_slash_Step_0_gml_710_0");
	c_talk_wait();
	c_facing("u");
	c_wait(5);
	c_msgsetloc(0, "\\EO* If we don't do something^1, she might be.../%", "obj_ch2_scene9_slash_Step_0_gml_714_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E0* Worry not^1, Susie^1! All we have to do is seal the Fountain!/", "obj_ch2_scene9_slash_Step_0_gml_719_0");
	c_facenext("susie", 26);
	c_msgnextloc("\\EQ* ..^1. yeah. Yeah!/%", "obj_ch2_scene9_slash_Step_0_gml_721_0");
	c_talk_wait();
	c_facing("susiehappy");
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Can't be mad about another adventure^1, right!?/%", "obj_ch2_scene9_slash_Step_0_gml_726_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* C'mon^1, Kris!/%", "obj_ch2_scene9_slash_Step_0_gml_735_0");
	c_talk_wait();
	c_soundplay(snd_jump);
	c_sel(kr);
	c_jump_sprite(720, 193, 12, 17, spr_kris_fall_d_dw, spr_kris_dw_landed);
	c_delayfacing(16, "r");
	c_sel(su);
	c_delayfacing(16, "r");
	c_jump_sprite(635, 178, 12, 17, spr_susie_dw_fall_d, spr_susie_dw_landed);
	c_sel(ra);
	c_delayfacing(16, "r");
	c_jump_sprite(564, 184, 12, 17, spr_ralsei_jump, spr_teacup_ralsei_land);
	c_wait(20);
	c_soundplay(snd_impact);
	c_wait(16);
	c_soundplay(snd_swing);
	c_sel(kr);
	c_spin(2);
	c_sel(su);
	c_spin(2);
	c_sel(ra);
	c_spin(2);
	c_wait(16);
	c_soundplay(snd_bell);
	c_sel(kr);
	c_sprite(spr_kris_pose);
	c_addxy(-2, -2);
	c_spin(0);
	c_sel(su);
	c_sprite(spr_susie_pose);
	c_addxy(2, 2);
	c_spin(0);
	c_sel(ra);
	c_sprite(spr_ralsei_pose);
	c_addxy(-10, 0);
	c_spin(0);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Let's go!/%", "obj_ch2_scene9_slash_Step_0_gml_778_0");
	c_talk_wait();
	c_sel(ra);
	c_addxy(10, 0);
	c_sel(kr);
	c_addxy(2, 2);
	c_sel(su);
	c_addxy(-2, -2);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
}
if (wirecon == 10)
{
	xx = camerax();
	global.encounterno = 53;
	scr_encountersetup(global.encounterno);
	global.monsterstatus[0] = 0;
	global.monsterstatus[1] = 0;
	monster1 = instance_create(global.monstermakex[0], global.monstermakey[0], obj_werewire_enemy);
	monster1.x = (xx + 480) - 200;
	monster1.y = -280;
	monster1.myself = 0;
	with (monster1)
		event_user(12);
	monster2 = instance_create(global.monstermakex[0], global.monstermakey[0], obj_werewire_enemy);
	monster2.x = (xx + 640) - 200;
	monster2.y = -160;
	monster2.myself = 1;
	with (monster2)
		event_user(12);
	with (obj_monsterparent)
	{
		myself = 0;
		gravity = 2;
	}
	wirecon = 11;
	landeda = 0;
	landedb = 0;
}
if (wirecon == 11)
{
	if (monster1.y >= 120 && landeda == 0)
	{
		landeda = 1;
		instance_create(0, 0, obj_shake);
		snd_play(snd_impact);
		monster1.gravity = 0;
		monster1.speed = 0;
	}
	if (monster2.y >= 170 && landedb == 0)
	{
		landedb = 1;
		snd_play(snd_impact);
		monster2.speed = 0;
		monster2.gravity = 0;
	}
}
if (wirecon == 15)
{
	snd_play(snd_pacify);
	with (obj_monsterparent)
	{
		instance_create(x + 36, (y - 42) + 46, obj_visualEffect_pacify);
		instance_create(x, y - 42, obj_werewire_spare);
		instance_destroy();
	}
	wirecon = 16;
}
if (con == 10 && !instance_exists(obj_cutscene_master))
{
	global.interact = 0;
	con = 11;
	global.plot = 51;
	scr_tempsave();
}
