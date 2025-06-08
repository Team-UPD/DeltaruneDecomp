if (!init_forcefields)
{
	init_forcefields = true;
	if (i_ex(obj_ch2_noellepuzzle_forcefield))
	{
		with (obj_ch2_noellepuzzle_forcefield)
		{
			if (x > 300)
				stayVisible = 1;
		}
	}
}
if (init == 0)
{
	for (i = 0; i < instance_number(obj_ch2_noellepuzzle_key_noelle); i++)
	{
		buttonX[i] = instance_find(obj_ch2_noellepuzzle_key_noelle, i).x - 4;
		buttonY[i] = instance_find(obj_ch2_noellepuzzle_key_noelle, i).y - 70;
	}
	buttonX = scr_array_sort(buttonX, true);
	buttonY = scr_array_sort(buttonY, true);
	init = 1;
}
if (con == 0 && obj_mainchara.x > 150)
{
	global.interact = 1;
	con = 1;
	global.facing = 1;
	global.flag[7] = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	no_silhouette = instance_create(no_actor.x, cameray() - 100, obj_following_silhouette);
	no_silhouette.target_char = no_actor;
	var exit_forcefield = instance_create(20, 240, obj_forcefield);
	with (exit_forcefield)
	{
		image_xscale = 2;
		image_yscale = 4;
		scr_depth();
	}
}
if (con == 1)
{
	if (instance_exists(obj_dialoguer))
		obj_dialoguer.zurasu = 1;
	con = 10;
	c_sel(kr);
	c_walk("r", 4, 15);
	c_sel(no);
	c_walk("r", 4, 15);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* Gosh^1, that was close^1, wasn't it^1, Kris...?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_32_0");
	c_talk_wait();
	c_sel(no);
	c_walk("d", 3, 3);
	c_delaywalkdirect(4, 270, 216, 40);
	c_delayfacing(45, "l");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E1* This..^1. Strange world..^1. this big city.../", "obj_ch2_noelle_monologue_slash_Step_0_gml_49_0");
	c_msgnextloc("\\E9* It's so wild..^1. It kind of makes my head spin./%", "obj_ch2_noelle_monologue_slash_Step_0_gml_50_0");
	c_talk();
	c_wait(46);
	c_waittalk();
	c_sel(no);
	c_facing("u");
	c_wait(10);
	c_sprite(spr_noelle_walk_up_headtilt_dw);
	c_halt();
	c_speaker("noelle");
	c_msgsetloc(0, "\\E9* ...?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_59_0");
	c_talk_wait();
	c_wait(30);
	c_facing("u");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E2* Looks like another puzzle.../%", "obj_ch2_noelle_monologue_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E9* Maybe if I go..^1. down..^1. here?/%", "obj_ch2_noelle_monologue_slash_Step_0_gml_78_0");
	c_talk_wait();
	c_wait(5);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk_wait("u", 2, 10);
	c_imagespeed(0);
	c_wait(10);
	c_autowalk(1);
	c_wait(5);
	c_walk("d", 6, 3);
	c_wait(3);
	c_sel(kr);
	c_facing("d");
	c_sel(no);
	c_jump(270, buttonY[0], 20, 10);
	c_soundplay(snd_jump);
	c_wait(20);
	c_walkdirect_wait(buttonX[0], buttonY[0], 30);
	c_sprite(spr_noelle_walk_face_up_dw);
	c_halt();
	c_actortokris();
	c_waitcustom();
}
if (con == 10 && !d_ex() && customcon == 1)
{
	con = 11;
	global.interact = 0;
}
if (con == 12 && customcon == 1)
{
	con = 14;
	customcon = 0;
	c_waitcustom_end();
	c_sel(no);
	c_wait(30);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[1], buttonY[1], 60);
	c_halt();
	c_wait(30);
	c_imagespeed(0.25);
	c_delaycmd(161, "imagespeed", 0);
	c_walkdirect_wait(1355, buttonY[1], 160);
	c_var_instance(id, "text_con", 0);
	c_waitcustom();
}
if (con == 15 && customcon == 1)
{
	con = 16;
	customcon = 0;
	c_waitcustom_end();
	c_imagespeed(0.25);
	c_walkdirect_wait(1700, buttonY[1], 60);
	c_autowalk(1);
	c_walkdirect_wait(1700, buttonY[2], 100);
	c_autowalk(0);
	c_sprite(spr_noelle_walk_face_up_dw);
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[2], buttonY[2], 30);
	c_halt();
	c_var_instance(id, "text_con", 2);
	c_waitcustom();
}
if (con == 17 && customcon == 1)
{
	con = 19;
	customcon = 0;
	c_waitcustom_end();
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[3], buttonY[3], 120);
	c_halt();
	c_wait(30);
	c_var_instance(id, "text_con", 4);
	c_imagespeed(0.25);
	c_walkdirect_wait(2780, buttonY[3], 60);
	c_autowalk(1);
	c_walkdirect_wait(2780, buttonY[4], 100);
	c_autowalk(0);
	c_sprite(spr_noelle_walk_face_up_dw);
	c_imagespeed(0.25);
	c_walkdirect_wait(2970, buttonY[4], 30);
	c_halt();
	c_waitcustom();
}
if (con == 20 && customcon == 1)
{
	con = 21;
	customcon = 0;
	c_waitcustom_end();
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[4], buttonY[4], 130);
	c_halt();
	c_wait(30);
	c_var_instance(id, "text_con", 6);
	c_imagespeed(0.25);
	c_walkdirect_wait(4330, buttonY[4], 100);
	c_halt();
	c_waitcustom();
}
if (con == 22 && !d_ex() && customcon == 1)
{
	con = 23;
	customcon = 0;
	c_waitcustom_end();
	c_imagespeed(0.25);
	c_walkdirect_wait(4610, buttonY[4], 60);
	c_autowalk(1);
	c_walkdirect_wait(4610, buttonY[5], 100);
	c_autowalk(0);
	c_sprite(spr_noelle_walk_face_up_dw);
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[5], buttonY[5], 60);
	c_halt();
	c_wait(30);
	c_var_instance(id, "young_noelle", 1);
	c_imagespeed(0.25);
	c_delaycmd(81, "imagespeed", 0);
	c_walkdirect_wait(5327, buttonY[5], 80);
	c_var_instance(id, "text_con", 8);
	c_waitcustom();
}
if (con == 24 && customcon == 1)
{
	con = 25;
	customcon = 0;
	global.fc = 0;
	c_var_instance(id, "young_noelle", -1);
	c_waitcustom_end();
	c_var_instance(id, "wait_ready", false);
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[6], buttonY[6], 130);
	c_halt();
	c_wait(30);
	c_var_instance(id, "text_con", 10);
	c_imagespeed(0.25);
	c_walkdirect_wait(6500, buttonY[6], 100);
	c_halt();
	c_var_instance(id, "wait_ready", true);
	c_waitcustom();
}
if (con == 26 && !d_ex() && customcon == 1)
{
	con = 33;
	customcon = 0;
	global.fc = 0;
	c_waitcustom_end();
	c_var_instance(id, "wait_ready", false);
	c_imagespeed(0.25);
	c_walkdirect_wait(buttonX[7], buttonY[7], 100);
	c_halt();
	c_var_instance(id, "pause_kris", true);
	c_wait(30);
	c_var_instance(id, "wait_ready", true);
	c_waitcustom();
}
if (pause_kris)
{
	pause_kris = false;
	global.interact = 1;
}
if (con == 33 && !d_ex() && customcon == 1 && wait_ready)
{
	con = 34;
	customcon = 0;
	global.interact = 1;
	global.facing = 0;
	obj_mainchara.visible = false;
	kr_actor.visible = true;
	kr_actor.x = obj_mainchara.x;
	kr_actor.y = obj_mainchara.y;
}
if (con == 34 && !d_ex() && wait_ready)
{
	con = 35;
	c_waitcustom_end();
	c_var_instance(id, "wait_ready", false);
	c_var_instance(id, "auto_continue", false);
	c_sel(no);
	c_wait(15);
	c_autowalk(1);
	c_facing("u");
	c_walk_wait("u", 5, 10);
	c_wait(15);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk_wait("d", 5, 10);
	c_autowalk(1);
	c_soundplay(snd_jump);
	c_jump(6796, kr_actor.y - 20, 20, 10);
	c_wait(15);
	if (scr_directOverTime(kr_actor.x + 50, 6796, 4) <= 4)
		c_walkdirect_wait(kr_actor.x + 50, kr_actor.y - 20, 4);
	else
		c_walkdirect_wait(kr_actor.x + 50, kr_actor.y - 20, scr_directOverTime(kr_actor.x + 50, 6796, 4));
	c_wait(20);
	c_sel(kr);
	c_facing("r");
	c_msgside(1);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E6* (Sigh...)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_348_0");
	c_talk_wait();
	c_sel(no);
	c_facing("r");
	c_msgsetloc(0, "\\E4* (Kris is the only one who knows how weird I am.)/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_352_0");
	c_msgnextloc("\\E8* (It's not fair^1, y'know!?)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_353_0");
	c_talk();
	c_wait(20);
	c_waittalk();
	c_sel(no);
	c_facing("l");
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* (Everyone knows how weird YOU are. Fahahaha.)/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_360_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("d");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 35 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.interact = 0;
	global.facing = 0;
	global.flag[7] = 0;
	global.plot = 94;
}
if (auto_continue)
{
	if (instance_exists(obj_dialoguer))
	{
		obj_dialoguer.zurasu = 1;
		obj_dialoguer.side = 0;
	}
	if (instance_exists(obj_writer))
	{
		obj_writer.skippable = 0;
		if (obj_writer.halt != 0)
		{
			msgtimer++;
			var max_timer = 60;
			if (global.lang == "ja")
			{
				if (text_con == 3 || text_con == 5)
					max_timer = 120;
				if (text_con == 9)
					max_timer = 90;
			}
			if (msgtimer >= max_timer)
			{
				with (obj_writer)
					forcebutton1 = 1;
				msgtimer = 0;
			}
		}
		else
		{
			msgtimer = 0;
		}
	}
}
if (custom_delay > 0)
{
	customcon = 1;
	alarm[9] = custom_delay;
	custom_delay = 0;
}
if (allow_move)
{
	allow_move = false;
	global.interact = !global.interact;
	if (global.interact == 1)
	{
		obj_mainchara.visible = false;
		kr_actor.visible = true;
		kr_actor.x = obj_mainchara.x;
		kr_actor.y = obj_mainchara.y;
	}
}
if (young_noelle != 0)
{
	no_silhouette.copy_sprite = young_noelle < 0;
	young_noelle = 0;
}
if (text_con == 0)
{
	text_con = 1;
	auto_continue = true;
	scr_speaker("noelle");
	msgsetloc(0, "* ...when I said this city makes my head spin.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_470_0");
	msgnextloc("* I didn't mean in a bad way... you know?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_471_0");
	msgnextloc("* I always wanted to go someplace new^1, you know?/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_472_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
if (text_con == 2 && !d_ex())
{
	text_con = 3;
	scr_speaker("noelle");
	msgsetloc(0, "* ..^1. And Dess..^1. always told me she'd take me./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_486_0");
	msgnextloc("* Somewhere like this./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_487_0");
	msgnextloc("* Somewhere with shining lights./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_488_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
if (text_con == 4 && !d_ex())
{
	text_con = 5;
	scr_speaker("noelle");
	msgsetloc(0, "* ... don't you miss exploring, Kris?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_502_0");
	msgnextloc("* Back when the four of us were kids?/", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_503_0");
	msgnextloc("* Gosh, remember that night we explored the forest behind the graveyard?/%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_504_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
if (text_con == 6 && !d_ex())
{
	text_con = 7;
	scr_speaker("noelle");
	msgsetloc(0, "* Ha, I know we never found anything interesting back there.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_518_0");
	msgnextloc("* I mostly remember... Crying because I was scared./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_519_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
if (text_con == 8 && !d_ex())
{
	text_con = 9;
	scr_speaker("noelle");
	msgsetloc(0, "* But for some reason I feel..^1. nostalgic thinking about it./", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_533_0");
	msgnextloc("* Dess wiping away my tears with Azzy's jacket.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_534_0");
	msgnextloc("* With warm sleeves that smelled like cinnamon./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_535_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
if (text_con == 10 && !d_ex())
{
	text_con = 11;
	scr_speaker("noelle");
	msgsetloc(0, "* I guess I didn't mind being scared if it meant.../", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_549_0");
	msgnextloc("* Someone would comfort me./%", "obj_ch2_city_noelle_monologue_slash_Step_0_gml_550_0");
	global.fc = 0;
	d = d_make();
	d.zurasu = 1;
	d.side = 0;
}
