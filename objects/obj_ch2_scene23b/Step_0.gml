if (moon != -4)
	moon.x = (__view_get(e__VW.XView, 0) * 0.5) + moon.xstart;
if (global.flag[319] == 0)
{
	if (con == -1)
	{
		con = 1;
		global.interact = 1;
		global.facing = 1;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		c_sel(kr);
		c_visible(0);
		su = actor_count + 1;
		su_actor = instance_create(0, cameray() - 100, obj_actor);
		scr_actor_setup(su, su_actor, "susie");
		su_actor.sprite_index = spr_susie_walk_right_dw;
		no = actor_count + 2;
		no_actor = instance_create(618, 120, obj_actor);
		scr_actor_setup(no, no_actor, "noelle");
		no_actor.sprite_index = spr_cutscene_23b_noelle_kneel_forward;
		cutscene_master.save_object[0] = id;
	}
	if (con == 1)
	{
		con = 2;
		c_pannable(1);
		c_pan(320, 0, 5);
		c_wait(5);
		c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30);
		c_wait(30);
		c_mus("free_all");
		c_mus2("initloop", "noelle_normal.ogg", 0);
		c_msgside("bottom");
		c_var_instance(id, "disable_face", true);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E1* What a strange moon.../", "obj_ch2_scene23b_slash_Step_0_gml_59_0");
		c_msgnextloc("\\E5* It's like nothing I've ever seen before./", "obj_ch2_scene23b_slash_Step_0_gml_60_0");
		c_msgnextloc("\\E1* .../", "obj_ch2_scene23b_slash_Step_0_gml_61_0");
		c_msgnextloc("\\E9* This world.../", "obj_ch2_scene23b_slash_Step_0_gml_62_0");
		c_msgnextloc("\\EA* ..^1. I wish Dess could see this./%", "obj_ch2_scene23b_slash_Step_0_gml_63_0");
		c_talk_wait();
		c_soundplay(snd_dooropen);
		c_wait(15);
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_back);
		c_wait(60);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* ...^1. Is somebody there?/%", "obj_ch2_scene23b_slash_Step_0_gml_77_0");
		c_talk_wait();
		c_var_lerp_instance(werewire1, "y", cameray() - (sprite_get_height(spr_werewire_static) * 2), -20, 8);
		c_wait(6);
		c_soundplay(snd_impact);
		c_sel(no);
		c_sprite(spr_noelle_kneel_shocked);
		c_wait(10);
		c_flip("x");
		c_var_lerp_instance(werewire2, "y", cameray() - (sprite_get_height(spr_werewire_static) * 2), -20, 8);
		c_wait(6);
		c_soundplay(snd_impact);
		c_wait(10);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EB* W-wait^1, what are you.../%", "obj_ch2_scene23b_slash_Step_0_gml_102_0");
		c_talk_wait();
		c_var_lerp_instance(werewire1, "x", 575, 590, 8);
		c_var_lerp_instance(werewire2, "x", 705, 685, 8);
		c_sel(no);
		c_flip("x");
		c_shakeobj();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* H-Hey^1, you can't capture someone who's already captured!!/%", "obj_ch2_scene23b_slash_Step_0_gml_114_0");
		c_talk_wait();
		c_var_instance(id, "rudebuster", true);
		c_wait(10);
		c_autowalk(0);
		c_sprite(spr_cutscene_23b_noelle_kneel_peak);
		c_imageindex(0);
		c_imagespeed(0);
		c_wait(20);
		c_var_instance(id, "sparecon", 1);
		c_wait(60);
		c_imageindex(1);
		c_imagespeed(0);
		c_wait(30);
		c_sel(su);
		c_autowalk(0);
		c_setxy(236, 235);
		c_sprite(spr_susie_spellready);
		c_imagespeed(0.25);
		c_panspeed(-8, 0, 20);
		c_wait(10);
		c_sel(no);
		c_sprite(spr_noelle_kneel_shocked);
		c_imageindex(0);
		c_wait(10);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EE* S..^1. Susie!?/", "obj_ch2_scene23b_slash_Step_0_gml_160_0");
		c_msgnextloc("\\E6* You..^1. you saved me...?/%", "obj_ch2_scene23b_slash_Step_0_gml_161_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_susie_victory);
		c_arg_objectxy(su_actor, -4, -20);
		c_setxy(x, y);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_wait(70);
		c_autowalk(1);
		c_arg_objectxy(su_actor, 2, -3);
		c_setxy(x, y);
		c_facing("r");
		c_speaker("susie");
		c_msgsetloc(0, "\\EL* Don't get used to it./%", "obj_ch2_scene23b_slash_Step_0_gml_179_0");
		c_talk_wait();
		c_sel(no);
		c_imageindex(1);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EN* Umm^1, OK^1, I..^1. I won't...!/", "obj_ch2_scene23b_slash_Step_0_gml_187_0");
		c_msgnextloc("\\EP* .../%", "obj_ch2_scene23b_slash_Step_0_gml_188_0");
		c_talk_wait();
		c_sel(su);
		c_walkdirect(589, 210, 75);
		c_panspeed(4, 0, 40);
		c_wait(40);
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_forward);
		c_wait(36);
		c_sel(su);
		c_facing("u");
		c_wait(60);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Cool moon./", "obj_ch2_scene23b_slash_Step_0_gml_207_0");
		c_facenext("noelle", 2);
		c_msgnextloc("\\E2* Y..^1. yeah./", "obj_ch2_scene23b_slash_Step_0_gml_209_0");
		c_msgnextloc("\\E3* ..^1. b-but it's weird^1, isn't it?/%", "obj_ch2_scene23b_slash_Step_0_gml_210_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_forward_tilt);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E1* How did we get here...?/", "obj_ch2_scene23b_slash_Step_0_gml_217_0");
		c_msgnextloc("\\E3* No^1, what even is this place...?/%", "obj_ch2_scene23b_slash_Step_0_gml_220_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_susie_shock_r);
		c_shakeobj();
		c_wait(30);
		c_msc(1119);
		c_talk_wait();
	}
	if (con == 10)
	{
		con = 49;
		alarm[0] = 30;
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_09_susie_point);
		c_halt();
		c_wait(15);
		c_speaker("susie");
		c_msgsetloc(0, "\\E7* Uhhh..^1. you're^1, uh..^1. just having a dream!/%", "obj_ch2_scene23b_slash_Step_0_gml_245_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_back);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* H..^1. huh...?/%", "obj_ch2_scene23b_slash_Step_0_gml_252_0");
		c_talk_wait();
		c_sprite(spr_cutscene_23b_noelle_kneel_forward);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E6* Oh..^1. Oh^1, that's right./%", "obj_ch2_scene23b_slash_Step_0_gml_258_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_forward_tilt);
		c_sel(su);
		c_autowalk(1);
		c_facing("u");
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* Right..^1. if YOU'RE here^1, it must be a dream.../", "obj_ch2_scene23b_slash_Step_0_gml_269_0");
		c_facenext("susie", 6);
		c_msgnextloc("\\E6* ???????/%", "obj_ch2_scene23b_slash_Step_0_gml_271_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_kneel_shocked);
		c_imageindex(1);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* I MEAN^1, the real Susie probably wouldn't save me^1, would she...?/%", "obj_ch2_scene23b_slash_Step_0_gml_280_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_forward_tilt);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E9* She..^1. probably doesn't care about me at all./", "obj_ch2_scene23b_slash_Step_0_gml_287_0");
		c_facenext("susie", "6");
		c_msgnextloc("\\E6* Huh?/%", "obj_ch2_scene23b_slash_Step_0_gml_289_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_11b_susie_scratch);
		c_imagespeed(0.25);
		c_arg_objectxy(su_actor, 0, -8);
		c_setxy(x, y);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Why would you^1, uh..^1. think that?/%", "obj_ch2_scene23b_slash_Step_0_gml_301_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_kneel_shocked);
		c_imageindex(1);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* Umm^1, she doesn't care about anybody./", "obj_ch2_scene23b_slash_Step_0_gml_310_0");
		c_facenext("susie", "K");
		c_msgnextloc("\\EK* Well^1, FAIR^1, but.../%", "obj_ch2_scene23b_slash_Step_0_gml_312_0");
		c_talk_wait();
		c_wait(5);
		c_sprite(spr_cutscene_23b_noelle_kneel_face_down);
		c_wait(5);
		c_speaker("susie");
		c_msgsetloc(0, "\\E3* Didja ever wonder why Susie never..^1. picked on you?/", "obj_ch2_scene23b_slash_Step_0_gml_322_0");
		c_facenext("noelle", 6);
		c_msgnextloc("\\E6* (sigh)..^1. All the time.../%", "obj_ch2_scene23b_slash_Step_0_gml_324_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(1);
		c_facing("l");
		c_arg_objectxy(su_actor, 0, 8);
		c_setxy(x, y);
		c_speaker("susie");
		c_msgsetloc(0, "\\E0* MAYBE it's 'cause^1, when she first came to class./", "obj_ch2_scene23b_slash_Step_0_gml_333_0");
		c_msgnextloc("\\E1* You lent her one of your pencils^1,/%", "obj_ch2_scene23b_slash_Step_0_gml_334_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Like^1, a dumb^1, uh^1, candycane-looking one or something./", "obj_ch2_scene23b_slash_Step_0_gml_341_0");
		c_msgnextloc("\\E0* And^1, even though it DIDN'T actually taste like candy^1,/%", "obj_ch2_scene23b_slash_Step_0_gml_342_0");
		c_talk_wait();
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* She^1, uh^1, remembered your smile^1, and^1, uh.../%", "obj_ch2_scene23b_slash_Step_0_gml_346_0");
		c_talk_wait();
		c_speaker("susie");
		c_msgsetloc(0, "\\EL* Decided to spare you. Y'know./", "obj_ch2_scene23b_slash_Step_0_gml_350_0");
		c_facenext("noelle", "3");
		c_msgnextloc("\\E3* That's^1, um.../%", "obj_ch2_scene23b_slash_Step_0_gml_352_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_laugh);
		c_imagespeed(0.25);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* Really specific./%", "obj_ch2_scene23b_slash_Step_0_gml_361_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_cutscene_11b_susie_scratch);
		c_imagespeed(0.1);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Yeah^1, well^1, uh^1,/%", "obj_ch2_scene23b_slash_Step_0_gml_369_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_face_down);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* ..^1. wait^1, did you say you ATE the pencil!?/%", "obj_ch2_scene23b_slash_Step_0_gml_377_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(0);
		c_sprite(spr_cutscene_09_susie_point);
		c_imagespeed(0.25);
		c_shakeobj();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_laugh);
		c_imagespeed(0.25);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* I MEAN^1, LOOK!/%", "obj_ch2_scene23b_slash_Step_0_gml_391_0");
		c_talk_wait();
		c_sel(su);
		c_halt();
		c_speaker("susie");
		c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene23b_slash_Step_0_gml_398_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(1);
		c_facing("u");
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_kneel_laugh_eyes_open);
		c_halt();
		c_sel(su);
		c_sprite(spr_cutscene_09_susie_point2);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Uh^1, hey^1, so^1, do you..^1. dream about me a lot?/%", "obj_ch2_scene23b_slash_Step_0_gml_410_0");
		c_talk_wait();
		c_wait(30);
		c_sel(no);
		c_autowalk(1);
		c_walkdirect(610, 211, 8);
		c_delayfacing(9, "r");
		c_wait(4);
		c_sel(su);
		c_facing("r");
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("l", 4, 8);
		c_wait(5);
		c_imagespeed(0);
		c_sel(no);
		c_sprite(spr_noelle_walk_right_smile_dw);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EM* WELL^1, time for me to get back to my project^1, haha!/%", "obj_ch2_scene23b_slash_Step_0_gml_433_0");
		c_talk_wait();
		c_sel(su);
		c_visible(0);
		c_sel(no);
		c_autowalk(0);
		c_sprite(spr_cutscene_23b_noelle_susie_shoulder);
		c_setxy(561, 212);
		c_imageindex(0);
		c_imagespeed(0);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EQ* Okay^1, Susie^1, hit me with your ax and wake me up!/", "obj_ch2_scene23b_slash_Step_0_gml_447_0");
		c_facenext("susie", "Z");
		c_msgnextloc("\\EZ* W-wait^1, no^1, I can't do that!/%", "obj_ch2_scene23b_slash_Step_0_gml_449_0");
		c_talk_wait();
		c_imageindex(1);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E8* Huh? Why not? It's just a dream^1, so.../%", "obj_ch2_scene23b_slash_Step_0_gml_455_0");
		c_talk_wait();
		c_imageindex(2);
		c_speaker("susie");
		c_msgsetloc(0, "\\EC* Umm^1, I mean.../", "obj_ch2_scene23b_slash_Step_0_gml_461_0");
		c_msgnextloc("\\EK* Didn't you wanna..^1. uh..^1. hang out some more?/%", "obj_ch2_scene23b_slash_Step_0_gml_462_0");
		c_talk_wait();
		c_setxy(618, 211);
		c_sprite(spr_cutscene_23b_noelle_blush);
		c_imageindex(0);
		c_sel(su);
		c_visible(1);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EL* .../%", "obj_ch2_scene23b_slash_Step_0_gml_473_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_walk_happy_up_left);
		c_halt();
		c_speaker("noelle");
		c_msgsetloc(0, "\\EO* ..^1. I GUESS Berdly can wait a little longer./", "obj_ch2_scene23b_slash_Step_0_gml_482_0");
		c_facenext("susie", "2");
		c_msgnextloc("\\E2* Alright^1! Let's get out of here then./%", "obj_ch2_scene23b_slash_Step_0_gml_484_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(1);
		c_walk_wait("d", 5, 6);
		c_walk("r", 5, 80);
		c_wait(10);
		c_sel(no);
		c_sprite(spr_cutscene_23b_noelle_walk_happy);
		c_halt();
		c_wait(20);
		c_panspeed(5, 0, 65);
		c_wait(5);
		c_sel(no);
		c_imagespeed(0.25);
		c_walk_wait("r", 5, 60);
		c_halt();
		c_wait(11);
		c_speaker("susie");
		c_msgsetloc(0, "\\E2* All we gotta do is head to the right over to this.../", "obj_ch2_scene23b_slash_Step_0_gml_513_0");
		c_msgnextloc("\\EA* Uh..^1. over here^1, on this^1, uh.../%", "obj_ch2_scene23b_slash_Step_0_gml_514_0");
		c_talk_wait();
		c_sel(su);
		c_walk("r", 4, 40);
		c_delaycmd(41, "sprite", spr_susie_walk_right_dw_unhappy);
		c_sel(no);
		c_imagespeed(0.25);
		c_walk("r", 4, 40);
		c_panspeed(5, 0, 60);
		c_wait(40);
		c_sprite(spr_cutscene_23b_noelle_blush);
		c_halt();
		c_sel(su);
		c_halt();
		c_wait(20);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Heart. Covered. Ferris Wheel./", "obj_ch2_scene23b_slash_Step_0_gml_539_0");
		c_facenext("noelle", 22);
		c_msgnextloc("\\EM* .../", "obj_ch2_scene23b_slash_Step_0_gml_541_0");
		c_facenext("susie", "K");
		c_msgnextloc("\\EK* .../%", "obj_ch2_scene23b_slash_Step_0_gml_543_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_cutscene_09_susie_exasperated);
		c_flip("x");
		c_sel(no);
		c_sprite(spr_noelle_shocked_dw);
		c_shakeobj();
		c_speaker("susie");
		c_msgsetloc(0, "\\EH* What's the goddamn holdup!? Get ON already!!/", "obj_ch2_scene23b_slash_Step_0_gml_556_0");
		c_facenext("noelle", "M");
		c_msgnextloc("\\EM* S-Sorry!/%", "obj_ch2_scene23b_slash_Step_0_gml_558_0");
		c_talk_wait();
		c_sel(su);
		c_autowalk(1);
		c_flip("x");
		c_walk("r", 2, 45);
		c_sel(no);
		c_autowalk(0);
		c_sprite(spr_cutscene_23b_noelle_walk_happy);
		c_imagespeed(0.25);
		c_walk("r", 2, 45);
		c_wait(13);
		c_mus2("volume", 0, 30);
		c_var_instance(id, "fadeout", true);
		c_wait(31);
		c_mus("free_all");
		c_actortokris();
		c_terminatekillactors();
	}
	if (con == 50 && !i_ex(obj_cutscene_master))
	{
		con = 0;
		global.flag[319] = 1;
		room_goto(room_dw_mansion_ferris_wheel);
	}
	if (rudebuster)
	{
		rudebuster_timer++;
		if (rudebuster_timer == 1)
		{
			rudebusteranim = instance_create(camerax() - 60, room_height / 2, obj_rudebuster_bolt);
			rudebusteranim.target = werewire2;
		}
		if (rudebuster_timer == 16)
		{
			rudebuster = false;
			rudebusteranim = instance_create(camerax() - 60, room_height / 2, obj_rudebuster_bolt);
			rudebusteranim.target = werewire1;
		}
	}
	if (sparecon == 1)
	{
		sparecon = 2;
		with (obj_marker)
		{
			spareanim = instance_create(x, y + sprite_get_height(spr_werewire_static), obj_spareanim);
			spareanim.sprite_index = sprite_index;
			spareanim.sprite_index = spr_plugboy_spare;
			spareanim.image_index = 0;
			spareanim.image_xscale = image_xscale;
			spareanim.image_yscale = image_yscale;
			instance_destroy();
		}
	}
	if (fadeout)
	{
		if (!i_ex(blackall))
		{
			blackall = scr_marker(-10, -10, spr_pixel_white);
			blackall.image_xscale = 999;
			blackall.image_yscale = 999;
			blackall.depth = 100;
			blackall.image_blend = c_black;
			blackall.image_alpha = 0;
			blackall.x = camerax();
		}
		blackall.image_alpha = clamp(blackall.image_alpha + 0.033, 0, 1);
		if (blackall.image_alpha >= 1)
			fadeout = false;
	}
	if (disable_face)
	{
		disable_face = false;
		global.fc = 0;
	}
}
if (steal_susie && !d_ex())
{
	steal_susie = false;
	global.flag[393] = 1;
	snd_play(snd_item);
	with (susie_statue)
		instance_destroy();
}
if (steal_icee && !d_ex())
{
	steal_icee = false;
	global.flag[394] = 1;
	snd_play(snd_item);
	with (icee_cushion)
		instance_destroy();
}
