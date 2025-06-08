var makeballoons = 0;
if (room == room_dw_city_postbaseball_1)
{
	balloonthreshold = 10;
	if (i_ex(obj_mainchara) && obj_mainchara.y <= (room_height - 320))
		makeballoons = 1;
}
if (makeballoons)
{
	balloontimer++;
	if (balloontimer >= balloonthreshold)
	{
		balloontimer = 0;
		var bx = 0;
		var by = cameray() + 600;
		if (room == room_dw_city_postbaseball_1)
			bx = round((340 + random(420)) / 40) * 40;
		balloon = instance_create(bx, by, obj_cybercity_balloon);
		balloon.gravity = -0.1;
		balloon.vspeed = -1 - random(1);
		balloon.hspeed = random_range(-3, 3);
		balloon.friction = 0.04;
		balloon.depth = 1100000;
		balloon.image_xscale = 2;
		balloon.image_yscale = 2;
		balloon.mode = 1;
	}
}
if (room == room_dw_city_postbaseball_1)
{
	if (global.interact == 0 && con == 0)
	{
		if (obj_mainchara.x <= 300 && obj_mainchara.y >= 460 && obj_mainchara.y <= 600)
		{
			global.interact = 1;
			con = 1;
			cutscene_master = scr_cutscene_make();
			scr_maincharacters_actors();
		}
	}
	if (con == 1)
	{
		con = 2;
		c_sel(no);
		c_emote("!", 30);
		c_facing("l");
		c_wait(30);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E3* Wait^1, I know^1! Umm^1, to turn off that force field.../%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_68_0");
		c_talk_wait();
		c_sel(no);
		c_walkdirect(200, 460, 30);
		c_wait(15);
		c_sel(su);
		c_facing("l");
		c_sel(ra);
		c_facing("l");
		c_wait(13);
		c_var_instance(id, "switchcon", 1);
		c_wait(2);
		c_sel(no);
		c_facing("r");
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* You just stay standing on this switch!/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_86_0");
		c_facenext("susie", 0);
		c_msgnextloc("\\E0* Huh./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_88_0");
		c_talk_wait();
		c_wait(45);
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(ra);
		c_facing("r");
		c_walkdirect(caterpillarnoe.x - 4, caterpillarnoe.y + 10, 15);
		c_wait(15);
		c_var_instance(caterpillarral, "target", 24);
		c_speaker("susie");
		c_msgsetloc(0, "\\E2* Well^1, see ya later. \\f0 /%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_105_0");
		var small_text = stringsetloc("(W-wait, what did I volunteer for?)", "obj_room_dw_city_postbaseball_slash_Step_0_gml_106_0");
		scr_smallface(0, "noelle", 15, "mid", "bottommid", small_text);
		c_talk_wait();
		c_sel(no);
		c_actortoobject(obj_npc_room);
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 2)
	{
		if (!i_ex(obj_cutscene_master))
		{
			with (obj_caterpillarchara)
			{
				if (name == "noelle")
				{
					target = 36;
					image_alpha = 0;
				}
			}
			with (obj_mainchara)
				visible = 1;
			con = 3;
			global.interact = 0;
			global.facing = 0;
			entranceforcefield = instance_create(40, 2200, obj_forcefield);
			entranceforcefield.image_yscale = 6;
			entranceforcefield.image_xscale = 2;
			rodeteacup = -4;
		}
	}
	if (con == 10)
	{
		if (obj_mainchara.y >= 450 && obj_mainchara.y <= 460)
		{
			if (global.interact == 0)
			{
				global.interact = 1;
				con = 11;
				cutscene_master = scr_cutscene_make();
				scr_maincharacters_actors();
				with (obj_npc_room)
					instance_destroy();
				no_actor.x = camerax() - 50;
				no_actor.y = 470;
			}
		}
	}
	if (con == 11)
	{
		con = 12;
		c_sel(no);
		c_walkdirect(obj_mainchara.x, 460, 20);
		c_wait(20);
		c_facing("u");
		if (rodeteacup < 3)
		{
			c_speaker("noelle");
			c_msgsetloc(0, "\\E8* (W..^1. wait for me!)/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_161_0");
			c_talk_wait();
		}
		else
		{
			c_speaker("noelle");
			c_msgsetloc(0, "\\EH* So^1, umm..^1. why were you all..^1. riding a teacup together?/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_167_0");
			c_facenext("susie", 0);
			c_msgnextloc("\\E0* Ugh. Balloons./", "obj_room_dw_city_postbaseball_slash_Step_0_gml_169_0");
			c_facenext("noelle", 2);
			c_msgnextloc("\\E2* Balloons?/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_171_0");
			c_facenext("susie", 1);
			c_msgnextloc("\\E1* Trust me..^1. you dodged a bullet./", "obj_room_dw_city_postbaseball_slash_Step_0_gml_173_0");
			c_facenext("noelle", 2);
			c_msgnextloc("\\E2* Umm... okay!/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_175_0");
			c_talk_wait();
		}
		c_sel(ra);
		c_walkdirect(caterpillarnoe.x, caterpillarnoe.y, 20);
		c_sel(no);
		c_walkdirect(caterpillarral.x, caterpillarral.y - 10, 20);
		c_wait(20);
	}
	if (con == 12)
	{
		if (!i_ex(obj_cutscene_master))
		{
			con = 13;
			global.interact = 0;
			global.facing = 0;
			if (scr_debug())
			{
				for (i = 0; i < 7; i++)
				{
					var checkchar = instance_find(obj_caterpillarchara, i);
					if (i_ex(checkchar))
						scr_debug_print(checkchar.name);
				}
			}
			if (!i_ex(caterpillarnoe))
			{
				caterpillarnoe = scr_makecaterpillar(no_actor.x, no_actor.y, 2, 3);
				caterpillarnoe.target = 24;
				if (scr_debug())
					snd_play(snd_won);
			}
			else
			{
				caterpillarnoe.visible = 1;
				caterpillarnoe.target = 24;
				caterpillarnoe.image_alpha = 1;
			}
			var remx = caterpillarnoe.x;
			var remy = caterpillarnoe.y;
			caterpillarnoe.x = caterpillarral.x;
			caterpillarnoe.y = caterpillarral.y - 10;
			caterpillarral.target = 36;
			caterpillarral.x = remx;
			caterpillarral.y = remy;
			with (obj_actor)
				instance_destroy();
			with (obj_mainchara)
				visible = 1;
			with (obj_caterpillarchara)
				visible = 1;
			with (obj_chaseenemy)
				instance_destroy();
		}
	}
	if (switchcon == 1)
	{
		snd_play(snd_locker);
		with (forcefieldtopright)
			instance_destroy();
		switchcon = 0;
	}
	if (switch2con == 1)
	{
		snd_play(snd_locker);
		with (forcefieldright)
			instance_destroy();
		global.flag[448] = 1;
		switch2con = 2;
		if (con < 10)
			con = 10;
	}
	if (rodeteacup == -3 && global.interact == 1)
		rodeteacup = -2;
	if (rodeteacup == -2)
	{
		scr_cutscene_make();
		c_fadeout(20);
		c_wait(20);
		c_speaker("no_name");
		c_soundplay(snd_jump);
		c_msgsetloc(0, "* (You all jumped into one teacup.)/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_257_0");
		c_msgnextloc("* (You heard a clicking sound.)/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_258_0");
		c_talk();
		c_wait_box(1);
		c_soundplay(snd_noise);
		c_waittalk();
		c_fadein(20);
		c_wait(20);
		global.flag[449] = 1;
		rodeteacup = -1;
	}
	if (rodeteacup == -1 && !instance_exists(obj_cutscene_master))
	{
		rodeteacup = 1;
		global.interact = 0;
		global.facing = 0;
	}
	if (rodeteacup == 1)
	{
		with (forcefieldtopleft)
			instance_destroy();
		rodeteacup = 2;
	}
}
if (room == room_dw_city_postbaseball_2)
{
	if (con == 0 && obj_mainchara.x >= 640 && global.flag[447] == 0)
	{
		con = 1;
		fireworkshotcon = 1;
		with (obj_fireworks_manager)
			is_active = 0;
		forcefield = scr_forcefield(40, 280, 2, 6, 1, 0);
		bulletarea = instance_create(0, 320, obj_overworld_bulletarea);
		bulletarea.image_xscale = 66;
		bulletarea.image_yscale = 4;
		timer = 0;
	}
	if (con == 1)
	{
		with (obj_caterpillarchara)
			image_alpha -= 0.02;
		timer++;
		if (timer >= 55)
		{
			con = 2;
			caterpillarnoe.visible = 0;
			caterpillarnoe.image_alpha = 0;
			caterpillarnoe.target = 36;
			caterpillarral.target = 24;
		}
	}
	if (fireworkshotcon == 1)
	{
		fireworktimer++;
		if (fireworktimer >= 30)
		{
			instance_create(camerax() + 320 + random(320) + (right_h() * 400), (cameray() + 380) - random(60), obj_overworldbullet_fireworks);
			fireworktimer = 0;
		}
	}
	if (con == 2)
	{
		with (obj_caterpillarchara)
			visible = false;
		if (obj_mainchara.x >= 2460)
		{
			with (obj_caterpillarchara)
				visible = true;
			with (obj_overworld_bulletarea)
				instance_destroy();
			with (obj_darkcontroller)
				charcon = 0;
			con = 3;
			fireworkshotcon = 0;
		}
	}
	if (con == 3)
	{
		with (obj_caterpillarchara)
		{
			if (name != "noelle")
				image_alpha += 0.1;
		}
		with (obj_overworldbulletparent)
			image_alpha -= 0.1;
		if (global.fighting == 1)
			con = 4;
	}
	if (con == 4)
	{
		if (global.fighting == 0 && global.interact == 0)
		{
			global.interact = 1;
			con = 10;
		}
	}
	if (con == 10)
	{
		global.interact = 1;
		con = 11;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		with (obj_npc_room)
			instance_destroy();
		no_actor.x = camerax() - 50;
		no_actor.y = 266;
	}
	if (con == 11)
	{
		con = 12;
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Wait a sec..^1. Where's Noelle?/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_380_0");
		c_talk_wait();
		c_sel(ra);
		c_facing("l");
		c_sel(su);
		c_facing("l");
		c_sel(kr);
		c_facing("l");
		var nox = min(kr_actor.x, ra_actor.x, su_actor.x) - 60;
		c_sel(no);
		c_walkdirect(nox, caterpillarral.y - 10, 30);
		c_wait(30);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E2* S-sorry^1, I..^1. I'd just never seen fireworks up close before.../", "obj_room_dw_city_postbaseball_slash_Step_0_gml_399_0");
		c_facenext("susie", 34);
		c_msgnextloc("\\EY* Those bullets? What^1, you scared?/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_401_0");
		c_facenext("noelle", 3);
		c_msgnextloc("\\E3* Uh..^1. umm..^1. I guess so.../", "obj_room_dw_city_postbaseball_slash_Step_0_gml_403_0");
		c_msgnextloc("\\E4* (Maybe that's..^1. why I couldn't stop watching...?)/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_404_0");
		c_talk_wait();
		c_sel(ra);
		c_walkdirect(caterpillarnoe.x, caterpillarnoe.y, 20);
		c_sel(no);
		c_walkdirect(caterpillarral.x, caterpillarral.y - 10, 20);
		c_wait(20);
	}
	if (con == 12)
	{
		if (!i_ex(obj_cutscene_master))
		{
			con = 13;
			global.interact = 0;
			global.facing = 0;
			if (scr_debug())
			{
				for (i = 0; i < 7; i++)
				{
					var checkchar = instance_find(obj_caterpillarchara, i);
					if (i_ex(checkchar))
						scr_debug_print(checkchar.name);
				}
			}
			if (!i_ex(caterpillarnoe))
			{
				caterpillarnoe = scr_makecaterpillar(no_actor.x, no_actor.y, 2, 3);
				caterpillarnoe.target = 24;
				if (scr_debug())
					snd_play(snd_won);
			}
			else
			{
				caterpillarnoe.visible = 1;
				caterpillarnoe.target = 24;
				caterpillarnoe.image_alpha = 1;
			}
			var remx = caterpillarnoe.x;
			var remy = caterpillarnoe.y;
			caterpillarnoe.x = caterpillarral.x;
			caterpillarnoe.y = caterpillarral.y - 10;
			caterpillarral.target = 36;
			caterpillarral.x = remx;
			caterpillarral.y = remy;
			with (obj_actor)
				instance_destroy();
			with (obj_mainchara)
				visible = 1;
			with (obj_caterpillarchara)
				visible = 1;
			with (obj_chaseenemy)
				instance_destroy();
		}
	}
	if (switch1con >= 0)
	{
		with (obj_cybercity_balloon)
			breakable = 1;
		if (switch1con == 1)
		{
			if (!i_ex(forcefield1))
			{
				forcefield1 = instance_create(2860, 160, obj_forcefield);
				forcefield1.image_xscale = 10;
				forcefield1.image_yscale = 2;
				forcefield1.stayVisible = 1;
				forcefield1.ignorealpha = 1;
				forcefield1.image_alpha = 0.2;
			}
			else
			{
				with (forcefield1)
				{
					if (image_alpha < 3)
						image_alpha += 0.5;
				}
			}
		}
		else
		{
			with (forcefield1)
			{
				image_alpha -= 0.2;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
	if (switch2con >= 0)
	{
		with (obj_cybercity_balloon)
			breakable = 1;
		if (switch2con == 1)
		{
			if (!i_ex(forcefield2))
			{
				forcefield2 = instance_create(3120, 160, obj_forcefield);
				forcefield2.image_xscale = 10;
				forcefield2.image_yscale = 2;
				forcefield2.stayVisible = 1;
				forcefield2.ignorealpha = 1;
			}
			else
			{
				with (forcefield2)
				{
					if (image_alpha < 3)
						image_alpha += 0.5;
				}
			}
		}
		else
		{
			with (forcefield2)
			{
				image_alpha -= 0.2;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
	if (switch3con >= 0)
	{
		with (obj_cybercity_balloon)
			breakable = 1;
		if (switch3con == 1)
		{
			if (!i_ex(forcefield3))
			{
				forcefield3 = scr_forcefield(3600, 120, 10, 2, 1, 1);
				forcefield3.ignorealpha = 1;
			}
			else
			{
				with (forcefield3)
				{
					if (image_alpha < 3)
						image_alpha += 0.5;
				}
			}
		}
		else
		{
			with (forcefield3)
			{
				image_alpha -= 0.2;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
}
if (room == room_dw_city_postbaseball_3)
{
	if (obj_mainchara.x > 420 && blockleft == 0)
	{
		scr_forcefield(80, 280, 2, 6, 1, 0);
		blockleft = 1;
	}
	if (balloondestroyed[0])
	{
		if (!i_ex(balloon[0]))
		{
			balloon[0] = instance_create(ballremx[0], cameray() - 120, obj_cybercity_balloon);
			balloon[0].balloonid = 0;
			with (balloon[0])
			{
				event_user(0);
				scr_lerpvar("y", y, other.ballremy[0], 15, 2, "out");
			}
			balloondestroyed[0] = 0;
		}
		else
		{
			balloondestroyed[0] = 0;
		}
	}
	if (switch1con >= 0)
	{
		with (obj_cybercity_balloon)
			breakable = 1;
		if (switch1con == 1)
		{
			if (!i_ex(forcefield1))
			{
				forcefield1 = scr_forcefield(580, 80, 8, 2, 1, 1);
				forcefield1.ignorealpha = 1;
			}
			else
			{
				with (forcefield1)
				{
					if (image_alpha < 3)
						image_alpha += 0.5;
				}
			}
		}
		else
		{
			with (forcefield1)
			{
				image_alpha -= 0.2;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
	if (switch2con >= 0)
	{
		with (obj_cybercity_balloon)
			breakable = 1;
		if (switch2con == 1)
		{
			if (!i_ex(forcefield2))
			{
				forcefield2 = scr_forcefield(980, 40, 16, 2, 1, 1);
				forcefield2.ignorealpha = 1;
			}
			else
			{
				with (forcefield2)
				{
					if (image_alpha < 3)
						image_alpha += 0.5;
				}
			}
		}
		else
		{
			with (forcefield2)
			{
				image_alpha -= 0.2;
				if (image_alpha <= 0)
					instance_destroy();
			}
		}
	}
	if (i_ex(blockforcefield))
	{
		if (pillar1.completed == 1)
		{
			safe_delete(blockforcefield);
			layer_set_visible("TILE_BLOCKLAYER1", 0);
		}
	}
	if (i_ex(blockforcefield2))
	{
		if (pillar2.completed == 1)
		{
			safe_delete(blockforcefield2);
			layer_set_visible("TILE_BLOCKLAYER2", 0);
		}
	}
	if (i_ex(blockforcefield3))
	{
		if (pillar3.completed == 1)
		{
			safe_delete(blockforcefield3);
			layer_set_visible("TILE_BLOCKLAYER3", 0);
		}
	}
	if (i_ex(blockforcefield4))
	{
		if (bucketpillar.completed == 1)
		{
			safe_delete(blockforcefield4);
			layer_set_visible("TILE_BLOCKLAYER4", 0);
		}
	}
	if (minigamestartcon == 0)
	{
		if (!i_ex(blockforcefield2))
		{
			global.flag[7] = 1;
			mus_volume(global.currentsong[1], 0, 30);
			global.interact = 1;
			timer = 0;
			minigamestartcon = 0.5;
		}
	}
	if (minigamestartcon == 0.5)
	{
		timer++;
		global.interact = 1;
		if (timer == 30)
		{
			cutscene_master = scr_cutscene_make();
			scr_maincharacters_actors();
			minigamestartcon = 1;
		}
	}
	if (minigamestartcon == 1)
	{
		minigamestartcon = -999;
		c_pannable(1);
		c_pan(1380, 0, 25);
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_walkdirect(1460, 263, 12);
		c_sel(no);
		c_facing("r");
		c_walkdirect(1416, 264, 14);
		c_sel(ra);
		c_facing("r");
		c_walkdirect(1374, 258, 16);
		c_wait(17);
		c_sel(kr);
		c_facing("r");
		c_sel(su);
		c_facing("r");
		c_sel(no);
		c_facing("r");
		c_sel(ra);
		c_facing("r");
		c_wait(23);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* 20 more!? Damn^1, we're gonna be here forever!/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_708_0");
		c_facenext("noelle", "2");
		c_msgnextloc("\\E2* M..^1. maybe if we..^1. um^1, split up the work?/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_710_0");
		c_facenext("susie", "K");
		c_msgnextloc("\\EK* Huh?/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_712_0");
		c_talk_wait();
		c_wait(15);
		c_fadeout(15);
		c_wait(30);
		c_wait(1);
		c_sel(kr);
		c_setxy(pillaremerge.x + 280, 275);
		c_actortokris();
		c_actortocaterpillar();
		c_var_instance(id, "minigame", 1);
		c_terminatekillactors();
	}
	if (keyboard_check_pressed(ord("M")) && scr_debug())
		obj_kris_headobj.miceheld = pillar3.micerequired - 2;
	if (minigame == 1)
	{
		if (minigamecon == 0)
		{
			global.interact = 1;
			with (obj_caterpillarchara)
				instance_destroy();
			minigametimer = 0;
			noelletimer = 0;
			switchtimer = 20;
			susieactor = instance_create(1380, 260, obj_actor);
			susieactor.sprite_index = spr_susie_walk_left_dw;
			with (susieactor)
				scr_set_facing_sprites("susie");
			ralseiactor = instance_create(1290, 260, obj_actor);
			ralseiactor.sprite_index = spr_ralsei_walk_right;
			with (ralseiactor)
				scr_set_facing_sprites("ralsei");
			noelleactor = instance_create(pillaremerge.x, pillaremerge.y + 60, obj_actor);
			noelleactor.sprite_index = spr_noelle_walk_right_dw;
			with (noelleactor)
				scr_set_facing_sprites("noelle");
			with (obj_actor)
			{
				mysolid = instance_create(x, y, obj_npc_sign);
				mysolid.sprite_index = sprite_index;
				mysolid.visible = false;
				scr_darksize(mysolid);
			}
			obj_mainchara.cutscene = 1;
			camerax_set(pillaremerge.x - 80);
			safe_delete(obj_fadeout);
			scr_fadein(15);
			minigamecon = 0.1;
		}
		if (minigamecon == 0.1)
		{
			global.interact = 1;
			scr_speaker("noelle");
			msgsetloc(0, "\\E0* I'll release the mice.../", "obj_room_dw_city_postbaseball_slash_Step_0_gml_781_0");
			msgnextloc("\\E4* Susie will break the balloons when they reach the top.../", "obj_room_dw_city_postbaseball_slash_Step_0_gml_782_0");
			msgnextloc("\\E8* And Kris^1, you catch them^1! Umm^1, if that's ok./", "obj_room_dw_city_postbaseball_slash_Step_0_gml_783_0");
			msgnextloc("\\E0* Ready...?/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_784_0");
			msgnextloc("\\E4* Go!/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_785_0");
			d_make();
			minigamecon = 0.2;
		}
		if (minigamecon == 0.2 && !d_ex())
		{
			global.interact = 0;
			global.currentsong[0] = snd_init("boxing_game.ogg");
			global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
			snd_pitch(global.currentsong[1], 1.2);
			minigamecon = 1;
		}
		if (minigamecon == 1)
		{
			var failstate = 0;
			var howmanymice = 0;
			howmanymice = obj_kris_headobj.miceheld + instance_number(obj_cybercity_balloon);
			if (obj_kris_headobj.mousefailcon != 0)
				failstate = 1;
			noelletimer++;
			if (noelletimer < 15)
			{
				if (d_ex())
					noelletimer = -6;
				if (howmanymice >= (pillar3.micerequired - 1))
				{
					noelletimer = -6;
					if (howmanymice >= pillar3.micerequired)
						noelleactor.sprite_index = spr_noelle_walk_right_smile_dw;
				}
				if (failstate)
				{
					noelletimer = -6;
					noelleactor.sprite_index = spr_noelle_shocked_dw;
				}
			}
			if (noelletimer == 15)
			{
				scr_actor_facing(noelleactor, "u");
				with (noelleactor)
					scr_jump_in_place(12, 16);
			}
			if (noelletimer == 23)
			{
				if (failstate == 0)
					obj_mouseballoon_pillar_release.ballooncon = 1;
			}
			if (noelletimer == 32)
			{
				scr_actor_facing(noelleactor, "r");
				noelletimer = -6;
			}
			switchtimer++;
			var done = 0;
			if (obj_kris_headobj.miceheld == pillar3.micerequired)
				done = 1;
			if ((switchtimer == 59 && done) || (switchtimer == 106 && done))
			{
				switchtimer = 0;
				minigame = 2;
			}
			if (switchtimer == 60 && done == 0)
			{
				with (susieactor)
					scr_jump_to_point(xstart - 40, ystart, 12, 14);
			}
			if (switchtimer == 90)
			{
				with (susieactor)
				{
					auto_facing = 0;
					scr_move_to_point_over_time(xstart, ystart, 15);
				}
			}
			if (switchtimer == 100 && done == 0)
			{
				with (ralseiactor)
					scr_jump_to_point(xstart + 40, ystart, 12, 14);
			}
			if (switchtimer >= 130)
			{
				with (ralseiactor)
				{
					auto_facing = 0;
					scr_move_to_point_over_time(xstart, ystart, 15);
				}
				switchtimer = 50;
			}
		}
	}
	if (minigame == 2)
	{
		mus_volume(global.currentsong[1], 0, 30);
		global.interact = 1;
		snd_play(snd_won);
		scr_fadeout(15);
		timer = 0;
		minigame = 3;
	}
	if (minigame == 3)
	{
		timer++;
		if (timer == 30)
		{
			obj_mainchara.x = pillaremerge.x + 280;
			obj_mainchara.cutscene = 0;
			with (obj_caterpillarchara)
				instance_destroy();
			with (obj_actor)
				instance_destroy();
			caterpillarsus = scr_makecaterpillar(obj_mainchara.x - 60, (obj_mainchara.y - 16) + 2, 2, 0);
			caterpillarral = scr_makecaterpillar(obj_mainchara.x - 180, obj_mainchara.y - 12 - 2, 3, 1);
			caterpillarnoe = scr_makecaterpillar(obj_mainchara.x - 4 - 120, (obj_mainchara.y - 20) + 2, 4, 2);
			with (obj_caterpillarchara)
				scr_caterpillar_interpolate();
			timer = 0;
			minigame = 4;
			global.interact = 1;
		}
	}
	if (minigame == 4)
	{
		timer++;
		if (timer == 3)
		{
			cutscene_master = scr_cutscene_make();
			scr_maincharacters_actors();
			minigame++;
		}
	}
	if (minigame == 5)
	{
		minigame = -999;
		c_fadein(15);
		c_wait(45);
		c_sel(su);
		c_sprite(spr_susie_pose);
		c_wait(10);
		c_speaker("susie");
		c_msgsetloc(0, "\\E5* Hell yeah^1! Take that^1, you stupid mice!/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_936_0");
		c_talk_wait();
		c_sel(ra);
		c_sprite(spr_ralsei_laugh);
		c_addxy(0, 6);
		c_wait(10);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\E2* It's nice seeing you enjoy a puzzle^1, Susie./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_944_0");
		c_talk_wait();
		c_facing("r");
		c_addxy(0, -6);
		c_sel(su);
		c_sprite(spr_cutscene_11b_susie_scratch);
		c_addxy(0, -6);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_wait(5);
		c_speaker("susie");
		c_msgsetloc(0, "\\EK* Well. Maybe they aren't awful if you do 'em like that./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_957_0");
		c_talk_wait();
		c_wait(2);
		c_autowalk(1);
		c_facing("l");
		c_addxy(0, 6);
		c_wait(2);
		c_msgsetloc(0, "\\EL* ..^1. not bad^1, Noelle. That was kinda smart./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_966_0");
		c_talk_wait();
		c_sel(no);
		c_sprite(spr_noelle_blush_dw);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EM* H-Huh? Th..^1. thanks.../%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_972_0");
		c_talk_wait();
		c_speaker("susie");
		c_msgsetloc(0, "\\EY* Heh^1, maybe next time I'll let you do my homework./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_977_0");
		c_talk_wait();
		c_sel(su);
		c_sprite(spr_susie_laugh_dw);
		c_addxy(4, 2);
		c_autowalk(0);
		c_imagespeed(0.25);
		c_soundplay_wait(snd_suslaugh);
		c_halt();
		c_autowalk(1);
		c_facing("l");
		c_addxy(-4, -2);
		c_speaker("noelle");
		c_msgsetloc(0, "\\E6* (Can I?)/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_992_0");
		c_talk_wait();
		c_var_instance(id, "minigame", 6);
		c_var_instance(id, "timer", 0);
		c_actortokris();
		c_var_instance(id, "makecaters", 1);
		c_terminatekillactors();
	}
	if (makecaters == 1)
	{
		with (obj_caterpillarchara)
			instance_destroy();
		caterpillarsus = scr_makecaterpillar(obj_mainchara.x - 60, (obj_mainchara.y - 16) + 2, 2, 0);
		caterpillarral = scr_makecaterpillar(obj_mainchara.x - 180, obj_mainchara.y - 12 - 2, 3, 1);
		caterpillarnoe = scr_makecaterpillar(obj_mainchara.x - 4 - 120, (obj_mainchara.y - 20) + 2, 4, 2);
		with (obj_interactablesolid)
		{
			if (visible == 0)
				instance_destroy();
		}
		with (obj_actor)
			instance_destroy();
		var remtarget = caterpillarral.target;
		caterpillarral.target = caterpillarnoe.target;
		caterpillarnoe.target = remtarget;
		with (obj_caterpillarchara)
		{
			visible = true;
			scr_caterpillar_interpolate();
		}
		global.currentsong[0] = snd_init("cybercity.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.97);
		makecaters = 0;
	}
	if (minigame == 6)
	{
		timer++;
		if (timer == 15)
		{
			global.facing = 0;
			global.flag[7] = 0;
			global.interact = 0;
			minigame++;
		}
	}
	if (minigame == 7)
	{
		if (obj_mainchara.x < (pillaremerge.x + 80))
		{
			if (obj_kris_headobj.miceheld == 0)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E8* I think we're done with the mice for now^1, Kris./%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_1047_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EK* Hey^1, the hell are you doing with our mice?!/", "obj_room_dw_city_postbaseball_slash_Step_0_gml_1052_0");
				msgnextloc("\\EK* We worked on getting those together!/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_1053_0");
			}
			global.interact = 1;
			global.facing = 1;
			d_make();
			minigame = 8;
		}
		if (bucketpillar.completed == 1)
			minigame = 9;
	}
	if (minigame == 8 && !d_ex())
	{
		obj_mainchara.x = pillaremerge.x + 82;
		global.interact = 0;
		minigame = 7;
	}
	if (minigame == 9)
	{
		if (obj_mainchara.x < (bucketpillar.x - 120))
		{
			scr_speaker("susie");
			msgsetloc(0, "\\EK* What are you doing? The path is open!/%", "obj_room_dw_city_postbaseball_slash_Step_0_gml_1076_0");
			global.interact = 1;
			global.facing = 1;
			d_make();
			minigame = 10;
		}
	}
	if (minigame == 10 && !d_ex())
	{
		obj_mainchara.x = (bucketpillar.x - 120) + 2;
		global.interact = 0;
		minigame = 9;
	}
}
