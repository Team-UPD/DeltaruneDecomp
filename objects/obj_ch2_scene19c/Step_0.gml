with (nisesusie)
	scr_depth();
if (con == -1)
{
	con = 1;
	global.interact = 1;
	with (obj_mainchara)
		visible = 0;
	obj_mainchara.x = 28;
	obj_mainchara.y = 195;
	cutscene_master = scr_cutscene_make();
	kr = 0;
	kr_actor = instance_create(28, 195, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = spr_krisd_dark;
	su = 1;
	su_actor = instance_create(100, 170, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	be = 2;
	be_actor = instance_create(320, 190, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_down_dw;
}
if (con == 1)
{
	con = 2;
	c_sel(kr);
	c_walk("r", 5, 25);
	c_sel(su);
	c_walk("r", 5, 25);
	c_wait(31);
	c_sel(be);
	c_sprite(spr_cutscene_17_berdly_shocked);
	c_emote("!", 30);
	c_wait(30);
	c_sprite(spr_berdly_walk_left_dw);
	c_msgside("top");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* What are you two doing here!? This one's MINE!/", "obj_ch2_scene19c_slash_Step_0_gml_60_0");
	c_msgnextloc("\\E7* It'll be over in a second^1, so why don't you just^1,/", "obj_ch2_scene19c_slash_Step_0_gml_61_0");
	c_msgnextloc("\\E6* Relax in your mind palace^1,/%", "obj_ch2_scene19c_slash_Step_0_gml_62_0");
	c_talk_wait();
	c_sprite(spr_berdly_smug_point);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E2* Which PROBABLY doesn't even have anything in it!/%", "obj_ch2_scene19c_slash_Step_0_gml_68_0");
	c_talk_wait();
	c_facing("u");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* .../", "obj_ch2_scene19c_slash_Step_0_gml_74_0");
	c_msgnextloc("\\EC* I just need to figure out..^1. why.../", "obj_ch2_scene19c_slash_Step_0_gml_75_0");
	c_msgnextloc("* The shapes don't go together.../%", "obj_ch2_scene19c_slash_Step_0_gml_76_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_down);
	c_halt();
	c_wait(30);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_speaker("susie");
	c_msgsetloc(0, "* .../", "obj_ch2_scene19c_slash_Step_0_gml_88_0");
	c_msgnextloc("\\E6* Oh. Hey./", "obj_ch2_scene19c_slash_Step_0_gml_89_0");
	c_msgnextloc("\\E7* You just gotta fill the whole square thing^1, right?/", "obj_ch2_scene19c_slash_Step_0_gml_90_0");
	c_msgnextloc("\\E7* What if you just..^1. piled them all in the corners./", "obj_ch2_scene19c_slash_Step_0_gml_91_0");
	c_facenext("lancer", "1");
	c_msgnextloc("\\E1* Like digging a really wide hole./%", "obj_ch2_scene19c_slash_Step_0_gml_93_0");
	c_talk_wait();
	c_speaker("berdly");
	c_sel(be);
	c_sprite(spr_berdly_shocked_left);
	c_msgsetloc(0, "\\E3* Wh..^1. what!?/", "obj_ch2_scene19c_slash_Step_0_gml_95_0");
	c_facenext("susie", 2);
	c_msgnextloc("\\E2* Kris^1, wanna try?/%", "obj_ch2_scene19c_slash_Step_0_gml_97_0");
	c_talk_wait();
	c_sel(be);
	c_walkdirect(555, 216, 15);
	c_sel(su);
	c_imagespeed(0.25);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_left);
	c_walkdirect_wait(35, 200, 15);
	c_halt();
}
if (con == 2 && !d_ex())
{
	con = 3;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	nisesusie.visible = 1;
	niseberdly.visible = 1;
	global.interact = 0;
	con = 0;
}
if ((con == 20 && !d_ex()) || scr_cutscene_loaded())
{
	con = 21;
	global.interact = 1;
	if (i_ex(exitcollider))
		instance_destroy(exitcollider);
	cutscene_master = scr_cutscene_make();
	su = 0;
	su_actor = instance_create(nisesusie.x, nisesusie.y, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	be = 1;
	be_actor = instance_create(niseberdly.x, niseberdly.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_left_dw;
	with (niseberdly)
		instance_destroy();
	with (nisesusie)
		instance_destroy();
	c_wait(30);
	c_sel(be);
	c_sprite(spr_cutscene_17_berdly_shocked);
	c_emote("!", 30);
	c_shakeobj();
	c_wait(60);
	c_walkdirect_wait(323, 190, 25);
	c_sprite(spr_berdly_mad_dw);
	c_msgside("top");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* S-SUSIE's idea worked!? There's..^1. there's no way!!/", "obj_ch2_scene19c_slash_Step_0_gml_168_0");
	c_msgnextloc("\\EB* It's a computer bug!^1! It's a glitch!!/", "obj_ch2_scene19c_slash_Step_0_gml_169_0");
	c_msgnextloc("\\ED* You're cheating!^1! J..^1. just like when you w-wavedash!/%", "obj_ch2_scene19c_slash_Step_0_gml_170_0");
	c_talk_wait();
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walkdirect_wait(220, 165, 15);
	c_halt();
	c_soundplay(snd_suslaugh);
	c_sel(su);
	c_sprite(spr_susie_lancer_carry_laugh);
	c_imagespeed(0.25);
	c_sel(be);
	c_sprite(spr_berdly_shocked_left);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* HAHAHA!^1! How's it taste^1, idiot!?/%", "obj_ch2_scene19c_slash_Step_0_gml_190_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walk_wait("r", 5, 5);
	c_halt();
	c_sprite(spr_susie_lancer_carry_laugh);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_msgsetloc(0, "\\EY* Man^1, I'm gonna relish this FOREVER!/", "obj_ch2_scene19c_slash_Step_0_gml_203_0");
	c_msgnextloc("\\E9* All those times you acted so high and mighty.../", "obj_ch2_scene19c_slash_Step_0_gml_204_0");
	c_msgnextloc("\\EY* Well^1, guess what? You're not!!/", "obj_ch2_scene19c_slash_Step_0_gml_205_0");
	c_msgnextloc("\\EH* Face it^1! You're just as big a dumbass as the rest of us!!/", "obj_ch2_scene19c_slash_Step_0_gml_206_0");
	c_msgnextloc("\\EY* Hahahaha!!/%", "obj_ch2_scene19c_slash_Step_0_gml_207_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imageindex(0);
	c_imagespeed(0);
	c_wait(60);
	c_mus2("volume", 0, 30);
	c_sel(be);
	c_facing("berdlyunhappy");
	c_facing("u");
	c_wait(60);
	c_mus("free_all");
	c_autowalk(0);
	c_sprite(spr_berdly_walk_right_dw_unhappy);
	c_imagespeed(0.1);
	c_walk_wait("r", 0.5, 30);
	c_halt();
	c_wait(60);
	c_autowalk(0);
	c_sprite(spr_berdly_depressed_dw_right);
	c_wait(60);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* ..^1. fine./", "obj_ch2_scene19c_slash_Step_0_gml_241_0");
	c_msgnextloc("\\EG* I admit it./", "obj_ch2_scene19c_slash_Step_0_gml_242_0");
	c_msgnextloc("\\EH* I...^1. I'm not that smart./", "obj_ch2_scene19c_slash_Step_0_gml_243_0");
	c_msgnextloc("\\E9* I never was./%", "obj_ch2_scene19c_slash_Step_0_gml_244_0");
	c_talk_wait();
	c_sprite(spr_cutscene_17_berdly_angry);
	c_shakeobj();
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* THERE^1, are you happy!?/%", "obj_ch2_scene19c_slash_Step_0_gml_251_0");
	c_talk_wait();
	c_sprite(spr_berdly_depressed_dw_left);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* I..^1. I..^1. I just.../%", "obj_ch2_scene19c_slash_Step_0_gml_257_0");
	c_talk_wait();
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
	c_wait(30);
	c_mus2("initloop", "berdly_flashback.ogg", 0);
	c_mus2("volume", 1, 30);
	c_var_instance(berdlyoutline, "x", 340);
	c_var_instance(berdlyoutline, "y", 190);
	c_var_lerp_instance(berdlyoutline, "image_alpha", 0, 1, 30);
	c_wait(15);
	c_var_lerp_instance(berdlyoutline, "x", 340, 295, 15);
	c_msgside("bottom");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E8* I used to be a forgettable little bluebird./", "obj_ch2_scene19c_slash_Step_0_gml_274_0");
	c_msgnextloc("\\EH* No one even remembered my name./%", "obj_ch2_scene19c_slash_Step_0_gml_275_0");
	c_talk_wait();
	c_var_lerp_instance(noelleoutline, "image_alpha", 0, 1, 30);
	c_var_lerp_instance(noelleoutline, "x", 225, 210, 15);
	c_var_lerp_instance(berdlyoutline, "x", 295, 385, 15);
	c_wait(15);
	c_var_instance(sb_controller, "sb_con", 1);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E8* Then..^1. one day^1, came the spelling bee Noelle and I studied for./", "obj_ch2_scene19c_slash_Step_0_gml_288_0");
	c_msgnextloc("* When it came down to the two of us.../%", "obj_ch2_scene19c_slash_Step_0_gml_289_0");
	c_talk_wait();
	c_var_instance(sb_controller, "noelle_lose", true);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* She got nervous and couldn't speak./%", "obj_ch2_scene19c_slash_Step_0_gml_295_0");
	c_talk_wait();
	c_waitcustom();
}
if (noelle_lose)
{
	noelle_lose = false;
	with (noelleoutline)
	{
		image_index = 1;
		scr_shakeobj();
	}
}
if (con == 25 && customcon == 1)
{
	con = 30;
	c_waitcustom_end();
	c_var_instance(id, "noelle_lose", true);
	c_soundplay(snd_hurt1);
	c_wait(30);
	c_var_lerp_instance(noelleoutline, "image_alpha", 1, 0, 30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E0* She lost./%", "obj_ch2_scene19c_slash_Step_0_gml_325_0");
	c_talk_wait();
	c_var_lerp_instance(berdlyoutline, "x", 385, 295, 15);
	c_wait(20);
	c_var_lerp_instance(berdly_crown, "image_alpha", 0, 1, 15);
	c_var_lerp_instance(berdly_crown, "y", -20, berdlyoutline.y - 5, 15);
	c_wait(20);
	c_var_instance(id, "berdly_applause_start", true);
	c_var_instance(id, "sb_crowd_show", true);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E4* And I won./", "obj_ch2_scene19c_slash_Step_0_gml_344_0");
	c_msgnextloc("\\E7* That was when I tasted it./", "obj_ch2_scene19c_slash_Step_0_gml_345_0");
	c_msgnextloc("\\E7* The praise. The glory^1! The..^1. SUPERIORITY!!/%", "obj_ch2_scene19c_slash_Step_0_gml_346_0");
	c_talk_wait();
	c_var_instance(sb_controller, "berdly_smart", true);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* The addictive POWER of being..^1. SMART!!/%", "obj_ch2_scene19c_slash_Step_0_gml_352_0");
	c_talk_wait();
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* Since then^1, year after year^1, I've been number 1 in the class./%", "obj_ch2_scene19c_slash_Step_0_gml_356_0");
	c_talk_wait();
	c_var_instance(noelleoutline, "x", 63);
	c_var_instance(noelleoutline, "image_index", 0);
	c_var_lerp_instance(noelleoutline, "image_alpha", 0, 0.5, 15);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E8* ..^1. but it's only because Noelle helps me study./", "obj_ch2_scene19c_slash_Step_0_gml_364_0");
	c_msgnextloc("\\EH* She's..^1. the real smart kid./", "obj_ch2_scene19c_slash_Step_0_gml_365_0");
	c_msgnextloc("\\E9* But everyone's expectations for ME are so high now../", "obj_ch2_scene19c_slash_Step_0_gml_366_0");
	c_msgnextloc("\\E8* What am I going to do once I go somewhere without her...?/%", "obj_ch2_scene19c_slash_Step_0_gml_367_0");
	c_talk_wait();
	c_var_lerp_instance(noelleoutline, "image_alpha", 0.5, 0, 15);
	c_wait(15);
	c_var_instance(id, "berdly_applause_stop", true);
	c_var_instance(sb_controller, "berdly_smart", false);
	c_var_instance(id, "sb_crowd_hide", true);
	c_var_lerp_instance(berdly_crown, "image_alpha", 1, 0, 15);
	c_wait(80);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EA* That's..^1. why I wanted to make a new world. For us./%", "obj_ch2_scene19c_slash_Step_0_gml_381_0");
	c_talk_wait();
	c_var_instance(noelleoutline, "x", 256);
	c_var_lerp_instance(noelleoutline, "image_alpha", 0, 1, 15);
	c_var_lerp_instance(berdlyoutline, "x", 295, 325, 15);
	c_var_lerp_instance(berdly_crown, "image_alpha", 0, 1, 15);
	c_var_lerp_instance(berdly_crown, "x", 302, 332, 15);
	c_var_instance(sb_controller, "berdly_smart", true);
	c_var_instance(sb_controller, "berdly_show_word", true);
	c_var_instance(id, "sb_crowd_show", true);
	c_var_instance(id, "berdly_applause_start", true);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* A world where we'll ALWAYS be number 1 and number 2!!!/%", "obj_ch2_scene19c_slash_Step_0_gml_399_0");
	c_talk_wait();
	c_var_instance(sb_controller, "berdly_smart", false);
	c_var_instance(sb_controller, "berdly_show_word", false);
	c_var_instance(id, "sb_crowd_hide", true);
	c_var_lerp_instance(noelleoutline, "image_alpha", 1, 0, 30);
	c_var_lerp_instance(berdlyoutline, "image_alpha", 1, 0, 30);
	c_var_lerp_instance(berdly_crown, "image_alpha", 1, 0, 30);
	c_wait(15);
	c_var_instance(id, "berdly_applause_stop", true);
	c_wait(15);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30);
	c_wait(60);
	c_mus2("volume", 0, 30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E8* But..^1. I was so wrapped up in that^1, I got tricked by Queen./%", "obj_ch2_scene19c_slash_Step_0_gml_417_0");
	c_talk_wait();
	c_sprite(spr_berdly_depressed_dw_right);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EH* And now..^1. Noelle is going to suffer because of it./", "obj_ch2_scene19c_slash_Step_0_gml_423_0");
	c_msgnextloc("* Maybe I did just like being superior./", "obj_ch2_scene19c_slash_Step_0_gml_424_0");
	c_msgnextloc("\\EH* Maybe I am..^1. just..^1. an idiot./", "obj_ch2_scene19c_slash_Step_0_gml_425_0");
	c_facenext("lancer", "3");
	c_msgnextloc("\\E3* Don't cry^1, chicken-nugget-man./", "obj_ch2_scene19c_slash_Step_0_gml_427_0");
	c_msgnextloc("\\E2* All of us are idiots^1, too./%", "obj_ch2_scene19c_slash_Step_0_gml_428_0");
	c_talk_wait();
	c_sprite(spr_berdly_shocked_left);
	c_shakeobj();
	c_halt();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Huh...?/", "obj_ch2_scene19c_slash_Step_0_gml_436_0");
	c_facenext("susie", 0);
	c_msgnextloc("* ..^1. I mean^1, like^1, I dunno about everyone else^1, but.../", "obj_ch2_scene19c_slash_Step_0_gml_438_0");
	c_msgnextloc("\\E1* Whether you're the smart kid or not./", "obj_ch2_scene19c_slash_Step_0_gml_439_0");
	c_msgnextloc("\\E4* We couldn't care less./", "obj_ch2_scene19c_slash_Step_0_gml_440_0");
	c_msgnextloc("\\EK* Screw up as much as you want^1, honestly./%", "obj_ch2_scene19c_slash_Step_0_gml_441_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "\\s0\\EK* It's not like our opinion of you can get much wo-%%", "obj_ch2_scene19c_slash_Step_0_gml_445_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("berdly");
	c_walk_wait("l", 10, 3);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E4* Susie!!/", "obj_ch2_scene19c_slash_Step_0_gml_453_0");
	c_msgnextloc("\\EI* Susie..^1. you..^1. you'd..^1. accept me...? Even if I'm..^1. dumb?/", "obj_ch2_scene19c_slash_Step_0_gml_454_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Uh..^1. y..^1. yeah?/%", "obj_ch2_scene19c_slash_Step_0_gml_456_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_up);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* It's like when your sister gets cursed in Dragon Blazers 2./%", "obj_ch2_scene19c_slash_Step_0_gml_464_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\EL* Even if her stats suck^1, she's still your party member./%", "obj_ch2_scene19c_slash_Step_0_gml_472_0");
	c_talk_wait();
	c_wait(30);
	c_sel(be);
	c_autowalk(0);
	c_sprite(spr_berdly_walk_left_dw);
	c_imagespeed(0.25);
	c_walk_wait("r", 4, 10);
	c_imagespeed(0);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* S..^1. Susie!? A REAL Dragon Blazers 2 reference...?/%", "obj_ch2_scene19c_slash_Step_0_gml_487_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E5* ..^1. Susie.../%", "obj_ch2_scene19c_slash_Step_0_gml_493_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* You're not only kind^1, but a true gamer as well./%", "obj_ch2_scene19c_slash_Step_0_gml_499_0");
	c_talk_wait();
	scr_smallface(0, "susie", 17, "mid", "bottom", stringsetloc("DON'T SAY THAT NOW!!!", "obj_ch2_scene19c_slash_Step_0_gml_502_0"));
	c_speaker("berdly");
	c_msgsetloc(0, "\\EM* Perhaps I..^1. underestimated you.\\f0/%", "obj_ch2_scene19c_slash_Step_0_gml_504_0");
	c_talk_wait();
	c_autowalk(1);
	c_walk("r", 10, 5);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* But worry not!^1! I have decided!!!/%", "obj_ch2_scene19c_slash_Step_0_gml_511_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* I will turn over a new leaf from now on.../", "obj_ch2_scene19c_slash_Step_0_gml_517_0");
	c_msgnextloc("\\E6* And FIGHT^1! For the side.../%", "obj_ch2_scene19c_slash_Step_0_gml_518_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_berdly_smug_point_animated);
	c_imagespeed(0.25);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E2* OF IGNORANCE!!!/", "obj_ch2_scene19c_slash_Step_0_gml_526_0");
	c_facenext("susie", 17);
	c_msgnextloc("\\EH* WE'RE NOT TELLING YOU TO BE STUPID!!!/", "obj_ch2_scene19c_slash_Step_0_gml_528_0");
	c_facenext("lancer", "1");
	c_msgnextloc("\\E1* Just^1, sometimes it's OK to make mistakes!!/", "obj_ch2_scene19c_slash_Step_0_gml_530_0");
	c_facenext("berdly", "L");
	c_msgnextloc("\\EL* Hahaha - and make mistakes^1, I will!!!/%", "obj_ch2_scene19c_slash_Step_0_gml_532_0");
	c_talk_wait();
	c_autowalk(1);
	c_walk("r", 12, 50);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* Onward!!/%", "obj_ch2_scene19c_slash_Step_0_gml_539_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_down);
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Ugh^1, why couldn't Ralsei be here to teach the moral lesson!?/%", "obj_ch2_scene19c_slash_Step_0_gml_547_0");
	c_talk_wait();
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walk_wait("r", 12, 80);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 30 && !i_ex(obj_cutscene_master))
{
	con = 99;
	global.interact = 0;
	global.facing = 0;
	global.plot = 115;
	snd_free_all();
	global.currentsong[0] = snd_init("mansion_entrance.ogg");
	global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
	instance_destroy();
}
if (sb_crowd_show)
{
	if (sb_crowd.image_alpha < 1)
		sb_crowd.image_alpha += 0.05;
	sb_crowd_siner++;
	sb_crowd.x += sin(sb_crowd_siner / 4) * 4;
	sb_crowd.y += cos(sb_crowd_siner / 1.5) * 4;
}
if (sb_crowd_hide)
{
	sb_crowd_show = false;
	sb_crowd_siner++;
	sb_crowd.x += sin(sb_crowd_siner / 4) * 4;
	sb_crowd.y += cos(sb_crowd_siner / 1.5) * 4;
	if (sb_crowd.image_alpha > 0)
		sb_crowd.image_alpha -= 0.05;
	else
		sb_crowd_hide = false;
}
if (berdly_applause_start)
{
	berdly_applause_start = false;
	coolsong[0] = snd_init("berdly_audience.ogg");
	coolsong[1] = mus_loop(coolsong[0]);
	mus_volume(coolsong[1], 0.45, 0);
}
if (berdly_applause_stop)
{
	berdly_applause_stop = false;
	mus_volume(coolsong[1], 0, 15);
}
