var recruited_all, recruited_none;
if (global.interact == 0 && con == 1)
{
	con = 2;
	global.interact = 1;
	global.facing = 1;
	recruited_all = scr_get_total_recruits(2) >= 9;
	recruited_none = scr_get_total_recruits(2) == 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = actor_count + 2;
	qu_actor = instance_create(camerax() + 286, cameray() - 200, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_down;
	tr = actor_count + 3;
	tr_actor = instance_create(camerax() + 463, cameray() - 100, obj_actor);
	scr_actor_setup(tr, tr_actor, "trashy");
	tr_actor.sprite_index = spr_npc_trashy;
	c_sel(qu);
	c_var("image_alpha", 0);
	c_setxy(camerax() + 286, 50);
}
if (con == 2)
{
	con = 3;
	alarm[0] = 30;
	c_sel(kr);
	c_walkdirect(370, 225, 15);
	c_delayfacing(16, "u");
	c_sel(su);
	c_walkdirect(225, 207, 15);
	c_delayfacing(16, "u");
	c_sel(qu);
	c_var_lerp("image_alpha", 0, 1, 30);
	c_wait(30);
	c_wait(45);
	c_sel(qu);
	c_facing("l");
	c_wait(30);
	c_facing("r");
	c_wait(30);
	c_facing("u");
	c_wait(30);
	c_msgside("bottom");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* So This Is Your \"Castle Town\"/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_59_0");
	c_msgnextloc("\\ED* It's/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_60_0");
	c_talk_wait();
	if (recruited_all)
	{
		c_facing("d");
		c_wait(5);
		c_speaker("queen");
		c_msgsetloc(0, "\\EO* Not Bad/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_70_0");
		c_msgnextloc("\\E1* Kris^1, Susie.../", "obj_ch2_room_castle_area_1_slash_Step_0_gml_71_0");
		c_msgnextloc("\\ED* On Behalf Of Everyone I Oppressed/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_72_0");
		c_msgnextloc("\\EB* Thank You/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_73_0");
		c_talk_wait();
		c_facing("u");
		c_wait(90);
		c_speaker("queen");
		c_msgsetloc(0, "\\EC* I Am Going To Be Your Wacky Roommate Now/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_81_0");
		c_talk_wait();
		c_walk_wait("u", 14, 20);
		c_wait(50);
	}
	if (!recruited_all && !recruited_none)
	{
		c_facing("r");
		c_wait(5);
		c_speaker("queen");
		c_msgsetloc(0, "\\EF* Wait/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_97_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\EE* Where's Nubert/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_104_0");
		c_talk_wait();
		c_walk_wait("r", 12, 6);
		c_speaker("queen");
		c_msgsetloc(0, "\\E5* Nubert..^1. Nuby..^1. Where Are You/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_111_0");
		c_talk_wait();
		c_sel(tr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walkdirect(463, 60, 20);
		c_wait(10);
		c_sel(qu);
		c_facing("r");
		c_speaker("no_name");
		c_msgsetloc(0, "* He said he wouldn't come unless everybody else did.../%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_126_0");
		c_talk_wait();
		c_wait(10);
		c_sel(tr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk_wait("u", 8, 20);
		c_wait(10);
		c_sel(qu);
		c_facing("u");
		c_speaker("queen");
		c_msgsetloc(0, "\\E4* Nubert/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_142_0");
		c_msgnextloc("\\EB* A Hero Until The End/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_143_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\EE* Kris.../", "obj_ch2_room_castle_area_1_slash_Step_0_gml_150_0");
		c_msgnextloc("\\EB* You Truced Your Best I Know/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_151_0");
		c_talk_wait();
		c_walk_wait("l", 6, 12);
		c_facing("u");
		c_wait(30);
		c_speaker("queen");
		c_msgsetloc(0, "\\EA* Oh Well/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_161_0");
		c_msgnextloc("\\E1* It Seems Like A Wonderful Town/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_162_0");
		c_talk_wait();
		c_walk_wait("u", 6, 60);
	}
	if (recruited_none)
	{
		c_facing("d");
		c_wait(5);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Magnificent/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_176_0");
		c_msgnextloc("\\ED* The Population Density Is So Wonderfully Low/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_177_0");
		c_talk_wait();
		c_facing("r");
		c_wait(5);
		c_speaker("queen");
		c_msgsetloc(0, "\\EC* I Bet The Swatchlings Will Love This/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_185_0");
		c_talk_wait();
		c_wait(60);
		c_facing("d");
		c_wait(5);
		c_speaker("queen");
		c_msgsetloc(0, "\\ED* Where Are The Swatchlings Anyhow/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_196_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\EE* Or Tasque Manager/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_203_0");
		c_talk_wait();
		c_facing("u");
		c_speaker("queen");
		c_msgsetloc(0, "\\E5* Or Even Regular Tasque/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_210_0");
		c_talk_wait();
		c_wait(90);
		c_facing("d");
		c_speaker("queen");
		c_msgsetloc(0, "\\E2* Hey Kris Where Is Everyone Else/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_220_0");
		c_talk_wait();
		c_sel(tr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walkdirect(463, 60, 20);
		c_wait(10);
		c_sel(qu);
		c_facing("r");
		c_speaker("no_name");
		c_msgsetloc(0, "* Don't worry^1, Queen^1! I'm here!/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_235_0");
		c_msgnextloc("* Me^1, and only me!/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_236_0");
		c_talk_wait();
		c_wait(10);
		c_sel(tr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk_wait("u", 8, 20);
		c_speaker("queen");
		c_msgsetloc(0, "\\E5* .../%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_246_0");
		c_talk_wait();
		c_sel(qu);
		c_facing("u");
		c_speaker("queen");
		c_msgsetloc(0, "\\EB* Well I Guess I'll/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_254_0");
		c_msgnextloc("\\EB* \"Go To My Room\"/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_255_0");
		c_msgnextloc("\\E5* Ha Ha/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_256_0");
		c_talk_wait();
		c_walk_wait("u", 2, 100);
	}
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 4 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.flag[387] = 1;
	if (!scr_havechar(3))
		scr_getchar(3);
	global.facing = 0;
	global.interact = 0;
}
if (global.interact == 0 && global.plot <= 7 && global.flag[433] == 0 && con == 10)
{
	if (i_ex(obj_mainchara))
	{
		if (obj_mainchara.y <= 40 && obj_mainchara.runcounter <= 5)
		{
			con = 11;
			global.flag[433] = 1;
			scr_speaker("susie");
			msgsetloc(0, "\\E0* Hey Kris^1, uh^1, you really gonna walk everywhere so slowly?/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_298_0");
			msgnextloc("\\EK* I know you're kinda^1, uh^1, taking it in^1, but you can run^1, y'know?/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_299_0");
			scr_anyface_next("no_name", 0);
			msgnextsubloc("* (You remembered something about the ~1 button.)/%", scr_get_input_name(5), "obj_ch2_room_castle_area_1_slash_Step_0_gml_301_0");
			global.interact = 1;
			d = d_make();
		}
	}
}
if (con == 11 && !d_ex())
{
	con = 12;
	global.interact = 0;
}
