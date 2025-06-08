if (obj_mainchara.x > x && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	scr_losechar();
	scr_getchar(4);
	scr_makecaterpillar(0, -100, 4, 0);
	with (obj_caterpillarchara)
		visible = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = 4;
	qu_actor = instance_create(camerax() + 645, cameray() + view_hport[0] + 200, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_up;
	be = 5;
	be_actor = instance_create(camerax() + 666, cameray() + view_hport[0] + 200, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_up_dw;
	c_sel(no);
	no_actor.sprite_index = noellemarker.sprite_index;
	c_setxy(noellemarker.x, noellemarker.y);
}
if (con == 1)
{
	con = 2;
	c_mus2("volume", 0, 30);
	c_sel(kr);
	c_walkdirect(210, 222, 15);
	c_delayfacing(16, "r");
	c_sel(no);
	c_pannable(1);
	c_panspeed_wait(5, 0, 18);
	c_var_instance(noellemarker, "visible", 0);
	c_mus("free_all");
	c_facing("l");
	c_emote("!", 30, 15);
	c_wait(30);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EF* K-Kris!^1! What are you---/", "obj_ch2_city01_slash_Step_0_gml_58_0");
	c_facenext("queen", 1);
	c_msgnextloc("\\E1* Oh Noelle Sweetie/%", "obj_ch2_city01_slash_Step_0_gml_60_0");
	c_talk_wait();
	c_emote("!", 30, 15);
	c_facing("r");
	c_wait(30);
	c_walk_wait("u", 10, 10);
	c_sprite(spr_cutscene_city01_noelle_mouth_cover);
	c_autodepth(0);
	c_depth(950000);
	c_msgside("bottom");
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* (Don't let her find me...)/%", "obj_ch2_city01_slash_Step_0_gml_76_0");
	c_talk_wait();
	c_sel(qu);
	c_walkdirect_wait(645, 173, 40);
	c_mus2("initloop", "queen.ogg", 0);
	c_speaker("queen");
	c_msgsetloc(0, "\\EI* Noelle Sweetie Darling Honey Where Are You/%", "obj_ch2_city01_slash_Step_0_gml_85_0");
	c_talk_wait();
	c_soundplay(snd_queen_laugh_0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\EC* We're A Team Now Remember/", "obj_ch2_city01_slash_Step_0_gml_94_0");
	c_msgnextloc("* You Still Have To Be My Willing Minion/%", "obj_ch2_city01_slash_Step_0_gml_95_0");
	c_talk_wait();
	c_wait(10);
	c_autowalk(1);
	c_walk_wait("l", 10, 8);
	c_emote("!", 30, 20);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* ..^1. Kris/", "obj_ch2_city01_slash_Step_0_gml_107_0");
	c_msgnextloc("\\E1* It Appears/", "obj_ch2_city01_slash_Step_0_gml_108_0");
	c_msgnextloc("\\EB* Our Comrades Have Pressed The Escape Key On Us/", "obj_ch2_city01_slash_Step_0_gml_109_0");
	c_msgnextloc("\\E5* ...^1. So It Has Come To This.../", "obj_ch2_city01_slash_Step_0_gml_110_0");
	c_msgnextloc("\\E5* In Order To Find Our Teams/", "obj_ch2_city01_slash_Step_0_gml_111_0");
	c_msgnextloc("\\E4* .../", "obj_ch2_city01_slash_Step_0_gml_112_0");
	c_msgnextloc("\\E9* We Must Form An Uneasy Truce.../%", "obj_ch2_city01_slash_Step_0_gml_113_0");
	c_talk_wait();
	c_emote("!", 30, 25);
	c_sprite(spr_cutscene_city01_queen_shocked);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* Queen!^1! My splendid Queen!^1! Where are you!!/", "obj_ch2_city01_slash_Step_0_gml_120_0");
	c_facenext("queen", 8);
	c_msgnextloc("\\E8* Oh No Don't Let Him Find Me/%", "obj_ch2_city01_slash_Step_0_gml_122_0");
	c_talk_wait();
	c_walkdirect_wait(300, 173, 15);
	c_autowalk(0);
	c_sprite(spr_cutscene_city01_queen_stealth);
	c_soundplay(snd_jump);
	c_jump(320, 48, 20, 15);
	c_wait(13);
	c_sel(no);
	c_sprite(spr_cutscene_city01_noelle_shocked);
	c_sel(be);
	c_walkdirect_wait(666, 215, 48);
	c_walkdirect_wait(535, 215, 20);
	c_facing("l");
	c_wait(10);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E0* Ah^1, Kris..^1. NOT the lifeform I was looking for./", "obj_ch2_city01_slash_Step_0_gml_146_0");
	c_msgnextloc("\\E3* ..^1. Hmm? Where's the rest of the C+ Squad?/", "obj_ch2_city01_slash_Step_0_gml_147_0");
	c_msgnextloc("\\E7* Don't tell me you got abandoned!? HA!!/", "obj_ch2_city01_slash_Step_0_gml_148_0");
	c_msgnextloc("\\E2* HAHA!^1! That's what you get for trusting Susie!^1! HA!!/%", "obj_ch2_city01_slash_Step_0_gml_149_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_cutscene_17_berdly_shocked);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* H..^1. Huh? Noelle? Queen?/%", "obj_ch2_city01_slash_Step_0_gml_157_0");
	c_talk_wait();
	c_sprite(spr_cutscene_17_berdly_angry);
	c_flip("x");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EB* They're just..^1. busy retro gaming somewhere!!/%", "obj_ch2_city01_slash_Step_0_gml_165_0");
	c_talk_wait();
	c_flip("x");
	c_autowalk(0);
	c_sprite(spr_berdly_smug_point_animated);
	c_imageindex(0);
	c_imagespeed(0.1);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* I bet they're waiting for me on the player select screen!!/", "obj_ch2_city01_slash_Step_0_gml_176_0");
	c_msgnextloc("\\E2* Listening to strangely groovy music!^1! HAHA^1! HA!^1! HA!!/", "obj_ch2_city01_slash_Step_0_gml_177_0");
	c_msgnextloc("\\E8* .../%", "obj_ch2_city01_slash_Step_0_gml_178_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("u");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* ...Sigh./%", "obj_ch2_city01_slash_Step_0_gml_186_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EA* So it's come to this./", "obj_ch2_city01_slash_Step_0_gml_193_0");
	c_msgnextloc("\\E9* In order to find our respective teams.../", "obj_ch2_city01_slash_Step_0_gml_194_0");
	c_msgnextloc("\\E0* It APPEARS.../", "obj_ch2_city01_slash_Step_0_gml_195_0");
	c_msgnextloc("\\EJ* We must form an uneasy truce.../%", "obj_ch2_city01_slash_Step_0_gml_196_0");
	c_talk_wait();
	c_sel(qu);
	c_sprite(spr_cutscene_city01_queen_stealth_mad);
	c_speaker("queen");
	c_msgsetloc(0, "\\E8* What The/", "obj_ch2_city01_slash_Step_0_gml_204_0");
	c_msgnextloc("\\EH* Who The Beep Said You Could Double Trucies/%", "obj_ch2_city01_slash_Step_0_gml_205_0");
	c_talk_wait();
	c_wait(30);
	c_sel(be);
	c_facing("u");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Huh? Did you hear something?/%", "obj_ch2_city01_slash_Step_0_gml_216_0");
	c_talk_wait();
	c_wait(30);
	c_sel(qu);
	c_sprite(spr_cutscene_city01_queen_stealth);
	c_speaker("queen");
	c_msgsetloc(0, "\\EC* Honk Honk No It's Just The Sounds Of The City/", "obj_ch2_city01_slash_Step_0_gml_227_0");
	c_facenext("berdly", "I");
	c_msgnextloc("\\EI* Oh okay./%", "obj_ch2_city01_slash_Step_0_gml_229_0");
	c_talk_wait();
	c_sel(be);
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* Hmph. Well I'll be ahead. Don't be LATE!!!/%", "obj_ch2_city01_slash_Step_0_gml_237_0");
	c_talk_wait();
	c_walkdirect_wait(666, 215, 15);
	c_walkdirect_wait(666, cameray() + view_hport[0] + 200, 30);
	c_wait(15);
	c_sel(no);
	c_sprite(spr_cutscene_city01_noelle_mouth_cover);
	c_sel(qu);
	c_autowalk(0);
	c_jump(470, 171, 20, 10);
	c_soundplay(snd_jump);
	c_wait(10);
	c_autowalk(1);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Kris As Part Of Our Truce (The Better One)/", "obj_ch2_city01_slash_Step_0_gml_258_0");
	c_msgnextloc("\\ED* Keep Distracting Berdly And Find Noelle/", "obj_ch2_city01_slash_Step_0_gml_259_0");
	c_msgnextloc("\\E4* For You See.../%", "obj_ch2_city01_slash_Step_0_gml_260_0");
	c_talk_wait();
	c_autowalk(1);
	c_walk_wait("r", 8, 5);
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\E5* Berdly..^1. He's.../%", "obj_ch2_city01_slash_Step_0_gml_269_0");
	c_talk_wait();
	c_wait(30);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* OK There's Nothing Wrong With Him He's Just Annoying/%", "obj_ch2_city01_slash_Step_0_gml_279_0");
	c_talk_wait();
	c_walk("r", 14, 10);
	c_delaywalk(11, "d", 15, 30);
	c_mus2("volume", 0, 40);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Toodles/%", "obj_ch2_city01_slash_Step_0_gml_289_0");
	c_talk_wait();
	c_wait(30);
	c_sel(no);
	c_autodepth(1);
	c_walk_wait("d", 5, 20);
	c_walk("l", 3, 33);
	c_panobj(kr_actor, 33);
	c_wait(50);
	c_pannable(0);
	c_msc(1065);
	c_talk_wait();
}
if (con == 20)
{
	con = 21;
	c_mus2("initplay", "charjoined.ogg", 0);
	c_speaker("no_name");
	c_msgsetloc(0, "* (Noelle joined the party!)/%", "obj_ch2_city01_slash_Step_0_gml_313_0");
	c_talk_wait();
}
if (con == 21 && !d_ex())
{
	con = 50;
	c_mus("free_all");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.plot = 70;
	global.interact = 0;
	global.facing = 0;
	snd_free_all();
	var savepoint = instance_create(360, 185, obj_savepoint);
	savepoint.depth = alleyoverlay.depth - 100;
	scr_tempsave();
	noellejoin = true;
}
if (noellejoin)
{
	if (leaveleftattempt == 0 && obj_mainchara.x < 40)
	{
		leavecon = 10;
		leaveleftattempt = 1;
	}
	if (leaverightattempt == 0 && obj_mainchara.x > 520)
	{
		leaverightattempt = 1;
		leavecon = 20;
	}
	if (leavecon == 10)
	{
		leavecon = 30;
		global.interact = 1;
		global.facing = 1;
		obj_mainchara.x += 4;
		with (obj_caterpillarchara)
			scr_caterpillar_interpolate();
		scr_speaker("noelle");
		msgsetloc(0, "\\E2* K..^1. Kris...? Isn't that the wrong way...?/", "obj_ch2_city01_slash_Step_0_gml_375_0");
		msgnextloc("\\E8* (Somehow I'm already regretting this...)/%", "obj_ch2_city01_slash_Step_0_gml_376_0");
		d_make();
	}
	if (leavecon == 20)
	{
		leavecon = 30;
		global.interact = 1;
		global.facing = 3;
		obj_mainchara.x -= 4;
		with (obj_caterpillarchara)
			scr_caterpillar_interpolate();
		scr_speaker("noelle");
		msgsetloc(0, "\\ES* So^1, um^1, any idea where Susie is?/", "obj_ch2_city01_slash_Step_0_gml_388_0");
		msgnextloc("\\EN* What!? WHAT!? I'm just asking!^1! It's a normal question!!/%", "obj_ch2_city01_slash_Step_0_gml_389_0");
		d_make();
	}
	if (leavecon == 30 && !d_ex())
	{
		leavecon = 0;
		global.interact = 0;
		global.facing = 0;
	}
}
