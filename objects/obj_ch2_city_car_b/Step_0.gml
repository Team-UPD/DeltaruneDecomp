if (global.plot >= 85 && global.plot < 90)
{
	if (con == 0)
	{
		con = 1;
		global.interact = 1;
		global.facing = 1;
		scr_getchar(4);
		scr_makecaterpillar(obj_mainchara.x + 60, obj_mainchara.y + 1000, 4, 0);
		with (obj_caterpillarchara)
			visible = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
		global.facing = 0;
		qu = actor_count + 1;
		qu_actor = instance_create(camerax(), cameray() - 300, obj_actor);
		scr_actor_setup(qu, qu_actor, "queen");
		qu_actor.sprite_index = spr_queen_walk_left;
		c_sel(qu);
		c_visible(0);
		c_sel(no);
		c_visible(0);
		c_mus2("volume", 0, 30);
	}
	if (realign)
	{
		realign = false;
		var xpos = queencar.x + 82;
		var ypos = queencar.y;
		with (obj_mainchara)
		{
			x = xpos;
			y = ypos;
		}
	}
	if (con == 1)
	{
		con = 2;
		alarm[0] = 30;
		instance_destroy(island_collider);
		c_wait(30);
		c_mus("free_all");
		c_var_instance(queencar, "y", 190);
		c_var_lerp_instance(queencar, "x", camerax() - 200, 3130, 30);
		c_wait(25);
		c_soundplay(snd_car_screech);
		c_wait(20);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Get In/%", "obj_ch2_city_car_b_slash_Step_0_gml_68_0");
		c_talk_wait();
		c_sel(kr);
		c_walkdirect(3212, kr_actor.y, 20);
		c_wait(21);
		c_walkdirect(3212, 210, 25);
		c_wait(15);
		c_visible(0);
		c_soundplay(snd_car_doorslam);
		c_wait(20);
		c_pannable(1);
		c_panobj(kr_actor, 15);
		c_wait(16);
		c_var_instance(id, "realign", true);
		c_wait(5);
		c_pannable(0);
		c_wait(15);
		c_waitcustom();
	}
	if (con == 3 && customcon == 1)
	{
		con = 4;
		with (obj_queencar)
			con = 1;
		layer_hspeed("BG_Cityscape", -0.5);
	}
	if (con <= 5 && i_ex(obj_queencar))
	{
		with (obj_queencar)
		{
			if (x > 3320 && y > 188)
				depth = 9001210;
		}
	}
	if (con == 4 && queencar.x >= 3540)
	{
		if (!queencar.pause_x_move)
		{
			queencar.pause_x_move = true;
			queencar.pause_auto_talk = true;
			layer_hspeed("BG_Coaster_Railings", -4);
			layer_hspeed("BG_Coaster_Railings_Top", -4);
			layer_hspeed("BG_Bridge_Lining", -4);
			layer_hspeed("BG_Cityscape", -4.5);
			with (girder_marker)
				hspeed = -4;
			with (girder_marker_2)
				hspeed = -4;
		}
		if (car_convo == 0)
		{
			car_convo = 1;
			scr_speaker("queen");
			msgsetloc(0, "\\E1* Kris We Have To Drive To Find Noelle/", "obj_ch2_city_car_b_slash_Step_0_gml_123_0");
			msgnextloc("\\E6* Turn On The High Beams/%", "obj_ch2_city_car_b_slash_Step_0_gml_124_0");
			d_make();
		}
		if (car_convo == 1 && !d_ex())
		{
			talk_timer++;
			if (talk_timer == 5)
			{
				car_convo = 2;
				alarm[1] = 30;
				queen_beam.visible = 1;
				snd_play(snd_item);
			}
		}
		if (car_convo == 3 && !d_ex())
		{
			car_convo = 98;
			alarm[1] = 30;
			scr_speaker("queen");
			msgsetloc(0, "\\E9* When She Sees The Queen Signal She Will Come Running/", "obj_ch2_city_car_b_slash_Step_0_gml_146_0");
			scr_anyface_next("noelle", 2);
			msgnextloc("\\E2* W..^1. Why do you..^1. need to find Noelle so badly?/", "obj_ch2_city_car_b_slash_Step_0_gml_148_0");
			scr_anyface_next("queen", 2);
			msgnextloc("\\E2* What Are You Saying This City Is Dangerous/", "obj_ch2_city_car_b_slash_Step_0_gml_150_0");
			msgnextloc("\\EB* Imagine Poor Noelle Clipping Into A Wall Somewhere/", "obj_ch2_city_car_b_slash_Step_0_gml_151_0");
			msgnextloc("\\ED* Wasting Away From Potassium Deficiency/", "obj_ch2_city_car_b_slash_Step_0_gml_152_0");
			scr_anyface_next("noelle", 2);
			msgnextloc("\\E2* Y..^1. you're actually worried about her?/", "obj_ch2_city_car_b_slash_Step_0_gml_154_0");
			scr_anyface_next("queen", 1);
			msgnextloc("\\E1* I Would Be If I Wasn't Going To Find Her/", "obj_ch2_city_car_b_slash_Step_0_gml_156_0");
			scr_anyface_next("noelle", 3);
			msgnextloc("\\E3* .../", "obj_ch2_city_car_b_slash_Step_0_gml_158_0");
			msgnextloc("\\E2* B..^1. but why her?/", "obj_ch2_city_car_b_slash_Step_0_gml_159_0");
			msgnextloc("\\E3* Wait^1, let me guess..^1. is it because.../", "obj_ch2_city_car_b_slash_Step_0_gml_160_0");
			msgnextloc("\\E9* She's weak enough to make into your peon?/", "obj_ch2_city_car_b_slash_Step_0_gml_161_0");
			scr_anyface_next("queen", 1);
			msgnextloc("\\E1* Haha No/", "obj_ch2_city_car_b_slash_Step_0_gml_163_0");
			msgnextloc("\\EA* Just The Opposite/", "obj_ch2_city_car_b_slash_Step_0_gml_164_0");
			msgnextloc("\\EB* It's Because She's Strong/", "obj_ch2_city_car_b_slash_Step_0_gml_165_0");
			scr_anyface_next("noelle", 11);
			msgnextloc("\\EB* H..^1. huh? What do you--/", "obj_ch2_city_car_b_slash_Step_0_gml_167_0");
			scr_anyface_next("queen", 2);
			msgnextloc("\\E2* Kris Stop The Car/%", "obj_ch2_city_car_b_slash_Step_0_gml_169_0");
			d_make();
		}
		if (crank_volume)
		{
			crank_volume = false;
			snd_volume(global.currentsong[1], 1, 15);
		}
		if (car_convo == 99 && !d_ex())
		{
			queen_beam.visible = 0;
			con = 5;
			queencar.pause_x_move = false;
			shift_road = false;
			layer_hspeed("BG_Coaster_Railings", 0);
			layer_hspeed("BG_Coaster_Railings_Top", 0);
			layer_hspeed("BG_Bridge_Lining", 0);
			layer_hspeed("BG_Cityscape", 0);
		}
	}
	if (con == 5 && queencar.x >= 3590)
	{
		queencar.pause_x_move = true;
		queencar.pause_y_move = true;
		if (queencar.y > 180)
			queencar.y -= 2;
		else
			queencar.y += 2;
		if (abs(queencar.y - 180) <= 2)
		{
			queencar.y = 180;
			con = 30;
			queencar.con = 0;
			queencar.active = 0;
		}
	}
	if (con == 30)
	{
		con = 49;
		alarm[0] = 30;
		c_waitcustom_end();
		c_sel(qu);
		c_setxy(queencar.x + 40, 140);
		c_sel(kr);
		c_setxy(queencar.x + 40, 194);
		c_sel(no);
		c_setxy(queencar.x, 178);
		c_wait(10);
		c_sel(qu);
		c_autodepth(0);
		c_depth(queencar.depth - 100);
		c_visible(1);
		c_walkdirect(queencar.x + 335, 141, 15);
		c_delayfacing(16, "l");
		c_sel(kr);
		c_autodepth(0);
		c_depth(queencar.depth - 100);
		c_visible(1);
		c_walkdirect(queencar.x + 230, 194, 15);
		c_delayfacing(16, "l");
		c_sel(no);
		c_autodepth(0);
		c_depth(queencar.depth - 100);
		c_visible(1);
		c_autowalk(0);
		c_sprite(spr_cutscene_13_noelle_box_walk_right);
		c_imagespeed(0.25);
		c_walkdirect(queencar.x + 175, 178, 15);
		c_delaycmd(16, "imagespeed", 0);
		c_delaycmd(16, "sprite", spr_cutscene_13_noelle_box_walk_left);
		c_wait(20);
		c_speaker("noelle");
		c_msgsetloc(0, "\\EC* What's..^1. wrong with it?/%", "obj_ch2_city_car_b_slash_Step_0_gml_263_0");
		c_talk_wait();
		c_soundplay(snd_badexplosion);
		c_var_instance(id, "explosion", true);
		c_var_instance(queencar, "visible", 0);
		c_sel(kr);
		c_autowalk(0);
		c_walk("r", 12, 4);
		c_sel(no);
		c_autowalk(0);
		c_walk("r", 13, 4);
		c_wait(30);
		c_sel(qu);
		c_facing("d");
		c_sel(no);
		c_sprite(spr_cutscene_13_noelle_box_walk_right);
		c_sel(kr);
		c_autowalk(1);
		c_facing("r");
		c_speaker("queen");
		c_msgsetloc(0, "\\EB* Phew/", "obj_ch2_city_car_b_slash_Step_0_gml_284_0");
		c_msgnextloc("\\E9* I Was Just Concerned Because It Hadn't Exploded Yet/%", "obj_ch2_city_car_b_slash_Step_0_gml_285_0");
		c_talk_wait();
		c_sel(qu);
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\EA* Looks Like We'll Have To Split Up On Foot/%", "obj_ch2_city_car_b_slash_Step_0_gml_293_0");
		c_talk_wait();
		c_facing("u");
		c_speaker("queen");
		c_msgsetloc(0, "\\E5* .../%", "obj_ch2_city_car_b_slash_Step_0_gml_300_0");
		c_talk_wait();
		c_facing("l");
		c_speaker("queen");
		c_msgsetloc(0, "\\E9* Kris If You See Noelle/", "obj_ch2_city_car_b_slash_Step_0_gml_307_0");
		c_msgnextloc("\\EA* Tell Her My Knowledge Of Her Preferences Is Absolute/", "obj_ch2_city_car_b_slash_Step_0_gml_308_0");
		c_msgnextloc("\\ED* And If She Needs Proof/", "obj_ch2_city_car_b_slash_Step_0_gml_309_0");
		c_msgnextloc("\\E1* Use This/%", "obj_ch2_city_car_b_slash_Step_0_gml_310_0");
		c_talk_wait();
		c_walk_wait("l", 5, 5);
		c_speaker("no_name");
		c_msgsetloc(0, "* (Queen's Mixtape was thrown into your KEY ITEMS.)/%", "obj_ch2_city_car_b_slash_Step_0_gml_317_0");
		c_talk_wait();
		c_walk("r", 10, 50);
		c_speaker("queen");
		c_msgsetloc(0, "\\E1* Toodles/%", "obj_ch2_city_car_b_slash_Step_0_gml_324_0");
		c_talk_wait();
		c_pannable(1);
		c_panspeed(8, 0, 65);
		c_sel(no);
		c_autowalk(0);
		c_sprite(spr_cutscene_13_noelle_box_walk_right);
		c_imagespeed(0.25);
		c_walk("r", 6, 64);
		c_delaycmd(65, "sprite", spr_cutscene_13_noelle_box_walk_down);
		c_delaywalk(65, "d", 6, 18);
		c_sel(kr);
		c_walk("r", 6, 65);
		c_delaywalk(66, "d", 6, 18);
		c_sel(qu);
		c_visible(0);
		c_wait(90);
		c_sel(no);
		c_halt();
		c_autowalk(0);
		c_sprite(spr_cutscene_13_noelle_box_remove);
		c_imageindex(0);
		c_imagespeed(0.25);
		c_wait(10);
		c_sel(kr);
		c_facing("l");
		c_wait(20);
		c_sel(no);
		c_imagespeed(0);
		c_wait(10);
		c_autowalk(1);
		c_facing("r");
		c_msgside("top");
		c_speaker("noelle");
		c_msgsetloc(0, "\\EI* Ph..^1. phew.../", "obj_ch2_city_car_b_slash_Step_0_gml_340_0");
		c_msgnextloc("\\E9* .../", "obj_ch2_city_car_b_slash_Step_0_gml_341_0");
		c_msgnextloc("\\E3* Somehow^1, I feel like..^1. we're almost out of here./", "obj_ch2_city_car_b_slash_Step_0_gml_342_0");
		c_msgnextloc("\\E4* Let's go^1, Kris!/%", "obj_ch2_city_car_b_slash_Step_0_gml_343_0");
		c_talk_wait();
		c_pannable(1);
		c_panobj(kr_actor, 15);
		c_wait(16);
		c_pannable(0);
	}
	if (con == 50 && !d_ex())
	{
		con = 59;
		alarm[0] = con;
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 60 && !i_ex(obj_cutscene_master))
	{
		con = 99;
		global.plot = 90;
		global.interact = 0;
		global.facing = 0;
		with (obj_ch2_room_city_traffic_jam)
			release_hor_jam = true;
		if (i_ex(queencar))
			instance_destroy(queencar);
	}
	if (release_car)
	{
		queencar.x += 5;
		if (queencar.x <= 400)
			release_car = false;
	}
	if (explosion)
	{
		explodetimer++;
		if (explodetimer == 1)
		{
			explosion_marker = instance_create(queencar.x + 50, 205, obj_marker);
			explosion_marker.sprite_index = spr_realisticexplosion;
			explosion_marker.image_xscale = 4;
			explosion_marker.image_yscale = 2;
			with (explosion_marker)
				scr_depth();
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
	}
	if (queen_beam != -4 && queen_beam.visible)
	{
		queen_beam.x = queencar.x + 52;
		queen_beam.y = queencar.y - 170;
	}
}
if (cityscape_parallax)
	layer_x(cityscape, camerax() * -0.0125);
