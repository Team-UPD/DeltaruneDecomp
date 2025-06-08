if (con == 0 && obj_mainchara.y >= (y - 26) && global.interact == 0)
{
	if (global.plot < 14)
	{
		con = 20;
		global.interact = 1;
		scr_speaker("ralsei");
		global.fe = 0;
		msgsetloc(0, "\\E2* (Kris^1, I have something to show you in the CASTLE!)/%", "obj_ch2_scene6_slash_Step_0_gml_11_0");
		d_make();
		obj_mainchara.y = y - 27;
	}
	if (global.plot == 15)
	{
		global.interact = 1;
		con = 1;
	}
}
if (con == 1)
{
	con = 5;
	cutscene_master = scr_cutscene_make();
	with (obj_mainchara)
		visible = 0;
	la = 3;
	la_actor = instance_create(obj_mainchara.x - 16, 900, obj_actor);
	scr_actor_setup(la, la_actor, "lancer");
	la_actor.sprite_index = spr_lancer_dt;
	ro = 4;
	ro_actor = instance_create(obj_mainchara.x - 28, 900, obj_actor);
	scr_actor_setup(ro, ro_actor, "rouxls");
	ro_actor.sprite_index = spr_rurus_idle;
	c_sel(ro);
	c_autowalk(0);
	sw = 5;
	sw_actor = instance_create(obj_mainchara.x - 20, 900, obj_actor);
	scr_actor_setup(sw, sw_actor, "starwalker");
	sw_actor.sprite_index = spr_npc_originalstarwalker;
	with (sw_actor)
		specialsprite[0] = spr_npc_originalstarwalker_walk_down;
	c_sel(sw);
	c_autowalk(0);
	la_card = instance_create(0, 0, obj_marker);
	la_card.sprite_index = spr_cutscene_06_lancer_card;
	ro_card = instance_create(0, 0, obj_marker);
	ro_card.sprite_index = spr_cutscene_06_rouxls_card;
	scr_maincharacters_actors();
	c_msgside("bottom");
	c_sel(su);
	c_arg_objectxy(kr_actor, 42, -80);
	c_walkdirect(x, y, 15);
	c_sel(ra);
	c_arg_objectxy(kr_actor, -50, -75);
	c_walkdirect(x, y, 15);
	c_wait(15);
	c_facing("d");
	c_sel(su);
	c_facing("d");
	c_wait(5);
	c_sel(kr);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Wait^1, Kris^1, we're leaving!? But we just got here!/", "obj_ch2_scene6_slash_Step_0_gml_84_0");
	c_msgnextloc("\\EK* Man^1, I don't wanna go do our group project.../%", "obj_ch2_scene6_slash_Step_0_gml_85_0");
	c_talk_wait();
	c_wait("5");
	c_sel(ra);
	c_facing("r");
	c_wait("5");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EK* Oh^1... You two have homework?/%", "obj_ch2_scene6_slash_Step_0_gml_93_0");
	c_talk_wait();
	c_wait("5");
	c_sel(su);
	c_facing("r");
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Uhh^1, well^1,/%", "obj_ch2_scene6_slash_Step_0_gml_101_0");
	c_talk_wait();
	c_wait(5);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EN* Susie^1, Kris^1, you ought to do it right away^1! School's important!/", "obj_ch2_scene6_slash_Step_0_gml_106_0");
	c_msgnextloc("\\EN* I banish you from this kingdom until you start your project!/%", "obj_ch2_scene6_slash_Step_0_gml_107_0");
	c_talk_wait();
	c_sel(su);
	c_facing("l");
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* Ugh^1, fine!!^1! I'll do it!!^1! Jeez!!!/%", "obj_ch2_scene6_slash_Step_0_gml_116_0");
	c_talk_wait();
	c_sel(la);
	c_walk_wait("d", 15, 15);
	c_sel(su);
	c_facing("susieunhappy");
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_wait(15);
	c_speaker("lancer");
	c_msgsetloc(0, "\\E1* Susie!^1! Don't worry!^1! I'll go and help you^1, too!!!/", "obj_ch2_scene6_slash_Step_0_gml_128_0");
	c_facenext("ralsei", "C");
	c_msgnextloc("* Er^1, wait^1, Lancer^1! Perhaps you shouldn't -/", "obj_ch2_scene6_slash_Step_0_gml_130_0");
	c_facenext("lancer", 3);
	c_msgnextloc("* Too late^1, kindboy!^1! Friendship Forme!!/%", "obj_ch2_scene6_slash_Step_0_gml_132_0");
	c_talk_wait();
	c_sel(kr);
	c_autodepth(0);
	c_depth(90);
	c_sel(la);
	c_spin(2);
	c_walk("d", 4, 35);
	c_sel(su);
	c_delayfacing(15, "l");
	c_delayfacing(30, "d");
	c_sel(ra);
	c_delayfacing(15, "r");
	c_delayfacing(30, "d");
	c_wait(35);
	c_sel(la);
	c_visible(0);
	c_soundplay(snd_hypnosis);
	c_sel(kr);
	c_autodepth(1);
	c_wait(60);
	c_soundplay(snd_acquire_lancer);
	c_speaker("no_name");
	c_msgsetloc(0, "* (LANCER was added to your Key Items.)/", "obj_ch2_scene6_slash_Step_0_gml_161_0");
	c_facenext("susie", 6);
	c_msgnextloc("* ..^1. What? Where'd you go...?/", "obj_ch2_scene6_slash_Step_0_gml_163_0");
	c_facenext("lancer", 0);
	c_msgnextloc("* Don't worry!^1! I just entered your INVENTORY!!/", "obj_ch2_scene6_slash_Step_0_gml_165_0");
	c_msgnextloc("\\E3* I'll just be hanging out in Kris's pocket!!!/", "obj_ch2_scene6_slash_Step_0_gml_166_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Dunno what that means^1, but OK!/%", "obj_ch2_scene6_slash_Step_0_gml_168_0");
	c_talk_wait();
	c_wait(5);
	c_sel(ro);
	c_walk_wait("d", 15, 12);
	c_sel(su);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_wait(15);
	c_speaker("rouxls");
	c_msgsetloc(0, "* Feare not^1! I too^1, shall Assisteth!/", "obj_ch2_scene6_slash_Step_0_gml_180_0");
	c_facenext("susie", "4");
	c_msgnextloc("\\E4* Uh^1, we're good./", "obj_ch2_scene6_slash_Step_0_gml_182_0");
	c_facenext("rouxls", "3");
	c_msgnextloc("\\E3* Ahah^1, quite!^1! We^1, as a Teame ^1- art Good!!!/%", "obj_ch2_scene6_slash_Step_0_gml_184_0");
	c_talk_wait();
	c_wait(5);
	c_sel(ro);
	c_arg_objectxy(kr_actor, -28, -40);
	c_walkdirect(x, y, 10);
	c_wait(5);
	c_sel(su);
	c_facing("d");
	c_sel(ra);
	c_facing("d");
	c_wait(5);
	c_sel(ro);
	c_visible(0);
	c_wait(5);
	c_soundplay(snd_item);
	c_speaker("no_name");
	c_msgsetloc(0, "* (ROUXLS became a Key Item even though no one wanted that.)/%", "obj_ch2_scene6_slash_Step_0_gml_201_0");
	c_talk_wait();
	if (global.flag[254] == 1)
	{
		scr_keyitemget(14);
		c_wait(10);
		c_sel(sw);
		c_walk_wait("d", 15, 15);
		c_sel(su);
		c_facing("u");
		c_sel(ra);
		c_facing("u");
		c_sel(sw);
		c_speaker("no_name");
		c_msgsetloc(0, "* \\cYI\\cW will also \\cYjoin\\cW/%", "obj_ch2_scene6_slash_Step_0_gml_214_0");
		c_talk_wait();
		c_wait(5);
		c_sprite(spr_npc_originalstarwalker_walk_down);
		c_imagespeed(0.25);
		c_arg_objectxy(kr_actor, -20, -20);
		c_walkdirect(x, y, 60);
		c_wait(20);
		c_sel(su);
		c_facing("l");
		c_sel(ra);
		c_facing("r");
		c_wait(20);
		c_sel(su);
		c_facing("d");
		c_sel(ra);
		c_facing("d");
		c_wait(20);
		c_sel(sw);
		c_visible(0);
		c_soundplay(snd_shineselect);
		c_wait(20);
		c_soundplay(snd_item);
		c_speaker("no_name");
		c_msgsetloc(0, "* (THE ORIGINAL   \\cYSTARWALKER\\cW became a Key Item.)/%", "obj_ch2_scene6_slash_Step_0_gml_238_0");
		c_talk_wait();
	}
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* .../%", "obj_ch2_scene6_slash_Step_0_gml_243_0");
	c_talk_wait();
	c_sel(su);
	c_facing("d");
	c_sel(ra);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Alright^1, enough already. Let's get going./%", "obj_ch2_scene6_slash_Step_0_gml_250_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_walk_wait("l", 8, 5);
	c_sel(kr);
	c_autowalk(0);
	c_walk("l", 6, 5);
	c_sel(su);
	c_walk("d", 8, 95);
	c_wait(15);
	c_sel(kr);
	c_walk("r", 3, 10);
	c_wait(15);
	c_sel(ra);
	c_walk_wait("r", 4, 13);
	c_walk_wait("d", 4, 10);
	c_wait(5);
	c_facing("d");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Good luck today^1, Kris. See you soon!/%", "obj_ch2_scene6_slash_Step_0_gml_276_0");
	c_talk_wait();
	c_wait(5);
	c_sel(kr);
	c_autowalk(1);
	c_walk("d", 6, 85);
	c_wait(5);
	c_fadeout(35);
	c_wait(40);
	c_actortokris();
	c_pannable(0);
	c_terminatekillactors();
}
if (customcon == 1 && con == 2)
{
	if (!instance_exists(obj_dialoguer))
	{
		customcon = 0;
		c_waitcustom_end();
		con = 3;
	}
	ralTimer++;
	if (ralTimer == 1)
	{
		with (ra_actor)
			scr_jump_in_place(10, 10);
	}
	if (ralTimer > 11)
		ralTimer = 0;
}
if (customcon == 1 && con == 3)
{
	if (la_actor.visible == 0)
	{
		con = 4;
		lancerGlow = 3;
		customcon = 0;
		c_waitcustom_end();
	}
	kr_actor.depth = -99999999;
	lancerSpin += addAmount;
	moveAmount = 1;
	if (lancerCard == 0)
	{
		if (lancerSpin >= 12)
		{
			totalSpins++;
			lancerSpin = 0;
			if (addAmount < 2.5)
				addAmount += 0.5;
		}
		if (lancerSpin < 12)
			scr_actor_facing(la_actor, "r");
		if (lancerSpin < 9)
			scr_actor_facing(la_actor, "u");
		if (lancerSpin < 6)
			scr_actor_facing(la_actor, "l");
		if (lancerSpin < 3)
			scr_actor_facing(la_actor, "d");
	}
	if (lancerCard == 1)
		la_card.y += 4;
	if (la_card.y > (su_actor.y + 30) && stepAway == 0)
	{
		scr_actor_facing(su_actor, "l");
		scr_actor_facing(ra_actor, "r");
	}
	if (la_card.y > (su_actor.y + 60))
	{
		scr_actor_facing(su_actor, "d");
		scr_actor_facing(ra_actor, "d");
	}
	if (la_card.y >= (kr_actor.y + 10))
	{
		moveAmount = 0;
		addAmount = 0;
		with (la_card)
			visible = 0;
		with (la_actor)
			visible = 0;
	}
	if (totalSpins > 3 && lancerGlow == 0)
	{
		shrinkValue = 1;
		morphTime = 0;
		growValue = 0;
		cardMade = 0;
		halfWidth = la_actor.sprite_width * 0.5;
		origX = la_actor.x;
		halfHeight = la_actor.sprite_height * 0.5;
		origY = la_actor.y;
		lancerGlow = 1;
	}
	if (totalSpins > 18 && lancerGlow == 1)
	{
		lancerGlow = 2;
		morphTime = 0;
	}
}
if (customcon == 1 && con == 4)
{
	conTimer++;
	if (ro_actor.visible == 0)
	{
		con = 5;
		customcon = 0;
		lancerGlow = 6;
		c_waitcustom_end();
	}
	kr_actor.depth = -99999999;
	if (rouxlsCard == 1)
		ro_card.y += 6;
	if (ro_card.y > (su_actor.y + 30) && stepAway == 0)
	{
		scr_actor_facing(su_actor, "l");
		scr_actor_facing(ra_actor, "r");
	}
	if (ro_card.y > (su_actor.y + 60))
	{
		scr_actor_facing(su_actor, "d");
		scr_actor_facing(ra_actor, "d");
	}
	if (ro_card.y >= (kr_actor.y + 10))
	{
		moveAmount = 0;
		addAmount = 0;
		with (ro_card)
			visible = 0;
		with (ro_actor)
			visible = 0;
	}
	if (conTimer >= 5 && lancerGlow == 3)
	{
		shrinkValue = 1;
		morphTime = 0;
		growValue = 0;
		cardMade = 0;
		halfWidth = ro_actor.sprite_width * 0.5;
		origX = ro_actor.x;
		halfHeight = ro_actor.sprite_height * 0.5;
		origY = ro_actor.y;
		lancerGlow = 4;
	}
	if (conTimer >= 60 && lancerGlow == 4)
	{
		lancerGlow = 5;
		morphTime = 0;
	}
}
if (con == 5)
{
	if (!instance_exists(obj_cutscene_master))
	{
		con = 6;
		scr_losechar();
		scr_keyitemget(8);
		scr_keyitemget(9);
		scr_litemget(9);
		scr_getchar(2);
		global.interact = 0;
		if (global.plot < 16)
			global.plot = 16;
		global.facing = 0;
		instance_create(0, 0, obj_persistentfadein);
		room_goto(room_dw_castle_area_1);
	}
}
if (con == 20 && !d_ex())
{
	con = 0;
	global.interact = 0;
}
if (con == 50)
{
	global.interact = 1;
	con = 51;
	obj_mainchara.x = 740;
	obj_mainchara.y = 720;
}
if (con == 51)
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(0, 0, 2, 0);
	scr_makecaterpillar(0, 0, 3, 1);
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	global.facing = 0;
	kr_actor.sprite_index = spr_krisu_dark;
	kr_actor.x = obj_mainchara.x;
	kr_actor.y = obj_mainchara.y;
	su_actor.sprite_index = spr_susie_shock;
	su_actor.specialsprite[6] = spr_cutscene_06_highfive;
	su_actor.x = obj_mainchara.x + 80;
	su_actor.y = obj_mainchara.y;
	ra_actor.sprite_index = spr_ralsei_walk_up;
	ra_actor.x = obj_mainchara.x - 80;
	ra_actor.y = obj_mainchara.y;
	la = 3;
	la_actor = instance_create(724, 440, obj_actor);
	scr_actor_setup(la, la_actor, "lancer");
	la_actor.sprite_index = spr_lancer_dt;
	hathy = scr_dark_marker(883, 605, spr_heartenemy_overworld);
	with (hathy)
		scr_depth();
	rabbick = scr_dark_marker(835, 570, spr_npc_rabbick_clean);
	with (rabbick)
		scr_depth();
	blockler = scr_dark_marker(600, 565, spr_blockler_b);
	with (blockler)
		scr_depth();
	c_wait(25);
	c_sel(su);
	c_facing("u");
	c_sel(la);
	c_walk_wait("d", 20, 10);
	c_wait(15);
	c_soundplay(snd_lancerwhistle);
	c_spin(2);
	c_wait(8);
	c_spin(0);
	c_wait(8);
	c_mus2("initloop", "lancer.ogg", 0);
	c_speaker("lancer");
	c_msgsetloc(0, "\\E1* Guess who's back^1, Clowns!?/", "obj_ch2_scene6_slash_Step_0_gml_543_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* Lancer!!!/%", "obj_ch2_scene6_slash_Step_0_gml_545_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect_wait(802, 600, 10);
	c_sel(la);
	c_visible(0);
	c_sel(su);
	c_specialsprite(6);
	c_autowalk(0);
	c_animate(0, 0, 0.5);
	c_soundplay(snd_jump);
	c_wait(14);
	c_soundplay(snd_whip_crack_only);
	c_wait(8);
	c_soundplay(snd_lancerlaugh);
	c_wait(50);
	c_sel(la);
	c_visible(1);
	c_autowalk(0);
	c_sprite(spr_cutscene_06_floorlancer);
	c_sel(su);
	c_autowalk(1);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Hey^1, Kris^1, dunno what you did^1, but hell yeah!/%", "obj_ch2_scene6_slash_Step_0_gml_566_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E9* Everyone's here!/%", "obj_ch2_scene6_slash_Step_0_gml_570_0");
	c_talk_wait();
	if (global.flag[248] == 1)
	{
		c_wait(30);
		c_facing("u");
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Uh^1, hey. Wait. I think we beat up some of these guys./", "obj_ch2_scene6_slash_Step_0_gml_591_0");
		c_msgnextloc("\\EC* Are they not gonna like..^1. gang up on us now?/", "obj_ch2_scene6_slash_Step_0_gml_592_0");
		c_facenext("lancer", 3);
		c_msgnextloc("\\E3* Don't worry^1, Susie!/%", "obj_ch2_scene6_slash_Step_0_gml_594_0");
		c_talk();
		c_wait_box(3);
		c_facing("l");
		c_sel(la);
		c_facing("d");
		c_wait_talk();
		c_sel(la);
		c_soundplay(snd_lancerwhistle);
		c_spin(4);
		c_wait(12);
		c_spin(0);
		c_wait(30);
		c_speaker("lancer");
		c_msgsetloc(0, "\\E1* Pop-pop got trapped in a hamster cage^1, making me Prince King./", "obj_ch2_scene6_slash_Step_0_gml_600_0_b");
		c_msgnextloc("\\E2* And with my new dad-like powers^1, I declared you forgiven!/", "obj_ch2_scene6_slash_Step_0_gml_601_0");
		c_facenext("susie", 3);
		c_msgnextloc("\\E3* Cool^1, well^1, guess I won't beat anyone up here^1, either./", "obj_ch2_scene6_slash_Step_0_gml_603_0");
		c_facenext("lancer", 3);
		c_msgnextloc("\\E3* Yep^1! Now all that's left is for everyone to enjoy the new home!/%", "obj_ch2_scene6_slash_Step_0_gml_605_0_b");
		c_talk();
		c_wait_box(3);
		c_sel(su);
		c_facing("d");
		c_wait_box(4);
		c_sel(su);
		c_facing("l");
		c_wait_talk();
		c_wait(30);
		c_sel(su);
		c_facing("u");
		c_facing("susieunhappy");
		c_speaker("susie");
		c_msgsetloc(0, "\\EC* Wait^1, new home? Where's your..^1. OLD home?/%", "obj_ch2_scene6_slash_Step_0_gml_614_0");
		c_talk_wait();
	}
	else
	{
		c_facing("u");
		c_wait(20);
		c_facing("susieunhappy");
		c_speaker("susie");
		c_msgsetloc(0, "\\E0* .. but^1, uh^1, what happened to^1, uh^1, Lancer's castle?/%", "obj_ch2_scene6_slash_Step_0_gml_576_0");
		c_talk_wait();
	}
	c_facing("l");
	c_sel(la);
	c_facing("d");
	c_soundplay(snd_lancerwhistle);
	c_spin(4);
	c_wait(12);
	c_spin(0);
	c_wait(30);
	c_speaker("lancer");
	c_msgsetloc(0, "\\E3* Alllll gone!/", "obj_ch2_scene6_slash_Step_0_gml_587_0");
	c_facenext("susie", 6);
	c_msgnextloc("\\E6* Gone?/%", "obj_ch2_scene6_slash_Step_0_gml_589_0");
	c_talk_wait();
	c_sel(2);
	c_walk("u", 5, 23);
	c_delayfacing(24, "r");
	c_wait(15);
	c_sel(la);
	c_facing("l");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EA* Right..^1. When Kris sealed the fountain^1,/", "obj_ch2_scene6_slash_Step_0_gml_598_0");
	c_msgnextloc("\\EA* That \"Dark World\" disappeared.../", "obj_ch2_scene6_slash_Step_0_gml_599_0");
	c_msgnextloc("\\EI* ..^1. And turned back into a normal classroom./", "obj_ch2_scene6_slash_Step_0_gml_600_0");
	c_facenext("susie", 0);
	c_msgnextloc("\\E0* ..^1. So where's Lancer gonna live now?/", "obj_ch2_scene6_slash_Step_0_gml_602_0");
	c_facenext("lancer", 2);
	c_msgnextloc("\\E2* Don't worry^1, Susie!!/", "obj_ch2_scene6_slash_Step_0_gml_604_0");
	c_msgnextloc("\\E1* We'll conquer Ralsei's castle as our own!!/%", "obj_ch2_scene6_slash_Step_0_gml_605_0");
	c_talk_wait();
	c_soundplay(snd_lancerlaugh);
	c_soundplay(snd_suslaugh);
	c_sel(su);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_susiel_dark_laugh);
	c_sel(la);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_lancer_rt_laugh);
	c_wait(30);
	c_sel(ra);
	c_walkdirect_wait(694, 708, 27);
	c_specialsprite(1);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E3* (Kris^1, as you bring Dark World Denizens back here...)/", "obj_ch2_scene6_slash_Step_0_gml_622_0");
	c_msgnextloc("\\EI* (The power of our Fountain...)/", "obj_ch2_scene6_slash_Step_0_gml_623_0");
	c_msgnextloc("\\E2* (Will transform this town more and more.)/", "obj_ch2_scene6_slash_Step_0_gml_624_0");
	c_msgnextloc("\\E3* (From now on^1, the enemies we SPARE...)/", "obj_ch2_scene6_slash_Step_0_gml_625_0");
	c_msgnextloc("\\E0* (Will be RECRUITED to our town.)/", "obj_ch2_scene6_slash_Step_0_gml_626_0");
	c_msgnextloc("\\E2* (So let's keep SPARING enemies^1, okay?)/%", "obj_ch2_scene6_slash_Step_0_gml_627_0");
	c_talk_wait();
	c_facing("u");
	c_sel(la);
	c_facing("d");
	c_sel(su);
	c_facing("d");
	c_facing("susie");
	c_autowalk(1);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E3* Anyhow^1, why don't we all have a look around?/", "obj_ch2_scene6_slash_Step_0_gml_637_0");
	c_msgnextloc("\\E2* We can head NORTH towards the CASTLE./", "obj_ch2_scene6_slash_Step_0_gml_638_0");
	c_msgnextloc("\\E2* I have a special surprise to show you there!/%", "obj_ch2_scene6_slash_Step_0_gml_639_0");
	c_talk_wait();
	c_sel(su);
	c_facing("l");
	c_speaker("lancer");
	c_msgsetloc(0, "\\E3* Ahaha!^1! Not if I surprise myself first!!/", "obj_ch2_scene6_slash_Step_0_gml_644_0");
	c_msgnextloc("\\E2* Last one there is a fresh and fragrant egg!!/%", "obj_ch2_scene6_slash_Step_0_gml_645_0");
	c_talk_wait();
	c_mus2("volume", 0, 30);
	c_sel(la);
	c_walk("u", 20, 900);
	c_wait(10);
	c_sel(su);
	c_wait(10);
	c_sel(1);
	c_walkdirect(780, 702, 16);
	c_delayfacing(17, "l");
	c_wait(20);
	c_sel(ra);
	c_facing("r");
	c_sel(kr);
	c_mus("free");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* C'mon^1, Kris! You gonna let him beat us!?/%", "obj_ch2_scene6_slash_Step_0_gml_662_0");
	c_talk_wait();
	c_facing("d");
	c_var_lerp_instance(hathy, "x", hathy.x, 1150, 30);
	c_var_lerp_instance(rabbick, "x", rabbick.x, 1150, 30);
	c_var_lerp_instance(blockler, "x", blockler.x, 350, 30);
	c_mus2("initloop", "castletown.ogg", 0);
	c_wait(31);
	c_actortocaterpillar();
	c_actortokris();
	c_terminatekillactors();
	global.interact = 1;
	con = 52;
}
if (con == 52 && !i_ex(obj_cutscene_master))
{
	with (hathy)
		instance_destroy();
	with (rabbick)
		instance_destroy();
	with (blockler)
		instance_destroy();
	var lancer_npc = instance_create(675, 355, obj_npc_room);
	lancer_npc.sprite_index = spr_lancer_rt;
	with (lancer_npc)
		scr_depth();
	global.interact = 0;
	if (global.plot < 12)
		global.plot = 12;
	global.facing = 0;
	con = 0;
	scr_tempsave();
}
