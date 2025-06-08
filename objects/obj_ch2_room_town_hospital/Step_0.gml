if (con == -1)
{
	con = 1;
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_makecaterpillar(obj_mainchara.x + 60, obj_mainchara.y - 14, 2, 0);
	with (obj_mainchara)
		visible = 0;
	with (obj_caterpillarchara)
		visible = 0;
	kr = 0;
	kr_actor = instance_create(150, 200, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisu;
	su = 1;
	su_actor = instance_create(150, 220, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_lw;
	no = 2;
	no_actor = instance_create(133, 90, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_noelle_game;
	alarm[1] = 30;
}
if (gamecon > 0)
{
	if ((gamecon % 2) == 0)
		no_actor.image_speed = 0.08;
	else
		no_actor.image_speed = 0;
}
if (con == 1)
{
	con = 2;
	c_sel(no);
	c_autowalk(0);
	c_imagespeed(0.08);
	c_sel(kr);
	c_walk("u", 3, 15);
	c_delaywalk(16, "r", 3, 8);
	c_delayfacing(25, "u");
	c_sel(su);
	c_walk("u", 3, 23);
	c_delaywalk(24, "l", 3, 8);
	c_delayfacing(33, "u");
	c_wait(30);
	if (scr_sideb_get_phase() >= 3)
	{
		c_speaker("rudy");
		c_msgsetloc(0, "\\E2* Silver Drake^1, huh? That's a new one./", "obj_ch2_room_town_hospital_slash_Step_0_gml_68_0");
		c_msgnextloc("\\E3* Alright^1, what's the plan^1, honey?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_69_0_b");
		c_facenext("noelle", "8");
		c_msgnextloc("\\E8* Hmm..^1. maybe we could try.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_71_0");
		c_msgnextloc("\\E4* Iceshock?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_72_0_b");
		c_facenext("rudy", 5);
		c_msgnextloc("\\E5* Ice on the Ice Palace boss?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_74_0_b");
		c_msgnextloc("\\E4* Don't you wanna try Fireshock or something?/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_75_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_game_right);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* H-huh? Yeah^1, you're right./", "obj_ch2_room_town_hospital_slash_Step_0_gml_83_0_b");
		c_facenext("rudy", 7);
		c_msgnextloc("\\E7* Here^1, how about letting me control for a bit?/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_85_0");
		c_talk_wait();
		c_sprite(spr_noelle_game_unhappy);
		c_imagespeed(0);
		c_var_instance(id, "gamecon", 0);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* N-no^1! I'll..^1. control it myself./", "obj_ch2_room_town_hospital_slash_Step_0_gml_94_0_b");
		c_facenext("rudy", 2);
		c_msgnextloc("\\E2* Not like you to be a controller hog^1, honey./", "obj_ch2_room_town_hospital_slash_Step_0_gml_96_0");
		c_msgnextloc("\\E4* You feeling alright?/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_97_0_b");
		c_talk_wait();
		c_sprite(spr_noelle_game_right);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E3* Huh? Me? Of course^1! I'm fine^1, dad.../%", "obj_ch2_room_town_hospital_slash_Step_0_gml_104_0");
		c_talk_wait();
		c_sprite(spr_noelle_game_unhappy);
		c_speaker("noelle");
		c_msgsetloc(0, "\\Ee* I just.../%", "obj_ch2_room_town_hospital_slash_Step_0_gml_111_0");
		c_talk_wait();
		c_sprite(spr_noelle_game_right);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* I fell asleep in the library^1, and.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_118_0");
		c_msgnextloc("\\E4* ..^1. you know^1, just had a weird dream. Haha./", "obj_ch2_room_town_hospital_slash_Step_0_gml_119_0");
		c_facenext("rudy", 1);
		c_msgnextloc("\\E1* Noelle.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_121_0_b");
		c_msgnextloc("\\E2* I knew that birdbrain'd put you to sleep^1! Haha!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_122_0");
		c_msgnextloc("\\E3* What'd he do? Start lecturing you on his theorum.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_123_0_b");
		c_msgnextloc("\\E7* Of the inequality in children's fighter games?/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_124_0");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* Hahah^1, no^1, no^1! He.../%", "obj_ch2_room_town_hospital_slash_Step_0_gml_130_0");
		c_talk_wait();
		c_sprite(spr_noelle_game_unhappy);
		c_speaker("noelle");
		c_msgsetloc(0, "\\Ee* ..^1. he fell asleep^1, too./", "obj_ch2_room_town_hospital_slash_Step_0_gml_137_0");
		c_facenext("rudy", 7);
		c_msgnextloc("\\E7* Wow^1, he even put himself to sleep? Ha!/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_139_0");
		c_talk_wait();
		c_sprite(spr_noelle_game_right);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* Haha^1, yeah^1, I guess so!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_146_0");
		c_facenext("rudy", 0);
		c_msgnextloc("\\E0* Well. Sounds like.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_148_0");
		c_msgnextloc("\\E4* You two've been hitting the books too hard./", "obj_ch2_room_town_hospital_slash_Step_0_gml_149_0");
		c_msgnextloc("\\E0* Why don't you go home and hibernate?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_150_0");
		c_msgnextloc("\\E2* I'll see you tomorrow at church./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_151_0");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* Dad? Are you gonna be okay to go...?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_157_0_b");
		c_facenext("rudy", 3);
		c_msgnextloc("\\E3* Of course^1! You take it easy^1, honey./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_159_0_b");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* Okay then..^1. yeah^1, I'll go home and rest./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_165_0_b");
		c_talk_wait();
		with (obj_doorB)
			y += 40;
		doormoved = 1;
	}
	else
	{
		c_speaker("noelle");
		c_msgsetloc(0, "\\E4* \"Silver Drake?\" I've never beaten this boss before.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_65_0");
		c_facenext("rudy", 3);
		c_msgnextloc("\\E3* Alright^1, hand it over^1, honey^1! I got this!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_67_0");
		c_facenext("noelle", 26);
		c_msgnextloc("\\EQ* No^1, dad^1! This is my battle!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_69_0");
		c_msgnextloc("\\E3* ..^1. So^1, um^1, how about just telling me what to do?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_70_0");
		c_facenext("rudy", 2);
		c_msgnextloc("\\E2* Haha^1, sure^1! How about trying Fireshock?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_72_0");
		c_facenext("noelle", 2);
		c_msgnextloc("\\E2* I'd love to^1, dad^1, but the mage left the party./", "obj_ch2_room_town_hospital_slash_Step_0_gml_74_0");
		c_facenext("rudy", 0);
		c_msgnextloc("\\E0* Oh yeah. How about one of your 99 Blaze Potions?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_76_0");
		c_facenext("noelle", 8);
		c_msgnextloc("\\E8* Umm^1, I'm saving those?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_78_0");
		c_facenext("rudy", 3);
		c_msgnextloc("\\E3* For what? Your birthday? C'mon^1, live a little!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_80_0");
		c_facenext("noelle", 28);
		c_msgnextloc("\\ES* OK^1, dad^1! This one's for you^1! Hiyah!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_82_0");
		c_msgnextloc("\\E2* .../", "obj_ch2_room_town_hospital_slash_Step_0_gml_83_0");
		c_msgnextloc("\\E8* It..^1. reflects fire attacks./", "obj_ch2_room_town_hospital_slash_Step_0_gml_84_0");
		c_facenext("rudy", "7");
		c_msgnextloc("\\E7* Hahaha^1! Whoops - hey^1, you gotta heal!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_86_0");
		c_facenext("noelle", 4);
		c_msgnextloc("\\E4* I wish I knew healing magic in real life./", "obj_ch2_room_town_hospital_slash_Step_0_gml_88_0");
		c_msgnextloc("\\E9* Then I'd make you better and.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_89_0");
		c_msgnextloc("\\E7* It wouldn't..^1. just be me and mom./", "obj_ch2_room_town_hospital_slash_Step_0_gml_90_0");
		c_facenext("rudy", "5");
		c_msgnextloc("\\E5* .../", "obj_ch2_room_town_hospital_slash_Step_0_gml_92_0");
		c_msgnextloc("\\E4* ..^1. your mother is.../", "obj_ch2_room_town_hospital_slash_Step_0_gml_93_0");
		c_msgnextloc("\\E2* Hey^1, it's ok^1, sweetheart. I'm getting better./", "obj_ch2_room_town_hospital_slash_Step_0_gml_94_0");
		c_msgnextloc("\\E3* Might even be able to go to church tomorrow./", "obj_ch2_room_town_hospital_slash_Step_0_gml_95_0");
		c_facenext("noelle", "4");
		c_msgnextloc("\\E4* ..^1. really? Are you..^1. sure you're okay?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_97_0");
		c_facenext("rudy", 2);
		c_msgnextloc("\\E2* \"Holidays happen whether you like it or not!\"/", "obj_ch2_room_town_hospital_slash_Step_0_gml_99_0");
		c_facenext("noelle", 8);
		c_msgnextloc("\\E8* \"Even though everyone likes holidays.\"/", "obj_ch2_room_town_hospital_slash_Step_0_gml_101_0");
		c_msgnextloc("\\E9* ..^1. Well^1, gotta go home soon or mom will call./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_102_0");
		c_talk_wait();
	}
	c_var_instance(id, "noellegame", false);
	c_var_instance(id, "gamecon", 0);
	c_sel(no);
	c_sprite(spr_noelle_game_done);
	c_imageindex(0);
	c_imagespeed(0.08);
	c_wait(18);
	c_sprite(spr_noelle_walk_left_lw);
	c_setxy(114, 89);
	c_autowalk(1);
	c_walk_wait("l", 2, 6);
	c_facing("r");
	c_wait(10);
	c_speaker("rudy");
	c_msgsetloc(0, "\\E3* See you tomorrow^1, honey./", "obj_ch2_room_town_hospital_slash_Step_0_gml_121_0");
	c_facenext("noelle", 4);
	c_msgnextloc("\\E4* Bye^1, dad. Love you!/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_123_0");
	c_talk_wait();
	c_sel(no);
	c_facing("d");
	c_waitcustom();
}
if (con == 2 && customcon == 1)
{
	con = 3;
	customcon = 0;
	with (obj_npc_rudy)
	{
		sprite_index = spr_rudy_d;
		x += 4;
	}
	c_waitcustom_end();
}
if (con == 3)
{
	con = 4;
	c_wait(10);
	c_sel(no);
	c_sprite(spr_noelle_shocked_lw);
	c_shakeobj();
	susstring = stringsetloc("Hell if I know???", "obj_ch2_room_town_hospital_slash_Step_0_gml_154_0");
	if (global.lang == "ja")
	{
		if (global.is_console == true)
			scr_smallface(1, "susie", 20, 426, 180, susstring);
		else
			scr_smallface(1, "susie", 20, 440, 170, susstring);
	}
	else
	{
		scr_smallface(1, "susie", 20, "right", "top", susstring);
	}
	if (scr_sideb_get_phase() >= 3)
	{
		c_speaker("noelle");
		c_msgsetloc(0, "\\EB* Kris!?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_269_0");
		c_msgnextloc("\\EB* Kris^1, what are you doing here?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_270_0");
		c_facenext("susie", 12);
		c_msgnextloc("\\EC* Hell if I know./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_272_0");
		c_talk_wait();
		c_sel(no);
		c_shakeobj();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* S-SUSIE!?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_280_0");
	}
	else
	{
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* SUSIE!?!? WHY ARE YOU HERE!?\\f1 ^1/", "obj_ch2_room_town_hospital_slash_Step_0_gml_157_0");
		c_facenext("rudy", "7");
		c_msgnextloc("\\E7* Sorry guys^1, this game's only one-player!/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_159_0");
		c_talk_wait();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EM* Ummm..^1. dad..^1. this is..^1. umm^1, Susie!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_163_0");
	}
	c_facenext("rudy", 7);
	c_msgnextloc("\\E7* Ohhhhhhh^1! THIS is Susie!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_165_0");
	c_msgnextloc("\\E2* Susie^1! Nice^1! Heard a lot about you!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_166_0");
	c_facenext("susie", "C");
	c_msgnextloc("\\EC* You^1, uh..^1. have???/", "obj_ch2_room_town_hospital_slash_Step_0_gml_168_0");
	c_facenext("noelle", "K");
	c_msgnextloc("\\EK* COOL^1, THINK I HAVE TO GO NOW!!!/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_170_0");
	c_talk_wait();
	c_sel(no);
	c_autowalk(1);
	c_walk_wait("d", 8, 6);
	c_walk_wait("r", 8, 7);
	c_walk("d", 8, 20);
	c_sel(su);
	c_facing("r");
	c_autowalk(0);
	c_walk("l", 5, 5);
	c_sel(kr);
	c_facing("l");
	c_autowalk(0);
	c_walk("r", 5, 5);
	c_wait(30);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_speaker("rudy");
	c_msgsetloc(0, "\\E0* Susie^1, huh?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_197_0");
	c_facenext("susie", "1");
	c_msgnextloc("\\E1* ..^1. Yeah./", "obj_ch2_room_town_hospital_slash_Step_0_gml_199_0");
	c_facenext("rudy", 6);
	c_msgnextloc("\\E6* Lay a finger on her and I'll kick your ass./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_201_0");
	c_talk_wait();
	c_sprite(spr_cutscene_03b_susie_shock_lw);
	c_speaker("susie");
	c_msgsetloc(0, "\\EF* Huh?/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_207_0");
	c_talk_wait();
	c_sprite(spr_susie_walk_up_lw);
	c_speaker("rudy");
	c_msgsetloc(0, "\\E7* Hahaha!^1! Hahahaha!^1! Just kidding!!/", "obj_ch2_room_town_hospital_slash_Step_0_gml_213_0");
	c_msgnextloc("\\E3* Well^1, kinda kidding./%", "obj_ch2_room_town_hospital_slash_Step_0_gml_214_0");
	c_talk_wait();
	c_waitcustom();
}
if (con == 4 && customcon == 1)
{
	con = 6;
	customcon = 0;
	snd_play(snd_rudycough);
	with (obj_npc_rudy)
	{
		sprite_index = spr_rudy_cough;
		image_speed = 0.25;
	}
	c_waitcustom_end();
}
if (con == 6)
{
	con = 50;
	c_wait(30);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	with (obj_npc_rudy)
	{
		sprite_index = spr_rudy_d;
		image_speed = 0;
	}
	global.interact = 0;
	global.facing = 0;
	con = 0;
	global.flag[316] = 1;
	if (scr_sideb_get_phase() >= 3)
		global.flag[915] = 19;
	if (doormoved == 0)
		instance_destroy();
	else
		con = 60;
}
if (con == 60 && obj_mainchara.y >= 200 && global.interact == 0)
{
	con = 61;
	global.interact = 1;
	scr_speaker("rudy");
	msgsetloc(0, "* Hey^1, Susie. Mind if I have a word with you a sec?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_401_0");
	scr_anyface_next("susie", 0);
	msgnextloc("* Uhh...?/", "obj_ch2_room_town_hospital_slash_Step_0_gml_403_0");
	msgnextloc("* (Guess I'll be a sec^1, Kris...?)/%", "obj_ch2_room_town_hospital_slash_Step_0_gml_404_0");
	d = d_make();
}
if (con == 61)
{
	if (!i_ex(d))
	{
		with (obj_doorB)
		{
			y -= 40;
			doorFadeMusic = 1;
			doorFadeMusicTime = 60;
			doorDelay = 65;
		}
		con = 62;
	}
}
