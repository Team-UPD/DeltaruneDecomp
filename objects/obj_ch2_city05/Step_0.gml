if (con == 1.1)
	con = 1.2;
if (obj_mainchara.x > 450 && con == -1)
{
	con = 1.1;
	global.interact = 1;
	global.facing = 1;
}
if (con == 1.2)
{
	con = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	sp = 2;
	sp_actor = instance_create(camerax() + 1000, 120, obj_actor);
	scr_actor_setup(sp, sp_actor, "spamton");
	sp_actor.sprite_index = spr_cutscene_14_spamton;
	du = 3;
	du_actor = scr_dark_marker(560, 106, spr_cutscene_14_dumpster_1_closed);
	scr_actor_setup_nofacing(du, du_actor, "dumpster");
	c_sel(du);
	c_autodepth(0);
	c_depth(6000);
	c_visible(1);
	dumpster.visible = 0;
	cutscene_master.save_object[0] = id;
	c_sel(sp);
	c_autowalk(0);
	c_imagespeed(0);
}
if (con == 1 || scr_cutscene_loaded())
{
	con = 2;
	c_soundplay(snd_locker);
	c_sel(du);
	c_sprite(spr_alley_dumpster_empty);
	c_autodepth(0);
	c_depth(sp_actor.depth + 100);
	c_shakeobj();
	c_var_instance(id, "open_dumpster", true);
	c_sel(sp);
	c_setxy(615, 165);
	c_flip("x");
	c_wait(60);
	c_walk_wait("u", 2, 30);
	if (!shortened)
	{
		c_wait(20);
		c_var_instance(id, "play_intro", true);
		c_msgside("bottom");
		c_speaker("spamton");
		c_msgsetloc(0, "* HEY      EVERY     !^1! IT'S ME!!!/%", "obj_ch2_city05_slash_Step_0_gml_64_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_laugh_left);
		c_imagespeed(0);
		c_speaker("spamton");
		c_msgsetloc(0, "* EV3RY  BUDDY  'S FAVORITE [[Number 1 Rated Salesman1997]]/%", "obj_ch2_city05_slash_Step_0_gml_71_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton);
		c_speaker("spamton");
		c_msgsetloc(0, "\\s0* SPAMT%%", "obj_ch2_city05_slash_Step_0_gml_77_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_laugh_left);
		c_shakeobj();
		c_speaker("spamton");
		c_msgsetloc(0, "* SPAMTON G. SPAMTON!!/%", "obj_ch2_city05_slash_Step_0_gml_85_0");
		c_talk_wait();
	}
	c_mus2("initloop", "spamton_laugh_noise.ogg", 0);
	c_autowalk(0);
	c_sprite(spr_cutscene_14_spamton_laugh_left);
	c_imagespeed(0.25);
	c_wait(45);
	c_mus("stop");
	if (shortened)
	{
		c_flip("x");
		c_sel(du);
		c_depth(980000);
		c_sel(sp);
		c_autodepth(0);
		c_depth(0);
		c_sprite(spr_spamton_jump_air);
		c_jump(obj_mainchara.x + 40, obj_mainchara.y, 20, 10);
		c_wait(10);
		c_sprite(spr_cutscene_14_spamton);
		c_pannable(1);
		c_waitcustom();
	}
	else
	{
		c_var_instance(id, "stop_intro", true);
		c_sprite(spr_cutscene_14_spamton);
		c_wait(30);
		c_flip("x");
		c_wait(5);
		c_emote("!", 20, 24);
		c_wait(20);
		c_speaker("spamton");
		c_msgsetloc(0, "* WOAH!^1! IF IT ISN\"T A.../%", "obj_ch2_city05_slash_Step_0_gml_114_0");
		c_talk_wait();
		c_sel(du);
		c_depth(980000);
		c_sel(sp);
		c_autodepth(0);
		c_depth(0);
		c_sprite(spr_spamton_jump_air);
		c_jump(obj_mainchara.x + 40, 203, 20, 10);
		c_wait(10);
		c_sprite(spr_cutscene_14_spamton);
		c_mus("free_all");
		c_mus2("initloop", "spamton_meeting.ogg", 0);
		c_sel(kr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("l", 10, 7.5);
		c_var_lerp("y", obj_mainchara.y, 200, 7.5);
		c_wait(15);
		c_imagespeed(0);
		c_wait(15);
		c_sel(sp);
		c_sprite(spr_cutscene_14_spamton_laugh_left);
		c_var("siner_add0", 0.1);
		c_var_lerp("siner_amplitude0", 0, 10, 20);
		c_speaker("spamton");
		c_msgsetloc(0, "* LIGHT nER^1! HEY-HE Y HEY!!!/%", "obj_ch2_city05_slash_Step_0_gml_149_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton);
		c_var("siner_add0", 0);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* LOOKS LIKE YOU'RE [[All Alone On A Late Night?]]/%", "obj_ch2_city05_slash_Step_0_gml_158_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_hands);
		c_var("siner_add0", 0.2);
		c_speaker("spamton");
		c_msgsetloc(0, "* ALL YOUR FRIENDS^1, [[Abandoned you for the slime]] YOU ARE?/%", "obj_ch2_city05_slash_Step_0_gml_165_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_hands_look_down);
		c_var("siner_add0", 0.4);
		c_speaker("spamton");
		c_msgsetloc(0, "* SALES^1, GONE DOWN THE [[Drain]] [[Drain]]??/%", "obj_ch2_city05_slash_Step_0_gml_172_0");
		c_talk_wait();
		c_var_lerp("siner_amplitude0", 0, 2, 1);
		c_var("siner_add0", 2);
		c_sprite(spr_cutscene_14_spamton_hands_look_down_dark);
		c_speaker("spamton");
		c_msgsetloc(0, "* LIVING IN A GODDAMN GARBAGE CAN???/%", "obj_ch2_city05_slash_Step_0_gml_180_0");
		c_talk_wait();
		c_var("siner_add0", 0);
		c_imagespeed(1);
		c_sprite(spr_cutscene_14_spamton_laugh_left);
		c_mus2("initloop", "spamton_laugh_noise.ogg", 0);
		c_wait(25);
		c_mus("stop");
		c_imagespeed(0);
		c_wait(20);
		c_flip("x");
		c_walkdirect_wait(lerp(obj_mainchara.x + 40, 620, 0.75), lerp(203, 180, 0.75), 3);
		c_wait(1);
		c_setxy(620, 180);
		c_flip("x");
		c_sprite(spr_cutscene_14_spamton_up_punch);
		c_shakeobj();
		c_soundplay(snd_locker);
		c_shake();
		c_sel(kr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("l", 5, 5);
		c_wait(5);
		c_imagespeed(0);
		c_wait(60);
		c_sel(sp);
		c_sprite(spr_cutscene_14_spamton);
		c_sel(sp);
		c_var_lerp("siner_amplitude0", 0, 10, 10);
		c_var("siner_add0", 0.2);
		c_speaker("spamton");
		c_msgsetloc(0, "* WELL HAVE I GOT A [[Specil Deal]] FOR LONELY [[Hearts]] LIKE YOU!!/%", "obj_ch2_city05_slash_Step_0_gml_228_0");
		c_talk_wait();
		c_flip("x");
		c_var("siner_add0", 0);
		c_walkdirect(obj_mainchara.x + 220, 203, 10);
		c_wait(10);
		c_sprite(spr_cutscene_14_spamton_hands_look_down);
		c_msgsetloc(0, "* IF YOU'VE [[Lost Control Of Your Life]]/%", "obj_ch2_city05_slash_Step_0_gml_237_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_grab);
		c_flip("x");
		c_shakeobj();
		c_speaker("spamton");
		c_msgsetloc(0, "* THEN YOU JUST GOTTA GRAB IT BY THE [[Silly Strings]]/%", "obj_ch2_city05_slash_Step_0_gml_245_0");
		c_talk_wait();
		c_var_lerp("siner_amplitude0", 0, 1, 1);
		c_var("siner_add0", 1.5);
		c_walkdirect(obj_mainchara.x + 120, 203, 10);
		c_speaker("spamton");
		c_msgsetloc(0, "* WHY BE THE [[Little Sponge]] WHO HATES ITS [[$4.99]] LIFE/%", "obj_ch2_city05_slash_Step_0_gml_253_0");
		c_talk_wait();
		c_var("siner_add0", 0);
		c_walkdirect(obj_mainchara.x + 80, 203, 15);
		c_sprite(spr_cutscene_14_spamton_grab_dark);
		c_msgsetloc(0, "* WHEN YOU CAN BE A/%", "obj_ch2_city05_slash_Step_0_gml_260_0");
		c_talk_wait();
		c_var("siner_add0", 0);
		c_sprite(spr_cutscene_14_spamton_laugh_large);
		c_imagespeed(0);
		c_imageindex(0);
		c_speaker("spamton");
		c_msgsetloc(0, "* [[BIG SHOT!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_270_0");
		c_talk_wait();
		c_imageindex(1);
		c_speaker("spamton");
		c_msgsetloc(0, "* [[BIG SHOT!!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_276_0");
		c_talk_wait();
		c_imageindex(2);
		c_shakeobj();
		c_speaker("spamton");
		c_msgsetloc(0, "* [[BIG SHOT!!!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_283_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_arms_up);
		c_speaker("spamton");
		c_msgsetloc(0, "* THAT'S RIGHT!^1! NOW'S YOUR CHANCE TO BE A [[BIG SHOT]]!!/%", "obj_ch2_city05_slash_Step_0_gml_288_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_arms_up);
		c_walk("l", 6, 5);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* AND I HAVE JUST./%", "obj_ch2_city05_slash_Step_0_gml_296_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_arms_up);
		c_walk("l", 6, 5);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* THE THING./%", "obj_ch2_city05_slash_Step_0_gml_304_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_arms_up);
		c_walk("l", 6, 5);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* YOU NEED./%", "obj_ch2_city05_slash_Step_0_gml_312_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton);
		c_walk("l", 6, 5);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* THAT'S/%", "obj_ch2_city05_slash_Step_0_gml_320_0");
		c_talk_wait();
		c_walk("l", 1.75, 15);
		c_wait(30);
		c_sprite(spr_cutscene_14_spamton_dark);
		c_speaker("spamton");
		c_msgsetloc(0, "* [[Hyperlink Blocked]]./%", "obj_ch2_city05_slash_Step_0_gml_328_0");
		c_talk_wait();
		c_sel(sp);
		c_sprite(spr_cutscene_14_spamton_laugh_glitch);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_walkdirect(obj_mainchara.x + 80, 203, 6);
		c_soundplay(snd_spamton_laugh);
		c_wait(30);
		c_speaker("spamton");
		c_msgsetloc(0, "* YOU WANT IT.&* YOU WANT [[Hyperlink Blocked]]^1, DON'T YOU./%", "obj_ch2_city05_slash_Step_0_gml_347_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_laugh_left);
		c_imagespeed(0.25);
		c_var_lerp("siner_amplitude0", 0, 10, 10);
		c_var("siner_add0", 0.2);
		c_speaker("spamton");
		c_msgsetloc(0, "* WELL HAVE I GOT A DEAL FOR YOU!!/%", "obj_ch2_city05_slash_Step_0_gml_359_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton);
		c_halt();
		c_var("siner_add0", 0);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* ALL YOU HAVE TO DO IS SHOW ME./%", "obj_ch2_city05_slash_Step_0_gml_389_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_hands_look_down);
		c_walk("l", 4, 5);
		c_wait(10);
		c_speaker("spamton");
		c_msgsetloc(0, "* YOUR [[HeartShapedObject]]./%", "obj_ch2_city05_slash_Step_0_gml_397_0");
		c_talk_wait();
		c_sel(kr);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_walk("l", 3, 10);
		c_sel(sp);
		c_walk("l", 3, 10);
		c_sprite(spr_cutscene_14_spamton);
		c_speaker("spamton");
		c_msgsetloc(0, "* YOU'RE  LIGHT neR< AREN'T YOU?/%", "obj_ch2_city05_slash_Step_0_gml_413_0");
		c_talk_wait();
		c_sprite(spr_cutscene_14_spamton_hands_look_down_dark);
		c_speaker("spamton");
		c_msgsetloc(0, "* YOU'VE GOT THE [[LIGHT.]^1]&* WHY DON'T YO^1U&* [[Show it off?]]/%", "obj_ch2_city05_slash_Step_0_gml_419_0");
		c_talk_wait();
		c_sel(sp);
		c_sprite(spr_cutscene_14_spamton_laugh_glitch);
		c_imagespeed(0.25);
		c_mus("stop");
		c_mus2("initloop", "spamton_laugh_noise.ogg", 0);
		c_speaker("spamton");
		c_msgsetloc(0, "* HAEAHAEAHAEAHAEAH!!/%", "obj_ch2_city05_slash_Step_0_gml_443_0");
		c_talk_wait();
		c_mus("free_all");
		c_pannable(1);
		c_waitcustom();
	}
}
if (con == 2 && customcon == 1)
{
	con = 3;
	alarm[0] = 30;
	if (global.tempflag[29] == 0)
		global.tempflag[29] = 1;
	var spamton_marker = scr_dark_marker(sp_actor.x, sp_actor.y, sp_actor.sprite_index);
	global.flag[9] = 2;
	global.batmusic[0] = snd_init("spamton_battle.ogg");
	encounterflag = 549;
	global.flag[54] = encounterflag;
	scr_battle(60, 1, spamton_marker, 0, 0);
	global.flag[9] = 1;
	with (obj_actor)
		visible = 0;
}
if (con == 4 && i_ex(obj_battlecontroller))
{
	var battle_end = false;
	with (obj_battlecontroller)
	{
		if (intro == 2)
			battle_end = true;
	}
	if (battle_end)
	{
		con = 6;
		alarm[0] = 30;
		snd_volume(global.batmusic[1], 0, 25);
	}
}
if (con == 7)
{
	con = (global.flag[309] == 1) ? 9 : 19;
	alarm[0] = 5;
	customcon = 0;
	obj_mainchara.x = obj_herokris.x;
	obj_mainchara.y = obj_herokris.y;
	kr_actor.x = obj_herokris.x;
	kr_actor.y = obj_herokris.y;
	kr_actor.sprite_index = obj_herokris.sprite_index;
	sp_actor.x = obj_spamton_enemy.x;
	sp_actor.y = obj_spamton_enemy.y;
	sp_actor.sprite_index = spr_cutscene_14_spamton;
	sp_actor.image_index = 0;
	sp_actor.image_speed = 0;
	with (obj_actor)
		visible = 1;
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
	if (i_ex(obj_battleback))
	{
		with (obj_battleback)
			destroy = 1;
	}
	if (i_ex(obj_battlecontroller))
		instance_destroy(obj_battlecontroller);
}
if (con == 10 && !i_ex(obj_battlecontroller))
{
	con = 39;
	alarm[0] = 30;
	global.fighting = 0;
	c_waitcustom_end();
	c_sel(kr);
	c_var_lerp("x", kr_actor.x, 317, 10);
	c_var_lerp("y", kr_actor.y, 183, 10);
	c_sel(sp);
	c_var("siner_add0", 0.1);
	c_var_lerp("siner_amplitude0", 0, 10, 20);
	c_wait(30);
	c_speaker("spamton");
	c_msgsetloc(0, "* NOW ON TO THE NEXT STEP.../", "obj_ch2_city05_slash_Step_0_gml_551_0");
	c_msgnextloc("* I'LL BE WAITING AT MY [[Home-made Storefront Site]]/", "obj_ch2_city05_slash_Step_0_gml_553_0");
	c_msgnextloc("* IN THE [[Trash Area Closed For Repairs.]]/%", "obj_ch2_city05_slash_Step_0_gml_554_0");
	c_talk_wait();
	c_sprite(spr_cutscene_14_spamton_dark);
	c_var("siner_add0", 0);
	c_speaker("spamton");
	c_msgsetloc(0, "* COME..^1. ALONE./%", "obj_ch2_city05_slash_Step_0_gml_564_0");
	c_talk_wait();
	c_sprite(spr_cutscene_14_spamton_laugh_left);
	c_halt();
	c_var("siner_add0", 0.1);
	c_speaker("spamton");
	c_msgsetloc(0, "* AND DON'T..^1. FORGET!/%", "obj_ch2_city05_slash_Step_0_gml_574_0");
	c_talk_wait();
	c_sprite(spr_cutscene_14_spamton);
	c_halt();
	c_speaker("spamton");
	c_msgsetloc(0, "* TO [[Like and Subscribe]] FOR MORE [[Hyperlink Blocked.]]/%", "obj_ch2_city05_slash_Step_0_gml_582_0");
	c_talk_wait();
	c_sprite(spr_cutscene_14_spamton_laugh_glitch);
	c_imagespeed(0.25);
	c_walk("r", 5, 90);
	c_speaker("spamton");
	c_msgsetloc(0, "* HAEAHAEAHAEAHAEAH!!/%", "obj_ch2_city05_slash_Step_0_gml_591_0");
	c_talk_wait();
	c_pannable(1);
	c_panobj(kr_actor, 30);
	c_wait(60);
	c_pannable(0);
}
if (con == 20)
{
	con = 39;
	alarm[0] = 30;
	c_waitcustom_end();
	c_sel(kr);
	c_var_lerp("x", kr_actor.x, 317, 10);
	c_var_lerp("y", kr_actor.y, 183, 10);
	c_sel(sp);
	c_sprite(spr_spamton_laugh_left);
	c_imagespeed(0.25);
	c_var("siner_add0", 0.4);
	c_wait(30);
	c_speaker("spamton");
	c_msgsetloc(0, "* HEY!!^1! DIDN'T YOU EVER HEAR THE PHRASE^1, &* [Make Money^1, Not War]!/", "obj_ch2_city05_slash_Step_0_gml_612_0");
	c_msgnextloc("* HOW'S AN INNOCENT [Guy] LIKE ME SUPPOSED TO [Rip People Off]/", "obj_ch2_city05_slash_Step_0_gml_614_0");
	c_msgnextloc("* WHEN KIDS LIKE YOU ARE [Beating People Up]^1,/%", "obj_ch2_city05_slash_Step_0_gml_615_0");
	c_talk();
	c_wait_box(2);
	c_shakeobj();
	c_soundplay(snd_damage);
	c_var("siner_add0", 0.6);
	c_waittalk();
	c_speaker("spamton");
	c_msgsetloc(0, "* [Spitting] IN THEIR EYES^1, THROWING SAND IN THEIR [Face],/", "obj_ch2_city05_slash_Step_0_gml_621_0");
	c_msgnextloc("* [Stomping] ON THEIR TOES^1, YANKING THEIR [Noses]/", "obj_ch2_city05_slash_Step_0_gml_623_0");
	c_msgnextloc("* AND NOT EVEN GIVING THEM A SINGLE CENT FOR IT!?/", "obj_ch2_city05_slash_Step_0_gml_625_0");
	if (scr_weaponcheck_inventory(13))
	{
		c_msgnextloc("* IT DOESN'T MEAN YOU CAN BEAT ME UP^1,/", "obj_ch2_city05_slash_Step_0_gml_629_0");
		c_msgnextloc("* JUST BECAUSE YOU BOUGHT MY [Commemorative Ring]!/", "obj_ch2_city05_slash_Step_0_gml_630_0");
		c_msgnextloc("* AT LEAST BUY [2]!/", "obj_ch2_city05_slash_Step_0_gml_631_0");
	}
	else
	{
		c_msgnextloc("* YOU SHOULD HAVE DONE ALL THAT EARLIER!/", "obj_ch2_city05_slash_Step_0_gml_634_0");
		c_msgnextloc("* AND BEEN THE FIRST TO OWN MY [Commemorative Ring]/", "obj_ch2_city05_slash_Step_0_gml_635_0");
	}
	c_msgnextloc("* TOO BAD^1! SEE YOU KID!/%", "obj_ch2_city05_slash_Step_0_gml_638_0");
	c_talk();
	c_shakeobj();
	c_soundplay(snd_damage);
	c_var("siner_add0", 0.8);
	c_wait_box(1);
	c_shakeobj();
	c_soundplay(snd_damage);
	c_var("siner_add0", 1);
	c_wait_box(2);
	c_shakeobj();
	c_soundplay(snd_damage);
	c_var("siner_add0", 1.2);
	c_wait_box(3);
	c_shakeobj();
	c_soundplay(snd_damage);
	c_var("siner_add0", 1.5);
	c_wait_box(4);
	c_sprite(spr_cutscene_14_spamton_grab);
	c_soundplay(snd_item);
	c_var("siner_add0", 0);
	c_wait_box(5);
	c_sprite(spr_cutscene_14_spamton_hands);
	c_waittalk();
	c_halt();
	c_flip("x");
	c_walk("r", 5, 90);
	c_pannable(1);
	c_panobj(kr_actor, 30);
	c_wait(60);
	c_pannable(0);
}
if (con == 40 && !d_ex())
{
	con = 50;
	c_actortokris();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.plot = 85;
	global.interact = 0;
	global.facing = 0;
	var dumpster_npc = instance_create(560, 106, obj_npc_sign);
	dumpster_npc.sprite_index = spr_cutscene_14_dumpster_open;
	with (dumpster_npc)
		scr_depth();
	instance_destroy(dumpster);
	instance_destroy(dumpster_nakami);
	instance_destroy();
}
if (play_intro)
{
	play_intro = false;
	intro[0] = snd_init("spamton_meeting_intro.ogg");
	intro[1] = mus_loop(intro[0]);
}
if (stop_intro)
{
	stop_timer++;
	if (stop_timer == 1)
		audio_sound_gain(intro[1], 0, 1000);
	if (stop_timer >= 31)
	{
		stop_intro = false;
		snd_free(intro[0]);
	}
}
if (open_dumpster)
{
	open_dumpster = false;
	dumpster_nakami.visible = 1;
	dumpster_nakami.depth = 95000;
	with (dumpster_nakami)
		scr_shakeobj();
}
