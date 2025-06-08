if (con > -1)
{
	if (i_ex(snowy))
	{
		with (snowy)
			scr_depth();
	}
	if (i_ex(monsterkid))
	{
		with (monsterkid)
			scr_depth();
	}
}
if (obj_mainchara.y >= 1130 && (obj_mainchara.x > 80 && obj_mainchara.x < 230) && con == -1)
{
	con = 1;
	global.interact = 1;
	snowy.visible = 0;
	monsterkid.visible = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	susiegox = (obj_mainchara.x > (room_width / 2)) ? (obj_mainchara.x - 30) : (obj_mainchara.x + 30);
	c_sel(kr);
	var facing = (obj_mainchara.x > (room_width / 2)) ? "l" : "r";
	c_facing(facing);
	sux = su_actor.x;
	suy = su_actor.y;
	c_sel(su);
	c_facing(facing);
	sn = 2;
	sn_actor = instance_create(135, 1130, obj_actor);
	scr_actor_setup(sn, sn_actor, "snowy");
	sn_actor.sprite_index = spr_snowy_ut;
	c_sel(sn);
	c_autowalk(0);
	c_halt();
	mk = 3;
	mk_actor = instance_create(170, 1130, obj_actor);
	scr_actor_setup(mk, mk_actor, "monster_kid");
	mk_actor.sprite_index = spr_mkid_ut;
	c_sel(mk);
	c_autowalk(0);
	c_halt();
}
if (con == 1)
{
	con = 2;
	c_sel(mk);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* You think it's true? You really think there's..../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_61_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(sn);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* What^1, you chicken? Haha^1, you gotta beak and wings? Like a chicken?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_68_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(mk);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* ..^1. no..^1. just.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_75_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(sn);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* I ain't afraid^1! Only kids believe that stuff!/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_82_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(mk);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* ..^1. b-but Kris.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_89_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(sn);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* You gonna be a weenie like Kris!?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_96_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(su);
	c_facing("susieunhappy");
	if (sux < 160)
	{
		if (sux > 50 && suy < 1116)
		{
			c_walkdirect_wait(33, suy, 16);
			sux = 33;
		}
	}
	else if (sux < 260 && suy < 1116)
	{
		c_walkdirect_wait(265, suy, 16);
		sux = 265;
	}
	if (suy < 1148)
		c_walkdirect_wait(sux, 1152, 16);
	c_walkdirect_wait(152, 1152, 45);
	c_walkdirect_wait(152, 1148, 25);
	c_facing("u");
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EV* You wanna say that again?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_109_0");
	c_talk_wait();
	c_sel(sn);
	c_sprite(spr_snowy_dt_shock);
	c_shakeobj();
	c_sel(mk);
	c_sprite(spr_mkid_dt_shock);
	c_shakeobj();
	c_wait(60);
	c_sel(sn);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* Susie. Didn't see ya there./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_126_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(su);
	c_autowalk(0);
	c_imageindex(1);
	c_walk_wait("u", 0.25, 25);
	c_imageindex(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EW* Wow^1, really something SCARY in there^1, huh?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_138_0");
	c_talk_wait();
	c_sel(sn);
	c_imagespeed(0.25);
	c_speaker("no_name");
	c_msgsetloc(0, "* Uhh--/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_145_0");
	c_talk_wait();
	c_imagespeed(0);
	c_sel(su);
	c_autowalk(0);
	c_imageindex(3);
	c_walk_wait("u", 0.25, 25);
	c_imageindex(2);
	c_speaker("susie");
	c_msgsetloc(0, "\\EW* Sounds to me like you'd better worry.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_157_0");
	c_talk_wait();
	c_autowalk(0);
	c_imageindex(1);
	c_walk_wait("u", 0.25, 25);
	c_imageindex(0);
	c_sel(sn);
	c_autowalk(0);
	c_walk("l", 6, 6);
	c_sel(mk);
	c_autowalk(0);
	c_walk("r", 4, 6);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_susie_kick_up);
	c_imagespeed(0.3);
	c_wait(10);
	c_soundplay(snd_locker);
	c_shake();
	c_wait(5);
	c_imageindex(4);
	c_imagespeed(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EX* About what's OUT HERE^1, first./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_188_0");
	c_talk_wait();
	c_speaker("no_name");
	c_msgsetloc(0, "* AHHHHHHHHHHH!!!!!!!!/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_192_0");
	c_talk();
	c_waitcustom();
}
if (con == 2 && customcon == 1)
{
	con = 5;
	with (sn_actor)
		path_start(path_snowy, 8, path_action_stop, 0);
	with (mk_actor)
		path_start(path_monsterkid, 8, path_action_stop, 0);
}
if (con == 5)
{
	if (i_ex(sn_actor))
	{
		with (sn_actor)
		{
			if (direction >= 136 && direction <= 225)
				sprite_index = spr_snowy_ut_l;
			if (direction >= 46 && direction <= 135)
				sprite_index = spr_snowy_ut;
			if (direction >= 306 || direction <= 45)
				sprite_index = spr_snowy_ut_r;
			if (y <= (cameray() - 20))
				instance_destroy();
		}
	}
	if (i_ex(mk_actor))
	{
		with (mk_actor)
		{
			if (direction >= 136 && direction <= 225)
				sprite_index = spr_mkid_ut_l;
			if (direction >= 46 && direction <= 135)
				sprite_index = spr_mkid_ut;
			if (direction >= 306 || direction <= 45)
				sprite_index = spr_mkid_ut_r;
			if (y <= (cameray() - 20))
				instance_destroy();
		}
	}
	if (!i_ex(sn_actor) && !i_ex(mk_actor) && !d_ex())
	{
		con = 6;
		customcon = 0;
		c_waitcustom_end();
	}
}
if (con == 6)
{
	con = 50;
	c_wait(30);
	c_autowalk(1);
	c_facing("susieunhappy");
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\EV* .../", "obj_ch2_room_town_shelter_slash_Step_0_gml_278_0");
	c_msgnextloc("\\E1* You OK^1, Kris?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_279_0");
	c_talk_wait();
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* ...What's...the deal with this place?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_284_0");
	c_talk_wait();
	c_wait(60);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Well^1, you don't gotta talk about it./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_293_0");
	c_talk_wait();
	c_walkdirect_wait(susiegox, obj_mainchara.y - 6, 30);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	global.flag[315] = 1;
	con = 0;
}
