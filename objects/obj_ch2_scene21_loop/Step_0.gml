if (global.plot < 150)
{
	if (swanboat.x < 540)
	{
		swan_shadow.x = swanboat.x;
	}
	else
	{
		if (swan_shadow.image_alpha > 0)
			swan_shadow.image_alpha -= 0.2;
		actor_shadow = clamp(actor_shadow + 0.2, 0, 1);
		var shadow = actor_shadow;
		if (i_ex(obj_actor))
		{
			with (obj_actor)
				color_blend = merge_color(make_color_hsv(0, 0, 100), c_white, shadow);
		}
	}
	if (con == -1)
	{
		con = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		c_waitcustom();
		with (obj_actor)
			color_blend = make_color_hsv(0, 0, 100);
	}
	if (adjust_actors)
	{
		with (obj_actor)
		{
			if (name == "kris")
			{
				x = obj_queencar.x + 88;
				y = obj_queencar.y + 20;
			}
			if (name == "ralsei")
			{
				x = obj_queencar.x + 45;
				y = obj_queencar.y + 8;
			}
		}
	}
	if (con == 0 && swanboat.x > 240)
	{
		con = 1;
		global.interact = 1;
		global.facing = 1;
	}
	if (con == 1)
	{
		con = 10;
		swanboat.pause_x_move = true;
		swanboat.pause_y_move = true;
		swanboat.pause_auto_talk = true;
		if (i_ex(obj_ch2_scene21_loop_vfx))
		{
			with (obj_ch2_scene21_loop_vfx)
				auto_scroll_start = true;
		}
		global.interact = 1;
	}
	if (con == 10)
	{
		con = 11;
		customcon = 0;
		c_waitcustom_end();
		c_mus2("volume", 0, 30);
		c_msgside("bottom");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EB* Kris..^1. hey^1, Kris./%", "obj_ch2_scene21_loop_slash_Step_0_gml_130_0");
		c_talk_wait();
		c_msc(1111);
		c_talk_wait();
	}
	if (con == 15)
	{
		con = 25;
		if (global.choice == 0)
		{
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* .../%", "obj_ch2_scene21_loop_slash_Step_0_gml_149_0");
			c_talk_wait();
			c_sel(ra);
			c_facing("d");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E1* I'm happy hearing you say that^1, Kris.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_157_0");
			c_talk_wait();
		}
		if (global.choice == 1)
		{
			c_sel(ra);
			c_facing("u");
			c_wait(10);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* Err^1, then^1, I^1, err -/%", "obj_ch2_scene21_loop_slash_Step_0_gml_169_0");
			c_talk_wait();
			c_facing("l");
			c_wait(10);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EU* Ah^1, s-sarcastic^1! I was just being sarcastic!/", "obj_ch2_scene21_loop_slash_Step_0_gml_177_0");
			c_msgnextloc("\\EQ* Haha^1, sorry about that!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_178_0");
			c_talk_wait();
		}
	}
	if (con == 20)
	{
		con = 25;
		if (global.choice == 0 && global.flag[307] == 2)
		{
			c_sel(ra);
			c_facing("l");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E2* Ah^1, just as I expected^1, haha./", "obj_ch2_scene21_loop_slash_Step_0_gml_193_0");
			c_msgnextloc("\\E1* I feel warm..^1. thinking about how you care about her./%", "obj_ch2_scene21_loop_slash_Step_0_gml_194_0");
			c_talk_wait();
			c_facing("d");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E2* Kris^1, you can tell me anything anytime^1, OK?/", "obj_ch2_scene21_loop_slash_Step_0_gml_201_0");
			c_msgnextloc("\\E2* (...)/", "obj_ch2_scene21_loop_slash_Step_0_gml_202_0");
			c_msgnextloc("\\E2* (..^1. and they stopped talking...)/%", "obj_ch2_scene21_loop_slash_Step_0_gml_203_0");
			c_talk_wait();
		}
		if (global.choice == 0 && global.flag[307] == 3)
		{
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E2* Ah^1, just as I expected^1, haha./", "obj_ch2_scene21_loop_slash_Step_0_gml_210_0");
			c_msgnextloc("\\E3* She's a nice girl^1, isn't she?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_211_0");
			c_talk_wait();
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EI* Even though she doesn't understand it^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_219_0");
			c_msgnextloc("\\E0* It seems she's already strong at this world's magic./", "obj_ch2_scene21_loop_slash_Step_0_gml_220_0");
			c_msgnextloc("\\E2* I believe she can control the \"Ice\" element./", "obj_ch2_scene21_loop_slash_Step_0_gml_221_0");
			c_msgnextloc("\\E0* ..^1. Kris^1, if you ask her nicely^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_222_0");
			c_msgnextloc("\\EJ* Maybe she'll make you a popsicle^1! Haha!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_223_0");
			c_talk_wait();
		}
		if (global.choice == 0 && global.flag[307] == 4)
		{
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EQ* That's^1, um...^1. That's right./", "obj_ch2_scene21_loop_slash_Step_0_gml_240_0");
			c_msgnextloc("\\EM* This ride^1, um..^1. it sort of looks like.../", "obj_ch2_scene21_loop_slash_Step_0_gml_241_0");
			c_msgnextloc("\\EJ* A bit bird-like?/", "obj_ch2_scene21_loop_slash_Step_0_gml_242_0");
			c_msgnextloc("\\EK* ... umm^1, what part of him are you thinking about?/", "obj_ch2_scene21_loop_slash_Step_0_gml_243_0");
			c_msgnextloc("\\EK* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_244_0");
			c_msgnextloc("\\EK* (I suppose I don't mind no answer^, either...)/%", "obj_ch2_scene21_loop_slash_Step_0_gml_245_0");
			c_talk_wait();
		}
		if (global.choice == 1)
		{
			c_sel(ra);
			c_facing("d");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* H..^1. huh!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_255_0");
			c_talk_wait();
			c_facing("l");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E1* I mean^1, I'm thinking of you too^1, of course.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_261_0");
			c_talk_wait();
			c_facing("r");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* I mean^1, er -- you're right in front of me^1, but.../%", "obj_ch2_scene21_loop_slash_Step_0_gml_267_0");
			c_talk_wait();
		}
		if (global.choice == 2)
		{
			c_sel(ra);
			c_facing("d");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E1* Oh^1, err^1, sorry^1! Did I say something strange?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_278_0");
			c_talk_wait();
			c_facing("r");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E2* I'm happy you and Susie are friends^1, Kris./", "obj_ch2_scene21_loop_slash_Step_0_gml_285_0");
			c_msgnextloc("\\E3* She's a nice girl^1, isn't she...?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_286_0");
			c_talk_wait();
		}
	}
	if (con == 25 && !d_ex())
	{
		con = 26;
		c_sel(ra);
		c_facing("r");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EB* When we first met^1, I.../", "obj_ch2_scene21_loop_slash_Step_0_gml_299_0");
		c_msgnextloc("\\EQ* I was so nervous about first impressions./", "obj_ch2_scene21_loop_slash_Step_0_gml_300_0");
		c_msgnextloc("\\E1* I even hid my face so you wouldn't see.../", "obj_ch2_scene21_loop_slash_Step_0_gml_301_0");
		c_msgnextloc("\\EQ* \"How do I even be a friend...?\"/", "obj_ch2_scene21_loop_slash_Step_0_gml_302_0");
		c_msgnextloc("\\EJ* All I have to do is be nice..^1. is what I thought./", "obj_ch2_scene21_loop_slash_Step_0_gml_303_0");
		c_msgnextloc("\\EB* But I'm starting to realize^1, being friends.../", "obj_ch2_scene21_loop_slash_Step_0_gml_304_0");
		c_msgnextloc("\\E2* Is more than that^1, isn't it?/", "obj_ch2_scene21_loop_slash_Step_0_gml_305_0");
		c_msgnextloc("\\EJ* Susie..^1. sometimes she isn't nice at all!/", "obj_ch2_scene21_loop_slash_Step_0_gml_306_0");
		c_msgnextloc("\\EK* She's selfish^1, she's rude^1, she's sarcastic.../", "obj_ch2_scene21_loop_slash_Step_0_gml_307_0");
		c_msgnextloc("\\E1* But.../", "obj_ch2_scene21_loop_slash_Step_0_gml_308_0");
		c_msgnextloc("\\E2* Isn't it wonderful that she's..^1. her?/", "obj_ch2_scene21_loop_slash_Step_0_gml_309_0");
		c_msgnextloc("\\EI* Is what I..^1. started thinking^1, today./%", "obj_ch2_scene21_loop_slash_Step_0_gml_310_0");
		c_talk_wait();
		c_msc(1115);
		c_talk_wait();
	}
	if (con == 28 && !d_ex())
	{
		con = 29;
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EI* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_322_0");
		c_msgnextloc("\\EQ* I just wonder what..^1. being \"Ralsei-like\" even is...?/", "obj_ch2_scene21_loop_slash_Step_0_gml_323_0");
		c_msgnextloc("\\E5* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_324_0");
		c_msgnextloc("\\E2* Sorry^1! Haha^1, I got off-track./", "obj_ch2_scene21_loop_slash_Step_0_gml_325_0");
		c_msgnextloc("\\EQ* Let's just enjoy the ride^1, Kris. Haha./%", "obj_ch2_scene21_loop_slash_Step_0_gml_326_0");
		c_talk_wait();
		c_wait(60);
		c_waitcustom();
	}
	if (con == 29 && customcon == 1)
	{
		con = 200;
		if (i_ex(obj_ch2_scene21_loop_vfx))
		{
			with (obj_ch2_scene21_loop_vfx)
				auto_scroll_stop = true;
		}
	}
	if (con == 200 && obj_ch2_scene21_loop_vfx.auto_scroll_stop == false)
	{
		con = 300;
		inside_tunnel = false;
		remove_shadow = true;
		shift_islands = true;
		with (swanboat)
			scr_move_to_point_over_time(775, 110, 245);
		with (swan_shadow)
			scr_move_to_point_over_time(775, 110, 245);
	}
	if (shift_islands)
	{
		shift_islands_timer++;
		if (shift_islands_timer >= 245)
		{
			shift_islands = false;
			shiftacid = false;
			if (!rouxls_island)
				con = 30;
		}
	}
	if (con == 30)
	{
		con = 31;
		global.flag[326] = 1;
		layer_set_visible("TILES_Mansion_Hide_1", true);
		layer_set_visible("TILES_Mansion_Hide_2", true);
		rouxls_island = true;
		swanboat.pause_x_move = true;
		swanboat.pause_y_move = true;
		swanboat.pause_auto_talk = true;
		loopacid = false;
		thrash = instance_create(1285, 159, obj_thrashmachine);
		thrash.s = 3;
		thrash.drawfeet = 0;
		thrash.animate = 0;
		thrash.visible = 0;
		thrash.depth = 835000;
		thrash.draw_puddle = true;
		puddle = instance_create(thrash.x + 1, thrash.y + 74, obj_marker);
		puddle.sprite_index = spr_rouxls_puddle;
		puddle.image_xscale = 2;
		puddle.image_yscale = 2;
		puddle.depth = thrash.depth + 1;
		puddle.image_speed = 0;
		puddle.image_index = (thrash.part[0] == 2) ? 2 : 0;
		puddle.visible = 0;
		var rouxls_ypos = (global.flag[221] == 3) ? (thrash.y + 45) : (thrash.y + 19);
		if (global.flag[221] == 2)
			rouxls_ypos = thrash.y + 29;
		rouxls = instance_create(thrash.x - 1, rouxls_ypos, obj_ch2_rouxls_boat);
		rouxls.visible = 0;
		rouxls.boatfront.visible = 0;
		rouxls.depth = 830000;
		with (obj_gradientglow)
			depth = 850000;
	}
	if (con == 31)
	{
		con = 32;
		customcon = 0;
		c_waitcustom_end();
		c_sel(kr);
		c_facing("r");
		c_pannable(1);
		c_panspeed(4, 0, 50);
		c_msgzurasu(1);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EJ* W..^1. wow^1, Kris^1! Look at all those houses!/", "obj_ch2_scene21_loop_slash_Step_0_gml_435_0");
		c_msgnextloc("\\E2* I wonder what'll happen if we change their color!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_436_0");
		c_talk_wait();
		c_var_lerp_instance(blackall, "image_alpha", 0, 0.75, 30);
		c_mus2("volume", 0, 30);
		c_wait(15);
		c_waitcustom();
	}
	if (con == 32 && customcon == 1)
	{
		con = 33;
		customcon = 0;
		global.typer = 42;
		scr_speaker("no_name");
		msgsetloc(0, "* Ge hahahaha..^1. Thoust WORMS reallyst thoughtst.../", "obj_ch2_scene21_loop_slash_Step_0_gml_454_0");
		msgnextloc("* Thoust had seeneth the Lastest of Me???/%", "obj_ch2_scene21_loop_slash_Step_0_gml_455_0");
		instance_create(camerax() + 80, cameray() + 40, obj_writer);
		snd_free_all();
	}
	if (release_rouxls)
	{
		rouxls_appear_timer++;
		if (rouxls_appear == -1)
		{
			snd_free_all();
			snd_play(snd_rurus_appear);
			rouxls_appear = instance_create(rouxls.x - 40, rouxls.y - 50, obj_rurus_appear);
			rouxls_appear.depth = 0;
		}
		if (rouxls_appear_timer >= 60)
		{
			release_rouxls = false;
			if (!snd_is_playing(global.currentsong[1]))
			{
				global.currentsong[0] = snd_init("ruruskaado.ogg");
				global.currentsong[1] = mus_loop(global.currentsong[0]);
			}
			if (i_ex(rouxls_appear))
				instance_destroy(rouxls_appear);
		}
	}
	if ((con == 33 && !i_ex(obj_writer)) || scr_cutscene_loaded())
	{
		con = 35;
		c_waitcustom_end();
		c_var_lerp_instance(blackall, "image_alpha", 0.75, 0, 10);
		c_wait(10);
		c_var_instance(id, "release_rouxls", true);
		c_wait(30);
		c_var_instance(rouxls, "visible", 1);
		c_var_instance(rouxls.boatfront, "visible", 1);
		c_var_instance(puddle, "visible", 1);
		c_wait(90);
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E3* Chips Ahoyeth^1, Landlubbers!/", "obj_ch2_scene21_loop_slash_Step_0_gml_511_0");
		c_msgnextloc("\\E2* Arrrrrr-t thou ready-eth to visiteth Davith Jones' Lockre???/", "obj_ch2_scene21_loop_slash_Step_0_gml_512_0");
		c_facenext("ralsei", 22);
		c_msgnextloc("\\EM* Could..^1. Could you NOT speak with more than one accent?/", "obj_ch2_scene21_loop_slash_Step_0_gml_514_0");
		c_facenext("rouxls", 1);
		c_msgnextloc("\\E1* Yeahth^1, alright./", "obj_ch2_scene21_loop_slash_Step_0_gml_516_0");
		c_facenext("ralsei", 12);
		c_msgnextloc("\\EC* Oh^1, Mr. Rouxls^1! I just remembered^1! Lancer^1! He's not well!/", "obj_ch2_scene21_loop_slash_Step_0_gml_518_0");
		c_facenext("rouxls", 6);
		c_msgnextloc("\\E6* O dear. Didst thou^1, erm^1, tryeth Burpinge him???/", "obj_ch2_scene21_loop_slash_Step_0_gml_520_0");
		c_msgnextloc("\\E1* Perhapsth give him a sip of Medieval Ginger Ale??/", "obj_ch2_scene21_loop_slash_Step_0_gml_521_0");
		c_msgnextloc("\\E0* ..^1. Waite^1! I hath NOT time to spare on such Frivolitese!/", "obj_ch2_scene21_loop_slash_Step_0_gml_522_0");
		c_msgnextloc("\\E1* I must Conquere this Islande and defeast Thou!/", "obj_ch2_scene21_loop_slash_Step_0_gml_523_0");
		c_msgnextloc("\\E4* Then^1, giftingeth her a succulent Island Presente^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_524_0");
		c_msgnextloc("\\E3* The Beautious Queene shall reward ME -/", "obj_ch2_scene21_loop_slash_Step_0_gml_525_0");
		c_msgnextloc("\\E5* By Makingeth Me Her Left-Hand-Man!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_526_0");
		c_msgnextloc("\\E6* Hahaha!^1! Me!^1! The ULTIMATE Minion!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_527_0");
		c_msgnextloc("\\E2* Now^1, beholdeth^1! The forme of thoun Destroyere!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_528_0");
		c_talk_wait();
		c_soundplay(snd_swing);
		c_var_instance(rouxls.boatfront, "fallnow", 1);
		c_wait(5);
		c_var_instance(thrash, "visible", 1);
		c_wait(30);
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E2* ..^1. whatevereth this Thing is!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_538_0");
		c_talk_wait();
		c_sel(ra);
		c_sprite(spr_ralsei_hurt_overworld);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EU* Th..^1. This again!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_546_0");
		c_talk_wait();
		c_facing("r");
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E3* Haha^1, squirming with Jealousy at my Battle Caravane!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_553_0");
		c_msgnextloc("\\E4* 'Tis an Effigie of an Ancient God of Combate^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_554_0");
		c_msgnextloc("\\E6* I rescuedeth it from The King's Trash Heape^1,/", "obj_ch2_scene21_loop_slash_Step_0_gml_555_0");
		c_msgnextloc("\\E1* And fixedeth it up in this Worldes' Scrap Shoppe!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_556_0");
		if (!duckmode)
		{
			c_facenext("ralsei", 22);
			c_msgnextloc("\\EM* It's^1, um..^1. It's actually a rejected^1, uh^1, design we made.../", "obj_ch2_scene21_loop_slash_Step_0_gml_561_0");
			c_facenext("rouxls", 3);
			c_msgnextloc("\\E3* Ha ha^1, and Soone^1, THOU shalt tasteth Rejection --/", "obj_ch2_scene21_loop_slash_Step_0_gml_563_0");
			c_msgnextloc("\\E1* Firsthandeth^1, in the form of varieth Bulletst!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_564_0");
			c_talk_wait();
		}
		else
		{
			c_facenext("ralsei", 22);
			c_msgnextloc("\\EM* Um..^1. that's..^1. just a duck./", "obj_ch2_scene21_loop_slash_Step_0_gml_569_0");
			c_facenext("rouxls", 5);
			c_msgnextloc("\\E5* .../", "obj_ch2_scene21_loop_slash_Step_0_gml_571_0");
			c_msgnextloc("\\E6* I knoweth what it art^1, Ruffiane!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_572_0");
			c_msgnextloc("\\E1* Go forth!^1! My Squeakie Duckie!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_573_0");
			c_talk_wait();
		}
		c_mus("stop");
		c_soundplay(snd_break1);
		c_var_instance(rouxls, "sprite_index", spr_rurus_pirate_saber);
		c_var_instance(rouxls, "x", rouxls.x - 34);
		c_var_instance(rouxls, "y", rouxls.y - 126);
		c_var_instance(rouxls, "image_speed", 0.25);
		c_wait(15);
		c_var_instance(rouxls, "image_speed", 0);
		c_sel(kr);
		c_soundplay(snd_weaponpull);
		c_sprite(spr_krisb_intro);
		c_autowalk(0);
		c_imagespeed(0.5);
		c_wait(12);
		c_var_instance(id, "swan_swap", 1);
		c_wait(11);
		c_imagespeed(0);
		c_waitcustom();
	}
	if (swan_swap > 0)
	{
		if (swan_swap == 1)
		{
			swan_cover = scr_dark_marker(swanboat.x, swanboat.y, spr_swanboat_cover);
			swan_cover.image_index = swanboat.image_index;
			swan_cover.image_speed = swanboat.image_speed;
			swan_cover.depth = kr_actor.depth - 10;
			swan_depth = swanboat.depth;
			swan_swap = 2;
		}
		swanboat.depth = kr_actor.depth + 10;
	}
	if (con == 35 && customcon == 1)
	{
		con = 39;
		alarm[0] = 30;
		snd_free_all();
		rouxls.visible = 0;
		thrash.visible = 0;
		puddle.visible = 0;
		global.batmusic[0] = snd_init("rouxls_battle.ogg");
		global.specialbattle = 1;
		encounterflag = 546;
		global.flag[54] = encounterflag;
		global.encounterno = 63;
		global.flag[9] = 1;
		scr_encountersetup(63);
		battle = instance_create(0, 0, obj_battlecontroller);
		battlehey = instance_create(0, 0, obj_rouxlsbattle_hey);
		battle_swan = scr_dark_marker(swanboat.x, swanboat.y, spr_swanboat);
		battle_swan.image_index = swanboat.image_index;
		battle_swan.image_speed = swanboat.image_speed;
		battle_swan.depth = obj_herokris.depth + 1;
		swan_swap = 0;
		swan_cover.depth = obj_heroralsei.depth - 10;
		swanboat.depth = swan_depth;
		with (obj_actor)
			visible = 0;
	}
	if (con == 40 && i_ex(obj_battlecontroller))
	{
		var battle_end = false;
		with (obj_battlecontroller)
		{
			if (intro == 2)
				battle_end = true;
		}
		if (battle_end)
		{
			with (battlehey)
				instance_destroy();
			con = 41;
			alarm[0] = 30;
			snd_volume(global.batmusic[1], 0, 25);
		}
	}
	if (con == 42)
	{
		con = 43;
		alarm[0] = 30;
		customcon = 0;
		obj_mainchara.x = obj_herokris.x;
		obj_mainchara.y = obj_herokris.y;
		kr_actor.x = obj_herokris.x;
		kr_actor.y = obj_herokris.y;
		kr_actor.sprite_index = obj_herokris.sprite_index;
		rouxls.sprite_index = spr_rouxls_stone_origin;
		rouxls.image_index = 0;
		rouxls.x += 34;
		rouxls.y += 126;
		instance_destroy(battle_swan);
		instance_destroy(swan_cover);
		with (obj_actor)
			visible = 1;
		with (obj_thrashmachine)
		{
			if (visible == 1)
				instance_destroy();
			else
				visible = 1;
		}
		with (obj_marker)
		{
			if (sprite_index == spr_rouxls_puddle && visible == 1)
				instance_destroy();
		}
		rouxls.visible = 1;
		thrash.visible = 1;
		puddle.visible = 1;
		snd_free(global.batmusic[0]);
		snd_volume(global.currentsong[1], 0, 0);
		snd_resume(global.currentsong[1]);
		snd_volume(global.currentsong[1], 1, 20);
		with (obj_monsterparent)
			instance_destroy();
		with (obj_bulletparent)
			instance_destroy();
		with (obj_heroparent)
			instance_destroy();
		if (i_ex(obj_battlecontroller))
			instance_destroy(obj_battlecontroller);
	}
	if (rouxls_power_up)
	{
		rouxls_power_up = false;
		if (!i_ex(obj_power_up_fx_rouxls))
		{
			d = scr_following_afterimage(obj_power_up_fx_rouxls, rouxls);
			d.depth -= 1;
		}
	}
	if (rouxls_power_up_cancel)
	{
		rouxls_power_up_cancel = false;
		if (i_ex(obj_power_up_fx_rouxls))
			instance_destroy(obj_power_up_fx_rouxls);
	}
	if (con == 44 && !i_ex(obj_battlecontroller))
	{
		con = 49;
		alarm[0] = 30;
		customcon = 0;
		c_waitcustom_end();
		if (global.flag[50] == 1)
		{
			c_speaker("rouxls");
			c_msgsetloc(0, "\\E4* So thou hath beateneth The Crappeth out of Me./", "obj_ch2_scene21_loop_slash_Step_0_gml_763_0");
			c_msgnextloc("\\E3* I supposest that means thou thinkest thoust hath Won?/", "obj_ch2_scene21_loop_slash_Step_0_gml_764_0");
			c_facenext("ralsei", 20);
			c_msgnextloc("\\EK* Umm..^1. morally^1, no^1.&* Physically..^1. yes./", "obj_ch2_scene21_loop_slash_Step_0_gml_766_0");
			c_facenext("rouxls", 1);
			c_msgnextloc("\\E1* Well shivereth my timbereth^1, you little Bimbo!/", "obj_ch2_scene21_loop_slash_Step_0_gml_768_0");
			c_msgnextloc("\\E2* For in a battle of TRUE Powere^1, Rouxls..^1. shall RULE!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_769_0");
			c_talk_wait();
		}
		else if (global.flag[435] >= 2)
		{
			if (global.flag[435] == 2)
			{
				c_speaker("rouxls");
				c_msgsetloc(0, "\\E2* Ah...^1. Ahh^1, ha ha ha...!/", "obj_ch2_scene21_loop_slash_Step_0_gml_730_0");
				c_msgnextloc("\\E6* So thou hast triumphed.../", "obj_ch2_scene21_loop_slash_Step_0_gml_731_0");
			}
			else
			{
				c_speaker("rouxls");
				c_msgsetloc(0, "\\E2* Ah...^1. Ahh^1, ha ha ha...!/", "obj_ch2_scene21_loop_slash_Step_0_gml_749_0");
				c_msgnextloc("\\E0* So we hath an EQUAL number of houses!/", "obj_ch2_scene21_loop_slash_Step_0_gml_750_0");
				c_msgnextloc("\\E4* I suppose thou THINKETH^1, that MEANSETH.../", "obj_ch2_scene21_loop_slash_Step_0_gml_751_0");
				c_msgnextloc("\\E2* Thou have matched my Abilitiese!/", "obj_ch2_scene21_loop_slash_Step_0_gml_752_0");
				c_facenext("ralsei", 20);
				c_msgnextloc("\\EK* (What abilities?)/", "obj_ch2_scene21_loop_slash_Step_0_gml_754_0");
				c_facenext("rouxls", 5);
			}
			if (!duckmode)
			{
				c_msgnextloc("\\E5* NOT!^1! You have only seen but One-Percentile of my Weapon's Abilities!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_736_0");
				c_talk_wait();
			}
			else
			{
				c_msgnextloc("\\E5* NOT!^1! That plump duck art not but The Appetizemente!/", "obj_ch2_scene21_loop_slash_Step_0_gml_740_0");
				c_msgnextloc("\\E1* Watch!^1! Watch your growing and huge Destructione!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_741_0");
				c_talk_wait();
			}
		}
		else
		{
			c_speaker("rouxls");
			c_msgsetloc(0, "\\E2* Finally^1, I've WON!^1! GEHAHAHAHA!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_774_0");
			c_msgnextloc("\\E5* How doth it feeleth^1, WORMS!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_775_0");
			c_msgnextloc("\\E3* To be bestedeth^1, by the Beste?/", "obj_ch2_scene21_loop_slash_Step_0_gml_776_0");
			c_msgnextloc("\\E4* To be laid LOWE^1, by the Duke of Puzzles?!/", "obj_ch2_scene21_loop_slash_Step_0_gml_777_0");
			c_msgnextloc("\\E5* Ahaha..^1. HAHAHAHAHA!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_778_0_b");
			c_talk_wait();
			c_wait(30);
			c_sel(ra);
			c_facing("d");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EK* Er^1, um.../", "obj_ch2_scene21_loop_slash_Step_0_gml_787_0");
			c_msgnextloc("\\EJ* So^1, um^1, what happens now?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_788_0");
			c_talk_wait();
			c_facing("r");
			c_mus("pause");
			c_wait(60);
			c_speaker("rouxls");
			c_msgsetloc(0, "\\E1* What?/", "obj_ch2_scene21_loop_slash_Step_0_gml_796_0");
			c_facenext("ralsei", 19);
			c_msgnextloc("\\EJ* Umm^1, you had more houses..^1. so.../", "obj_ch2_scene21_loop_slash_Step_0_gml_798_0");
			c_msgnextloc("\\EK* What..^1. does that even do?/", "obj_ch2_scene21_loop_slash_Step_0_gml_799_0_b");
			c_facenext("rouxls", 3);
			c_msgnextloc("\\E3* Hahaha^1! Gladeth thou asked!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_801_0");
			c_talk_wait();
			c_wait(60);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EX* You don't have any plan^1, do you./%", "obj_ch2_scene21_loop_slash_Step_0_gml_807_0");
			c_talk_wait();
			c_mus("resume");
			c_speaker("rouxls");
			c_msgsetloc(0, "\\E1* SHUTTETH YON UPPETH!/", "obj_ch2_scene21_loop_slash_Step_0_gml_813_0_b");
			c_msgnextloc("\\E5* And BEHOLD..^1. My TRUETH POWER!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_814_0");
			c_talk_wait();
		}
		c_sel(ra);
		c_sprite(spr_ralsei_hurt_overworld);
		c_wait(10);
		c_var_instance(id, "rouxls_power_up", true);
		c_mus2("loopsfx", 131, 0);
		c_mus2("loopsfxvolume", 0, 0);
		c_mus2("loopsfxvolume", 0.7, 30);
		c_mus2("loopsfxpitch", 0, 0);
		c_mus2("loopsfxpitchtime", 0.9, 30);
		c_wait(15);
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E2* Geh ha ha ha ha!!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_757_0");
		c_msgnextloc("\\E1* Beholde^1, Worms...!!/", "obj_ch2_scene21_loop_slash_Step_0_gml_758_0");
		c_msgnextloc("\\E5* The REALE Power of Rouxls Kaard...!!!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_759_0");
		c_wait(15);
		c_talk_wait();
		c_var_instance(rouxls, "fallnow", 1);
		c_wait(15);
		c_wait(30);
		c_mus("stop");
		c_mus("loopsfxstop");
		c_var_instance(id, "rouxls_power_up_cancel", true);
		c_var_instance(rouxls, "con", 1);
		c_wait(45);
		c_msgside("bottom");
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E5* GOD/%", "obj_ch2_scene21_loop_slash_Step_0_gml_778_0");
		c_talk_wait();
		c_var_instance(rouxls, "con", 2);
		c_var_instance(rouxls, "timer", 0);
		c_wait(30);
		c_sel(ra);
		c_facing("r");
		c_wait(10);
		c_wait(40);
		c_soundplay(snd_badexplosion);
		c_var_instance(id, "explosion", true);
		c_var_instance(simcity, "flyaway", 1);
		c_wait(60);
		c_speaker("rouxls");
		c_msgsetloc(0, "\\E5* DAMMIT/%", "obj_ch2_scene21_loop_slash_Step_0_gml_799_0");
		c_talk_wait();
		c_panspeed(-5, 0, 20);
		c_wait(20);
		c_sel(kr);
		c_facing("l");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EK* Ah.../", "obj_ch2_scene21_loop_slash_Step_0_gml_811_0");
		c_msgnextloc("\\EM* That's right^1, Rouxls isn't compatible with this world^1, either./", "obj_ch2_scene21_loop_slash_Step_0_gml_812_0");
		c_msgnextloc("\\EJ* Well^1, let's go^1, Kris./%", "obj_ch2_scene21_loop_slash_Step_0_gml_813_0");
		c_talk_wait();
		c_var_instance(thrash, "depth", 100);
		c_var_instance(puddle, "depth", 110);
		c_facing("r");
		c_panobj(kr_actor, 15);
		c_wait(16);
		c_pannable(0);
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 50 && !i_ex(obj_cutscene_master))
	{
		con = 51;
		alarm[0] = 20;
		rouxls.depth = 10000;
		adjust_actors = false;
		with (swanboat)
			scr_move_to_point_over_time(800, 100, 20);
	}
	if (con == 52)
	{
		con = 53;
		alarm[0] = 30;
		swanboat.pause_x_move = false;
	}
	if (con == 54 && swanboat.x >= 1244)
	{
		con = 55;
		alarm[0] = 20;
		swanboat.pause_x_move = true;
		with (swanboat)
			scr_move_to_point_over_time(1284, 140, 20);
	}
	if (con == 56)
	{
		con = 57;
		swanboat.pause_x_move = false;
	}
	if (con == 57 && swanboat.x >= 1745)
	{
		con = 99;
		take_photo = true;
		swanboat.pause_x_move = true;
		swanboat.pause_y_move = true;
		swanboat.con = 99;
		swanboat.active = 0;
		with (obj_caterpillarchara)
			visible = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
	}
	if (take_photo)
	{
		if (photocon == 0)
		{
			photocon = -1;
			c_msc(1117);
			c_talk_wait();
		}
		if (photocon == 1)
		{
			photocon = 10;
			global.flag[325] = 4;
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EQ* That's OK^1, Kris^1! Let's keep going./%", "obj_ch2_scene21_loop_slash_Step_0_gml_879_0");
			c_talk_wait();
		}
		if (photocon == 2)
		{
			photocon = 10;
			global.flag[325] = 1;
			with (obj_event_manager)
				trigger_event((0 << 0), (18 << 0));
			c_sel(kr);
			c_facing("l");
			c_walk_wait("l", 3, 10);
			c_autowalk(0);
			c_sprite(spr_kris_hug_left);
			c_imageindex(0);
			c_imagespeed(0.15);
			c_wait(20);
			c_imagespeed(0);
			c_sel(ra);
			c_autowalk(0);
			c_sprite(spr_ralsei_walk_right_blush);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* K..^1. Kris!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_905_0");
			c_talk_wait();
			c_var_instance(whiteall, "x", camerax());
			c_var_instance(whiteall, "y", 0);
			c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5);
			c_soundplay(snd_camera_flash);
			c_wait(10);
			c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5);
			c_wait(60);
			c_sel(kr);
			c_facing("l");
			c_wait(10);
			c_walk_wait("r", 3, 10);
			c_wait(30);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\ED* D..^1. did it r-really take a picture of that!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_927_0");
			c_msgnextloc("\\E1* Umm^1, l..^1. let's keep going!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_928_0");
			c_talk_wait();
			c_sel(ra);
			c_autowalk(1);
			c_facing("r");
		}
		if (photocon == 3)
		{
			photocon = 10;
			global.flag[325] = 2;
			c_sel(kr);
			c_sprite(spr_kris_peace);
			c_sel(ra);
			c_autowalk(0);
			c_sprite(spr_ralsei_wave_start);
			c_imageindex(2);
			c_imagespeed(0);
			c_wait(15);
			c_var_instance(whiteall, "x", camerax());
			c_var_instance(whiteall, "y", 0);
			c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5);
			c_soundplay(snd_camera_flash);
			c_wait(10);
			c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5);
			c_wait(60);
			c_sel(kr);
			c_facing("r");
			c_sel(ra);
			c_autowalk(1);
			c_facing("r");
			c_wait(30);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\E2* I bet it must have been a wonderful picture.../", "obj_ch2_scene21_loop_slash_Step_0_gml_975_0");
			c_msgnextloc("\\EU* What? ... We were facing the wrong way?!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_976_0");
			c_talk_wait();
		}
		if (photocon == 4)
		{
			photocon = 10;
			global.flag[325] = 3;
			c_sel(kr);
			c_facing("u");
			c_sel(ra);
			c_facing("u");
			c_wait(10);
			c_sel(kr);
			c_sprite(spr_kris_rude_gesture);
			c_sel(ra);
			c_sprite(spr_ralsei_hurt_overworld);
			c_shakeobj();
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EL* K-Kris!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1005_0");
			c_talk_wait();
			c_wait(15);
			c_var_instance(whiteall, "x", camerax());
			c_var_instance(whiteall, "y", 0);
			c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 5);
			c_soundplay(snd_camera_flash);
			c_wait(10);
			c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 5);
			c_wait(60);
			c_sel(kr);
			c_facing("u");
			c_wait(5);
			c_facing("r");
			c_wait(30);
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EU* D..^1. did it r-really take a picture of that!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1029_0");
			c_talk_wait();
			c_sel(ra);
			c_facing("r");
			c_speaker("ralsei");
			c_msgsetloc(0, "\\EK* Umm^1, l..^1. let's keep going!/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1038_0");
			c_talk_wait();
		}
		if (photocon == 10 && !d_ex())
		{
			take_photo = false;
			photocon = -1;
			con = 58;
			c_actortokris();
			c_actortocaterpillar();
			c_terminatekillactors();
		}
	}
	if (con == 58 && !i_ex(obj_cutscene_master))
	{
		con = 59;
		alarm[0] = 60;
		swanboat.pause_x_move = false;
		swanboat.pause_y_move = true;
		swanboat.con = 1;
	}
	if (con == 60)
	{
		con = 61;
		alarm[0] = 30;
		scr_speaker("rouxls");
		msgsetloc(0, "\\E1* ART THOU JUST GOING TO LEAVETH ME HERE!?/", "obj_ch2_scene21_loop_slash_Step_0_gml_1212_0");
		msgnextloc("\\E6* THOU AREN'T EVEN GOING TO SHOWETH ME THE PICTURE!?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1213_0");
		d = d_make();
		d.zurasu = 1;
	}
	if (!swanboat.pause_x_move && swanboat.x >= 2280)
	{
		swanboat.pause_x_move = true;
		swanboat.pause_y_move = true;
		with (swanboat)
			scr_move_to_point_over_time(2525, 175, 80);
	}
	if (con == 62 && swanboat.x >= 2525 && !d_ex())
	{
		con = 63;
		alarm[0] = 30;
		global.flag[326] = 0;
		swanboat.con = 99;
		swanboat.active = 0;
		swanboat.pause_x_move = true;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		c_wait(10);
		c_sel(kr);
		c_autowalk(1);
		c_walk("r", 5, 40);
		c_sel(ra);
		c_autowalk(1);
		c_walk_wait("r", 5, 40);
		c_pannable(1);
		c_panobj(kr_actor, 30);
		c_wait(10);
		c_msgzurasu(1);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\E2* ..^1. that was a nice boatride^1, wasn't it^1, Kris?/%", "obj_ch2_scene21_loop_slash_Step_0_gml_1106_0");
		c_talk_wait();
		c_pannable(0);
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 64 && !i_ex(obj_cutscene_master))
	{
		con = 65;
		global.interact = 0;
		global.facing = 0;
		global.plot = 150;
		swanboat.con = 99;
		swanboat.active = 0;
		with (obj_mainchara)
			fun = 0;
		with (obj_caterpillarchara)
		{
			follow = 1;
			fun = 0;
		}
		var swanboat_npc = instance_create(swanboat.x, swanboat.y, obj_npc_room_animated);
		swanboat_npc.sprite_index = spr_swanboat;
		swanboat_npc.image_speed = 0.15;
		with (swanboat_npc)
			scr_depth();
		with (swanboat)
			instance_destroy();
		var collider_right = instance_create(2670, 278, obj_solidblock);
		collider_right.image_yscale = 10;
	}
	if (remove_island_obj && !d_ex())
	{
		remove_island_obj = false;
		set_flags_complete = true;
		with (obj_queencar_talktrigger)
			instance_destroy();
	}
	if (explosion)
	{
		explodetimer++;
		if (explodetimer == 1)
		{
			explosion_marker = instance_create(1090, 170, obj_marker);
			explosion_marker.sprite_index = spr_realisticexplosion;
			explosion_marker.image_xscale = 2;
			explosion_marker.image_yscale = 2;
			with (explosion_marker)
				scr_depth();
			finish_thrash = true;
			with (thrash)
			{
				direction = 90;
				speed = 10;
				gravity = 0.1;
				launch = true;
				drawfeet = true;
			}
		}
		else
		{
			var finish = false;
			with (obj_marker)
			{
				if (sprite_index == spr_realisticexplosion && image_index >= 16)
				{
					finish = true;
					instance_destroy();
				}
			}
			if (finish)
			{
				explosion = false;
				explodetimer = 0;
			}
		}
		if (explodetimer == 5)
		{
			layer_set_visible("TILES_Island_Path", false);
			layer_set_visible("TILES_Island_Path_Animated", false);
		}
	}
	if (finish_thrash)
	{
		with (thrash)
		{
			xx += 15;
			launch = true;
		}
		with (puddle)
			x += 15;
		if (thrash.xx > (camerax() + view_wport[0] + 200))
		{
			finish_thrash = false;
			with (thrash)
				instance_destroy();
			with (puddle)
				instance_destroy();
		}
	}
}
