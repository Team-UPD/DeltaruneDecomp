if (obj_mainchara.x > x && con == -1)
{
	con = 1;
	global.interact = 1;
	snd_volume(global.currentsong[1], 0, 30);
}
if (con == 1)
{
	con = 2;
	with (obj_mainchara)
		visible = 0;
	global.facing = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	qu = 3;
	qu_actor = instance_create(1410, 188, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_cutscene_13_queen_drunk_left;
	c_sel(qu);
	c_flip("x");
	ar = 4;
	ar_actor = instance_create(1310, -180, obj_actor);
	scr_actor_setup(ar, ar_actor, "arcade");
	ar_actor.sprite_index = spr_cutscene_13_arcade;
	ar_actor.depthbonus = 4000;
	c_sel(ar);
	c_autowalk(0);
	st = 5;
	st_actor = instance_create(1230, -300, obj_actor);
	scr_actor_setup(st, st_actor, "statue");
	st_actor.sprite_index = spr_cutscene_13_berdly_statue;
	st_actor.depthbonus = 2000;
	c_sel(st);
	c_autowalk(0);
	be = 6;
	be_actor = instance_create(1250, -200, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_down_dw;
	cutscene_master.save_object[0] = id;
}
if (con == 2 || scr_cutscene_loaded())
{
	con = 3;
	c_soundplay(snd_queen_laugh_1);
	c_sel(no);
	c_sprite(spr_noelle_shocked_dw);
	c_emote("!", 30);
	c_wait(30);
	c_wait(15);
	c_speaker("noelle");
	c_msgsetloc(0, "\\EE* Kris^1, it's Queen..^1. She's right over there!/", "obj_ch2_scene13_slash_Step_0_gml_70_0");
	c_msgnextloc("\\E8* C-Can you distract her somehow!!?/%", "obj_ch2_scene13_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_walk("l", 7, 40);
	c_delaycmd(41, "sprite", spr_cutscene_13_noelle_box_walk_down);
	c_delaycmd4(42, "setxy", 600, 175, 0, 0);
	c_sel(kr);
	c_walkdirect(1170, 239, 20);
	c_pannable(1);
	c_panspeed_wait(10, 0, 24);
	c_wait(5);
	c_sel(qu);
	c_wait(20);
	c_flip("x");
	c_emote("!", 20);
	c_wait(30);
	c_mus2("initloop", "queen.ogg", 0);
	c_speaker("queen");
	c_msgside("bottom");
	c_msgsetloc(0, "\\ED* Oh/", "obj_ch2_scene13_slash_Step_0_gml_95_0");
	c_msgnextloc("\\EN* Lmao/", "obj_ch2_scene13_slash_Step_0_gml_96_0");
	c_msgnextloc("\\E9* You're here/%", "obj_ch2_scene13_slash_Step_0_gml_97_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_cutscene_13_queen_drunk_laugh);
	c_arg_objectxy(qu_actor, -5, 0);
	c_setxy(x, y);
	c_soundplay(snd_queen_hoot_0);
	c_imagespeed(0);
	c_wait(15);
	c_imagespeed(0);
	c_wait(15);
	c_sprite(spr_cutscene_13_queen_drunk_left);
	c_arg_objectxy(qu_actor, 5, 0);
	c_setxy(x, y);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Sorry Kris While I've Been Looking For Noelle/", "obj_ch2_scene13_slash_Step_0_gml_119_0");
	c_msgnextloc("\\E9* I've Had Like 4 Of These All-Ages Appropriate/%", "obj_ch2_scene13_slash_Step_0_gml_120_0");
	c_talk_wait();
	c_sprite(spr_cutscene_13_queen_drunk_down_2);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Glasses of Pure Battery Acid/%", "obj_ch2_scene13_slash_Step_0_gml_126_0");
	c_talk_wait();
	c_soundplay(snd_queen_laugh_0);
	c_sprite(spr_cutscene_13_queen_drunk_smash);
	c_arg_objectxy(qu_actor, -70, -30);
	c_setxy(x, y);
	c_imagespeed(1);
	c_wait(30);
	c_wait(8);
	c_soundplay(snd_locker);
	c_wait(5);
	c_sprite(spr_cutscene_13_queen_drunk_smash_frame);
	c_var_instance(id, "wineglasscon", 1);
	c_imagespeed(0);
	c_wait(30);
	c_soundplay(snd_queen_laugh_1);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imagespeed(0.25);
	c_arg_objectxy(qu_actor, 70, 30);
	c_setxy(x, y);
	c_wait(55);
	c_imagespeed(0);
	c_wait(15);
	c_sprite(spr_queen_left);
	c_flip("x");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Don't Worry That Was My Throwing Glass It's Safe/%", "obj_ch2_scene13_slash_Step_0_gml_162_0");
	c_talk_wait();
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Look Kris/%", "obj_ch2_scene13_slash_Step_0_gml_169_0");
	c_talk_wait();
	c_flip("x");
	c_autowalk(1);
	c_walkdirect(obj_mainchara.x + 315, 188, 15);
	c_speaker("queen");
	c_msgsetloc(0, "\\E9* Kris Cross Applesauce/%", "obj_ch2_scene13_slash_Step_0_gml_177_0");
	c_talk();
	c_wait(4);
	c_soundplay_x(snd_noise, 0.5, 7);
	c_soundplay_x(snd_glass_crunch, 0.35, 2.5);
	c_wait(8);
	c_soundplay_x(snd_noise, 0.5, 7);
	c_soundplay_x(snd_glass_crunch, 0.35, 2);
	c_wait(1);
	c_waittalk();
	c_sprite(spr_queen_down);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Now That We Are Trucies I Feel Like We Are On The Same/%", "obj_ch2_scene13_slash_Step_0_gml_185_0");
	c_talk_wait();
	c_walkdirect(obj_mainchara.x + 200, 188, 30);
	c_wait(4);
	c_soundplay_x(snd_noise, 0.5, 7);
	c_soundplay_x(snd_glass_crunch, 0.25, 2.2);
	c_wait(8);
	c_soundplay_x(snd_noise, 0.5, 7);
	c_soundplay_x(snd_glass_crunch, 0.35, 1);
	c_wait(8);
	c_soundplay_x(snd_noise, 0.5, 7);
	c_soundplay_x(snd_glass_crunch, 0.25, 1.8);
	c_wait(10);
	c_waittalk();
	c_speaker("queen");
	c_msgsetloc(0, "\\E9* Mathematical Wavelength/%", "obj_ch2_scene13_slash_Step_0_gml_194_0");
	c_talk_wait();
	c_walkdirect_wait(obj_mainchara.x + 164, 188, 20);
	c_wait(1);
	c_sel(kr);
	c_visible(0);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_13_queen_hand);
	c_soundplay(snd_whip_crack_only);
	c_arg_objectxy(qu_actor, -45, -15);
	c_setxy(x, y);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* You Get Me Kris/%", "obj_ch2_scene13_slash_Step_0_gml_211_0");
	c_talk();
	c_wait(15);
	c_waittalk();
	c_sprite(spr_cutscene_13_queen_hand_2);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* You Do Not Do Crazy Things Like \"Have Opinions\"/", "obj_ch2_scene13_slash_Step_0_gml_219_0");
	c_msgnextloc("\\EB* Or Scream When I Capture You/%", "obj_ch2_scene13_slash_Step_0_gml_220_0");
	c_talk_wait();
	c_sprite(spr_cutscene_13_queen_hand_3);
	c_speaker("queen");
	c_msgsetloc(0, "\\E9* Or Tell Me Horrible Plans For Smartboy Theme Park/%", "obj_ch2_scene13_slash_Step_0_gml_226_0");
	c_talk_wait();
	c_sprite(spr_cutscene_13_queen_hand_down);
	c_shakeobj();
	c_speaker("queen");
	c_msgsetloc(0, "\\E5* I Just Cannot Compute It/", "obj_ch2_scene13_slash_Step_0_gml_233_0");
	c_msgnextloc("\\E5* Why Everyone Else Is So..^1. Ungrateful/%", "obj_ch2_scene13_slash_Step_0_gml_234_0");
	c_talk_wait();
	c_sel(kr);
	c_visible(1);
	c_sel(qu);
	c_sprite(spr_queen_right);
	c_setxy(obj_mainchara.x + 150, 188);
	c_autowalk(1);
	c_walkdirect_wait(obj_mainchara.x + 190, 188, 5);
	c_wait(5);
	c_autowalk(0);
	c_setxy(obj_mainchara.x + 180, 152);
	c_imagespeed(0);
	c_sprite(spr_cutscene_13_queen_drunk_smash);
	c_imageindex(6);
	c_soundplay(snd_queen_hoot_0);
	c_flip("x");
	c_wait(1);
	c_soundplay(snd_queen_pirouette);
	c_shakeobj();
	c_wait(15);
	c_imagespeed(1);
	c_wait(15);
	c_soundplay(snd_badexplosion);
	c_var_instance(id, "wineglasscon", -1);
	c_var_instance(glassexplosion, "x", 1340);
	c_var_instance(glassexplosion, "y", 295);
	c_var_instance(glassexplosion, "visible", 1);
	c_var_instance(glassexplosion, "image_index", 0);
	c_wait(5);
	c_imagespeed(0);
	c_sprite(spr_cutscene_13_queen_drunk_smash_frame);
	c_imagespeed(0);
	c_wait(5);
	c_var_instance(glassexplosion, "visible", 0);
	c_wait(50);
	c_autowalk(0);
	c_flip("x");
	c_setxy(obj_mainchara.x + 220, 188);
	c_facing("r");
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Whoops That Was My Extra Dangerous Glass/%", "obj_ch2_scene13_slash_Step_0_gml_284_0");
	c_talk_wait();
	c_wait(30);
	c_facing("d");
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Kris/%", "obj_ch2_scene13_slash_Step_0_gml_292_0");
	c_talk_wait();
	c_sprite(spr_queen_right);
	c_speaker("queen");
	c_msgsetloc(0, "\\EP* I Just Want To Make Everyone Smile/%", "obj_ch2_scene13_slash_Step_0_gml_298_0");
	c_talk_wait();
	c_autowalk(1);
	c_walkdirect(obj_mainchara.x + 350, 188, 30);
	c_speaker("queen");
	c_msgsetloc(0, "\\E9* And If I Become An Evil Villain To Accomplish That/%", "obj_ch2_scene13_slash_Step_0_gml_305_0");
	c_talk();
	c_wait(30);
	c_waittalk();
	c_wait(20);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Is That Bad?/%", "obj_ch2_scene13_slash_Step_0_gml_313_0");
	c_talk_wait();
	c_facing("u");
	c_wait(40);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* It's Okay/", "obj_ch2_scene13_slash_Step_0_gml_320_0");
	c_msgnextloc("\\E1* You Do Not Have To Answer/%", "obj_ch2_scene13_slash_Step_0_gml_321_0");
	c_talk_wait();
	c_wait(1);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_soundplay(snd_queen_laugh_0);
	c_imagespeed(0.3);
	c_wait(30);
	c_imagespeed(0);
	c_wait(15);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* You Would Be Wrong/%", "obj_ch2_scene13_slash_Step_0_gml_337_0");
	c_talk_wait();
	c_sprite(spr_queen_left);
	c_speaker("queen");
	c_msgsetloc(0, "\\E5* But Kris..^1. While We're Still Trucies/", "obj_ch2_scene13_slash_Step_0_gml_343_0");
	c_msgnextloc("\\ED* Maybe We Could..^1. Make The Most Of It/%", "obj_ch2_scene13_slash_Step_0_gml_344_0");
	c_talk_wait();
	c_sel(ar);
	c_soundplay(snd_spearrise);
	c_walkdirect_wait(1310, 250, 20);
	c_soundplay(snd_impact);
	c_shakeobj();
	c_delaycmd(15, "sprite", spr_cutscene_13_arcade_face);
	c_sel(kr);
	c_facing("u");
	c_sel(qu);
	c_facing("u");
	c_flip("x");
	c_wait(15);
	c_soundplay(snd_item);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* We Could Play That Game Again/", "obj_ch2_scene13_slash_Step_0_gml_365_0");
	c_msgnextloc("\\E9* Wasn't That..^1. Fun^1, Kris/%", "obj_ch2_scene13_slash_Step_0_gml_366_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect(1255, 218, 40);
	c_sel(qu);
	c_autowalk(1);
	c_flip("x");
	c_walkdirect_wait(1330, 166, 40);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Just You And Me/%", "obj_ch2_scene13_slash_Step_0_gml_379_0");
	c_talk();
	c_wait(30);
	c_waittalk();
	c_speaker("queen");
	c_msgsetloc(0, "\\EQ* Having A Good Time/", "obj_ch2_scene13_slash_Step_0_gml_385_0");
	c_msgnextloc("\\ED* No One Else To Get In The Way/%", "obj_ch2_scene13_slash_Step_0_gml_386_0");
	c_talk_wait();
	c_sel(st);
	c_walkdirect(1232, 30, 15);
	c_wait(8);
	c_sel(kr);
	c_facing("u");
	c_autowalk(0);
	c_sel(qu);
	c_facing("u");
	c_flip("x");
	c_autowalk(0);
	c_sel(ar);
	c_var_lerp("image_yscale", 2, 0, 6);
	c_var_lerp("image_xscale", 2, 6, 6);
	c_soundplay(snd_splat);
	c_wait(25);
	c_sel(kr);
	c_shakeobj();
	c_sel(qu);
	c_shakeobj();
	c_soundplay(snd_badexplosion);
	c_wait(5);
	c_sel(kr);
	c_walkdirect(1180, 238, 2);
	c_sel(qu);
	c_walkdirect(1450, 186, 2);
	c_waitcustom();
}
if (wineglasscon == 1)
{
	glass_marker = scr_dark_marker(qu_actor.x, qu_actor.y + 6, spr_cutscene_13_broken_glass);
	glass_marker.depth = qu_actor.depth + 500;
	wineglasscon = 0;
}
else if (wineglasscon == -1)
{
	for (var i = 0; i < 6; i++)
	{
		var _xoff = (sin(0.5235987755982988 * i) * 50) + 10;
		var _yoff = cos(0.5235987755982988 * i) * -15;
		var _shard = instance_create(glass_marker.x + _xoff, glass_marker.y + 142 + _yoff, obj_particle_effect);
		_shard.destroyoffscreen = true;
		_shard.sprite_index = spr_cutscene_13_broken_shards;
		_shard.image_speed = 0;
		_shard.image_index = i;
		_shard.direction = point_direction(glass_marker.x, glass_marker.y + 142, _shard.x, _shard.y);
		_shard.image_xscale = 2;
		_shard.image_yscale = 2;
		_shard.gravity = 1;
		_shard.speed = random_range(25, 35);
		_shard.rotation = choose(-90, 90);
	}
	instance_destroy(glass_marker);
	wineglasscon = 0;
}
if (con == 3 && customcon == 1)
{
	explodetimer++;
	if (explodetimer == 1)
	{
		for (var i = 0; i < 6; i++)
		{
			explosion_marker[i] = instance_create(1220 + (i * 40), 250, obj_marker);
			explosion_marker[i].depth = st_actor.depth - 5;
			explosion_marker[i].sprite_index = spr_realisticexplosion;
		}
	}
	else
	{
		with (obj_marker)
		{
			if (sprite_index == spr_realisticexplosion && image_index == 16)
				instance_destroy();
		}
	}
	if (explodetimer >= 17)
	{
		con = 4;
		customcon = 0;
		c_waitcustom_end();
	}
}
if (con == 4)
{
	con = 5;
	c_wait(45);
	c_sel(be);
	c_soundplay(snd_fall);
	c_spin(2);
	c_autowalk(0);
	c_walkdirect(1230, 230, 60);
	c_wait(45);
	c_sel(kr);
	c_facing("r");
	c_sel(qu);
	c_flip("x");
	c_facing("l");
	c_sel(be);
	c_wait(16);
	c_spin(0);
	c_facing("r");
	c_soundplay(snd_bell);
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* Queen!^1! I've been looking everywhere to show you this!!/%", "obj_ch2_scene13_slash_Step_0_gml_498_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_cross_arms_right);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EJ* A monument to our greatness..^1. Together./", "obj_ch2_scene13_slash_Step_0_gml_507_0");
	c_facenext("queen", "I");
	c_msgnextloc("\\EI* Oh/%", "obj_ch2_scene13_slash_Step_0_gml_510_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("u");
	c_flip("x");
	c_facenext("queen", "I");
	c_msgsetloc(0, "* Um/%", "obj_ch2_scene13_slash_Step_0_gml_518_0");
	c_talk_wait();
	c_facing("l");
	c_flip("x");
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Oh%%", "obj_ch2_scene13_slash_Step_0_gml_525_0");
	c_talk_wait();
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Uh%%", "obj_ch2_scene13_slash_Step_0_gml_529_0");
	c_talk_wait();
	c_facing("u");
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* It%%", "obj_ch2_scene13_slash_Step_0_gml_535_0");
	c_talk_wait();
	c_facing("l");
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* It's%%", "obj_ch2_scene13_slash_Step_0_gml_541_0");
	c_talk_wait();
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Oh%%", "obj_ch2_scene13_slash_Step_0_gml_545_0");
	c_talk_wait();
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Well%%", "obj_ch2_scene13_slash_Step_0_gml_549_0");
	c_talk_wait();
	c_facing("u");
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Um%%", "obj_ch2_scene13_slash_Step_0_gml_555_0");
	c_talk_wait();
	c_facing("l");
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* Mmm%%", "obj_ch2_scene13_slash_Step_0_gml_561_0");
	c_talk_wait();
	c_facenext("queen", "I");
	c_msgsetloc(0, "\\s0* It's%%", "obj_ch2_scene13_slash_Step_0_gml_565_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* How Do I Put This/", "obj_ch2_scene13_slash_Step_0_gml_571_0");
	c_msgnextloc("\\E1* Very.../", "obj_ch2_scene13_slash_Step_0_gml_572_0");
	c_msgnextloc("\\ED* .../%", "obj_ch2_scene13_slash_Step_0_gml_573_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\EK* Smart/", "obj_ch2_scene13_slash_Step_0_gml_581_0");
	c_msgnextloc("\\EK* So Smart You Are/", "obj_ch2_scene13_slash_Step_0_gml_582_0");
	c_msgnextloc("\\EK* I Love Tolerating You/%", "obj_ch2_scene13_slash_Step_0_gml_583_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_smug_point_right);
	c_shakeobj();
	c_speaker("berdly");
	c_msgsetloc(0, "\\EL* Haha!^1! I KNEW you'd be enamored. Such perfect taste./%", "obj_ch2_scene13_slash_Step_0_gml_592_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("u");
	c_flip("x");
	c_speaker("queen");
	c_msgsetloc(0, "\\EK* Very Cool Statues/", "obj_ch2_scene13_slash_Step_0_gml_601_0");
	c_msgnextloc("\\ED* I Did Not Know You Had..^1. Nipples/%", "obj_ch2_scene13_slash_Step_0_gml_602_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_cross_arms_right);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* Haha..^1. I will SOON..^1. in our IDEAL WORLD./%", "obj_ch2_scene13_slash_Step_0_gml_610_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EE* Kris^1, feel free to admire our artisanship./%", "obj_ch2_scene13_slash_Step_0_gml_617_0");
	c_talk_wait();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E1* Queen and I have PLANs to consider./", "obj_ch2_scene13_slash_Step_0_gml_621_0");
	c_sel(qu);
	c_flip("x");
	c_facing("l");
	c_facenext("queen", "1");
	c_msgnextloc("\\E1* Haha Yes Oooh So Good Looking Forward To That/%", "obj_ch2_scene13_slash_Step_0_gml_628_0");
	c_talk_wait();
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* MMmmm Yum Yum Yum Yum Yum/%", "obj_ch2_scene13_slash_Step_0_gml_632_0");
	c_talk_wait();
	c_facing("r");
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Let's Go Burghley/%", "obj_ch2_scene13_slash_Step_0_gml_638_0");
	c_talk_wait();
	c_sel(be);
	c_facing("r");
	c_autowalk(1);
	c_walk("r", 10, 50);
	c_sel(qu);
	c_autowalk(1);
	c_walk("r", 3, 45);
	c_wait(45);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_queen_walk_right);
	c_imagespeed(0.2);
	c_speaker("queen");
	c_msgsetloc(0, "\\EK* Keep Going I Am Right Behind You/%", "obj_ch2_scene13_slash_Step_0_gml_662_0");
	c_talk_wait();
	c_imagespeed(0.1);
	c_walkdirect_wait(1500, 186, 10);
	c_msgsetloc(0, "\\E1* Procedurally Lowering The Volume Of My Voice/%", "obj_ch2_scene13_slash_Step_0_gml_668_0");
	c_talk_wait();
	c_imagespeed(0);
	c_wait(30);
	c_autowalk(1);
	c_walkdirect_wait(obj_mainchara.x + 200, 186, 15);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Sorry Kris I Must Alt Tab Out Of Here/%", "obj_ch2_scene13_slash_Step_0_gml_678_0");
	c_talk_wait();
	c_walkdirect(320, 186, 60);
	c_delaywalk(71, "u", 8, 120);
	c_panobj(no_actor, 60);
	c_wait(40);
	c_mus2("volume", 0, 30);
	c_msgzurasu(1);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Wow Cool Face/%", "obj_ch2_scene13_slash_Step_0_gml_694_0");
	c_talk_wait();
	c_sel(no);
	c_wait(1);
	c_autowalk(0);
	c_sprite(spr_cutscene_13_noelle_box_walk_right);
	c_imagespeed(0.25);
	c_walkdirect(kr_actor.x - 210, 218, 60);
	c_delaycmd(56, "imagespeed", 0);
	c_sel(kr);
	c_autowalk(1);
	c_walkdirect(no_actor.x + 500, 233, 60);
	c_panspeed_wait(10, 0, 55);
	c_wait(15);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E3* Phew.../", "obj_ch2_scene13_slash_Step_0_gml_723_0");
	c_msgnextloc("\\E2* Looks like my disguise worked./%", "obj_ch2_scene13_slash_Step_0_gml_724_0");
	c_talk_wait();
	c_sel(no);
	c_sprite(spr_cutscene_13_noelle_box_remove);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_wait(35);
	c_imagespeed(0);
	c_wait(5);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* It's silly looking^1, but it beats hiding.../%", "obj_ch2_scene13_slash_Step_0_gml_746_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_cutscene_13_noelle_box_wear);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_wait(35);
	c_imagespeed(0);
	c_sprite(spr_cutscene_13_noelle_box_walk_down);
	c_arg_objectxy(no_actor, 0, -2);
	c_setxy(x, y);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* Let's get going^1, Kris!/%", "obj_ch2_scene13_slash_Step_0_gml_763_0");
	c_talk_wait();
	c_setxy(970, 216);
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_sel(kr);
	c_facing("d");
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 5 && !i_ex(obj_cutscene_master))
{
	con = 50;
	global.interact = 0;
	global.facing = 0;
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = 55;
	global.interact = 0;
	global.facing = 0;
	statuenpc.visible = 1;
	noellebox.visible = 1;
	with (obj_caterpillarchara)
		visible = 0;
	snd_free_all();
	alarm[1] = 1;
}
if (con == 55 && !noellelost && (obj_mainchara.x != 1100 || obj_mainchara.y != 233))
{
	noellebox.image_speed = 0.25;
	noellelost = true;
}
if (con == 20)
{
	with (obj_actor)
		scr_depth();
	con = 21;
	global.facing = (obj_mainchara.x < noellebox.x) ? 1 : 3;
	cutscene_master = scr_cutscene_make();
	no = 3;
	no_actor = instance_create(1222, 218, obj_actor);
	scr_actor_setup(no, no_actor, "noelle");
	no_actor.sprite_index = spr_cutscene_13_noelle_trip_1;
	c_soundplay_x(snd_wing, 1, 0.8);
	c_sel(no);
	c_autodepth(0);
	c_depth(97300);
	c_autowalk(0);
	c_wait(5);
	c_sprite(spr_cutscene_13_noelle_trip_2);
	c_waitcustom();
	noellebox.visible = 0;
}
if (con == 21 && customcon == 1 && !d_ex() && global.interact == 0)
{
	con = 60;
	global.interact = 1;
	c_waitcustom_end();
	c_imagespeed(0.25);
	c_wait(25);
	c_imagespeed(0);
	c_wait(30);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E8* Just realized..^1. I can't see anything..^1. haha.../%", "obj_ch2_scene13_slash_Step_0_gml_859_0");
	c_talk_wait();
	c_autodepth(0);
	c_sprite(spr_cutscene_13_noelle_box_walk_down);
	if (obj_mainchara.y > 165)
		c_depth(800000);
	c_sprite(spr_cutscene_13_noelle_box_remove);
	c_setxy(1202, 145);
	c_wait(5);
	c_autodepth(0);
	c_autowalk(0);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_wait(33);
	c_imagespeed(0);
	c_autodepth(1);
	c_autowalk(1);
	c_sprite(spr_noelle_walk_down_dw);
	c_arg_objectxy(no_actor, 2, 0);
	c_setxy(x, y);
	c_speaker("noelle");
	c_msgsetloc(0, "\\E4* Guess I'll try not to wear it unless I have to./", "obj_ch2_scene13_slash_Step_0_gml_878_0");
	c_msgnextloc("\\ET* OK^1, let's go for real this time!!/%", "obj_ch2_scene13_slash_Step_0_gml_879_0");
	c_talk_wait();
	c_autodepth(1);
	c_actormoveparty(30);
	c_wait(30);
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	with (obj_caterpillarchara)
		scr_caterpillar_interpolate();
	global.interact = 0;
	global.facing = 0;
	con = 0;
	global.plot = 75;
	with (obj_caterpillarchara)
		visible = 1;
}
if (noellelost == true)
{
	with (noellebox)
		scr_depth();
	noellebox.x = scr_movetowards(noellebox.x, 1240, 5);
	noellebox.y = scr_movetowards(noellebox.y, 159, 2);
	if (noellebox.x >= 1215)
	{
		noellelost = false;
		con = 20;
	}
}
