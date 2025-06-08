if (weird == true)
{
	layer_set_visible("TILES_Doorway", 1);
	with (blocker)
		instance_destroy();
	instance_destroy();
}
if (dogcon == 0)
{
	if (con == 1 && !d_ex())
	{
		layer_set_visible("TILES_BlockedEntrance", 1);
		entranceblock = instance_create(600, 1360, obj_solidblocksized);
		entranceblock.image_xscale = 2;
		queen_monitor.turnon = 1;
		queen_monitor2.turnon = 1;
		global.interact = 1;
		con++;
	}
	if (con == 2 && !d_ex())
	{
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Welcome To My Extravagant Dining Bonanza/%", "obj_controller_dining3_slash_Step_0_gml_19_0");
		d_make();
		con = 2.5;
		timer = 0;
	}
	if (con == 2.5 && !d_ex())
	{
		timer++;
		if (timer == 1)
		{
			for (var i = 0; i < 7; i++)
			{
				for (var ii = 0; ii < 5; ii++)
				{
					if (!(ii == 0 && i == 2) && !(ii == 0 && i == 3) && !(ii == 0 && i == 4))
						instance_create(109 + (i * 160), 240 + (ii * 240), obj_saucer_dining3Spawner);
				}
			}
			for (var i = 0; i < 6; i++)
			{
				for (var ii = 0; ii < 4; ii++)
					instance_create(189 + (i * 160), 360 + (ii * 240), obj_saucer_dining3Spawner);
			}
		}
		if (instance_exists(obj_saucer))
		{
			other.con = 2.9;
			timer = 0;
		}
	}
	if (con == 2.9 && !d_ex())
	{
		timer++;
		if (timer == 1)
			snd_play(snd_impact);
		if (timer == 1)
			instance_create(0, 0, obj_shake);
		if (timer == 30)
			con = 3;
	}
	if (con == 3 && !d_ex())
	{
		scr_speaker("queen");
		msgsetloc(0, "\\ED* Only One Of These Delicious Platters Has The Key/", "obj_controller_dining3_slash_Step_0_gml_72_0");
		msgnextloc("\\E1* I Am Sure Searching Will Be An Addicting Game of Chance/%", "obj_controller_dining3_slash_Step_0_gml_73_0");
		d_make();
		con++;
	}
	if (con == 4 && !d_ex())
	{
		queen_monitor.turnoff = 1;
		queen_monitor2.turnoff = 1;
		scr_speaker("susie");
		msgsetloc(0, "\\EH* H-how the hell are we gonna search all these!?/%", "obj_controller_dining3_slash_Step_0_gml_82_0");
		d_make();
		con++;
	}
	if (con == 5 && !d_ex())
	{
		global.interact = 0;
		dogSpawned = 0;
		con++;
	}
	if (con == 6 && checkCount == 3)
	{
		global.interact = 1;
		queen_monitor.turnon = 1;
		queen_monitor2.turnon = 1;
		scr_speaker("queen");
		msgsetloc(0, "\\E1* ERROR: Results: Key Not Found/", "obj_controller_dining3_slash_Step_0_gml_98_0");
		msgnextloc("\\EN* Did You Mean: Give Up?/%", "obj_controller_dining3_slash_Step_0_gml_99_0");
		attempt++;
		d_make();
		con++;
	}
	if (con == 7 && !d_ex())
	{
		if (instance_exists(obj_dogtable_idle))
		{
			with (obj_dogtable_idle)
			{
				sprite_index = spr_saucernolegs;
				scr_afterimage();
				instance_destroy();
			}
		}
		with (obj_saucer)
		{
			scr_afterimage();
			instance_destroy();
		}
		timer = 0;
		con++;
	}
	if (con == 8)
	{
		timer++;
		if (timer == 1)
		{
			for (var i = 0; i < 7; i++)
			{
				for (var ii = 0; ii < 5; ii++)
				{
					if (!(ii == 0 && i == 2) && !(ii == 0 && i == 3) && !(ii == 0 && i == 4))
						instance_create(109 + (i * 160), 240 + (ii * 240), obj_saucer_dining3Spawner);
				}
			}
			for (var i = 0; i < 6; i++)
			{
				for (var ii = 0; ii < 4; ii++)
					instance_create(189 + (i * 160), 360 + (ii * 240), obj_saucer_dining3Spawner);
			}
		}
		if (timer > 5 && instance_exists(obj_saucer))
		{
			timer = 0;
			con = 8.9;
		}
	}
	if (con == 8.9 && !d_ex())
	{
		timer++;
		if (timer == 1)
			snd_play(snd_impact);
		if (timer == 1)
			instance_create(0, 0, obj_shake);
		if (timer == 30)
			con = 9;
	}
	if (con == 9)
	{
		with (obj_saucer)
		{
			if (x == 909 && y == 1200 && other.dogSpawned == 0)
			{
				inst = collision_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, id, 1, 0);
				if (inst == -4)
				{
					instance_create(x - 16, y, obj_dogtable_idle);
					other.dogtabletargx = x;
					other.dogtabletargy = y;
					other.dogSpawned = 1;
					instance_destroy();
				}
			}
		}
		with (obj_saucer)
		{
			if (x == 269 && y == 480 && other.dogSpawned == 0)
			{
				inst = collision_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, id, 1, 0);
				if (inst == -4)
				{
					instance_create(x - 16, y, obj_dogtable_idle);
					other.dogtabletargx = x;
					other.dogtabletargy = y;
					other.dogSpawned = 1;
					instance_destroy();
				}
			}
		}
		queen_monitor.turnoff = 1;
		queen_monitor2.turnoff = 1;
		checkCount = 0;
		if (attempt == 1 || attempt == 2)
			con = 10;
		else
			con = 5;
	}
	if (con == 10)
	{
		global.interact = 1;
		if (attempt == 1)
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\EL* All the platters got mixed up again!?/%", "obj_controller_dining3_slash_Step_0_gml_210_0");
			d_make();
			con = 5;
		}
		if (attempt == 2)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\EK* Hey^1, Kris^1, isn't there something else we can do!?/%", "obj_controller_dining3_slash_Step_0_gml_217_0");
			d_make();
			con = 5;
		}
	}
}
if (dogcon == 1 && !d_ex())
{
	global.interact = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	table = instance_find(obj_dogtable_idle, 0);
	basex = obj_dogtable_idle.x + 50;
	basey = obj_dogtable_idle.y + 84;
	starty = obj_dogtable_idle.y;
	if (basex >= 909)
		loc = "botright";
	else
		loc = "topright";
	if (loc == "botright")
	{
		if (obj_mainchara.y < 1190)
			moveloc = "above";
		else
			moveloc = "below";
	}
	if (loc == "topright")
	{
		if (obj_mainchara.y < 470)
			moveloc = "above";
		else
			moveloc = "below";
	}
	dogcon++;
}
if (dogcon == 2)
{
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Hey^1, there's something under this one!/%", "obj_controller_dining3_slash_Step_0_gml_246_0");
	c_talk_wait();
	if (moveloc == "below")
	{
		c_sel(su);
		c_walkdirect(basex - 20 - 6, basey - 20, 12);
		c_sel(ra);
		c_walkdirect(basex - 12 - 40 - 12 - 20, (basey - 20) + 2, 12);
		c_sel(kr);
		c_walkdirect(basex + 12 + 20 + 12, (basey - 20) + 2, 12);
		c_wait(12);
		c_sel(kr);
		c_facing("u");
		c_sel(su);
		c_facing("u");
		c_sel(ra);
		c_facing("u");
	}
	if (moveloc == "above")
	{
		c_sel(su);
		c_walkdirect(basex - 20 - 6, basey - 20 - 120, 12);
		c_sel(ra);
		c_walkdirect(basex - 12 - 40 - 12 - 20, ((basey - 20) + 2) - 120 - 10, 12);
		c_sel(kr);
		c_walkdirect((basex + 12 + 20 + 12) - 4, (((basey - 20) + 2) - 120) + 2, 12);
		c_wait(12);
		c_sel(kr);
		c_facing("d");
		c_sel(su);
		c_facing("d");
		c_sel(ra);
		c_facing("d");
	}
	c_wait(12);
	c_instance(basex + 4, (basey - 120) + 16, 276);
	c_soundplay(snd_b);
	c_wait(30);
	c_var_instance(table, "x", basex - 50);
	c_var_instance(table, "y", basey - 84);
	c_var_instance(table, "draw_mode", 2);
	c_var_instance(table, "image_speed", 0.25);
	c_wait(20);
	if (loc == "botright")
		dogcon = 3.1;
	else
		dogcon = 4.1;
}
if (dogcon == 3.1)
{
	dogcon = 42069;
	c_var_instance(table, "image_speed", 0.25);
	c_var_lerp_instance(table, "x", 909, 1090, 6);
	c_wait(6);
	c_soundplay(snd_impact);
	c_var_instance(table, "draw_mode", 3);
	c_var_instance(table, "toss", 1);
	c_var_instance(table, "tossdir", "left");
	c_var_lerp_instance(table, "x", 1080, 1072, 4);
	c_var_lerp_instance(table, "y", 1200, 1184, 4);
	c_wait(2);
	c_var_lerp_instance(table, "y", 1184, 1200, 4);
	c_wait(2);
	c_var_instance(table, "image_speed", 0);
	c_sel(su);
	c_walkdirect((basex - 46) + 20, basey - 102, 12);
	c_sel(kr);
	c_walkdirect((basex - 46 - 40) + 22, (basey - 102) + 16, 12);
	c_sel(ra);
	c_walkdirect((basex - 46 - 80) + 22, (basey - 102) + 4, 12);
	c_wait(12);
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_speaker("susie");
	global.msc = 1187;
	scr_text(global.msc);
	c_talk_wait();
	c_sel(kr);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_wait(30);
	c_var_lerp_instance(table, "x", 1072, basex - 35 - 52, 8);
	c_var_instance(table, "depth", 800000);
	c_pannable(1);
	c_panspeed(-2, 0, 8);
	c_wait(5);
	c_soundplay(snd_jump);
	c_sel(su);
	c_jump((((basex - 46 - 40) + 22 + 30 + 11) - 20) + 2, ((basey - 102) + 16) - 8 - 12 - 12 - 14, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_susie_dw_jump_ball);
	c_wait(2);
	c_sel(kr);
	c_jump((basex - 46 - 40) + 22 + 6, ((basey - 102) + 16) - 8 - 12, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_kris_jump_ball);
	c_wait(2);
	c_sel(ra);
	c_jump((((basex - 46 - 40) + 22) - 30 - 20) + 27, ((((basey - 102) + 16) - 8 - 16 - 12 - 6) + 33) - 8, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_ralsei_jump_ball);
	c_wait(20);
	c_sel(su);
	c_autowalk(1);
	c_sprite(spr_susie_sheeh);
	c_setxy(940, 1156);
	c_wait(2);
	c_sel(kr);
	c_autowalk(1);
	c_facing("d");
	c_wait(2);
	c_sel(ra);
	c_setxy(((basex - 46 - 40) + 22) - 30 - 20, ((basey - 102) + 16) - 8 - 16 - 12 - 6);
	c_sprite(spr_ralsei_hurt);
	c_speaker("susie");
	global.msc = 1188;
	scr_text(global.msc);
	c_talk_wait();
	c_var_instance(id, "dogcon", 69);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (dogcon == 4.1)
{
	dogcon = 42069;
	c_var_instance(table, "image_speed", 0.25);
	c_var_lerp_instance(table, "x", 275, 80, 6);
	c_wait(6);
	c_soundplay(snd_impact);
	c_var_instance(table, "draw_mode", 3);
	c_var_instance(table, "toss", 1);
	c_var_instance(table, "tossdir", "right");
	c_var_lerp_instance(table, "x", 80, 116, 4);
	c_var_lerp_instance(table, "y", starty, starty - 16, 4);
	c_wait(2);
	c_var_lerp_instance(table, "y", starty - 16, starty, 4);
	c_wait(2);
	c_var_instance(table, "image_speed", 0);
	c_sel(su);
	c_walkdirect(((basex - 46) + 20) - 60, basey - 102, 12);
	c_sel(kr);
	c_walkdirect((basex - 46 - 40) + 22 + 20 + 15, (basey - 102) + 16, 12);
	c_sel(ra);
	c_walkdirect((basex - 46 - 80) + 22 + 120, (basey - 102) + 4, 12);
	c_wait(12);
	c_sel(kr);
	c_facing("l");
	c_sel(su);
	c_facing("l");
	c_sel(ra);
	c_facing("l");
	c_speaker("susie");
	global.msc = 1187;
	scr_text(global.msc);
	c_talk_wait();
	c_var_lerp_instance(table, "x", 116, 270, 8);
	c_var_instance(table, "depth", 800000);
	c_pannable(1);
	c_pan(0, 256, 22);
	c_wait(4);
	c_soundplay(snd_jump);
	c_sel(su);
	c_jump((((basex - 46 - 40) + 22 + 30 + 11) - 20) + 2 + 30, ((basey - 102) + 16) - 8 - 12 - 12 - 14, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_susie_dw_jump_ball);
	c_wait(2);
	c_sel(kr);
	c_jump((basex - 46 - 40) + 22 + 6 + 30, ((basey - 102) + 16) - 8 - 12, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_kris_jump_ball);
	c_wait(1);
	c_sel(ra);
	c_jump((((basex - 46 - 40) + 22) - 30 - 20) + 27 + 30, ((((basey - 102) + 16) - 8 - 16 - 12 - 6) + 33) - 8, 20, 20);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sprite(spr_ralsei_jump_ball);
	c_wait(20);
	c_sel(kr);
	c_autowalk(1);
	c_facing("d");
	c_sel(su);
	c_autowalk(1);
	c_setxy(334, 440);
	c_sprite(spr_susie_sheeh);
	c_wait(1);
	c_sel(ra);
	c_setxy((((basex - 46 - 40) + 22) - 30 - 20) + 30, ((basey - 102) + 16) - 8 - 16 - 12 - 6);
	c_sprite(spr_ralsei_hurt);
	c_speaker("susie");
	global.msc = 1188;
	scr_text(global.msc);
	c_talk_wait();
	c_var_instance(id, "dogcon", 69);
	c_pannable(0);
	c_actortokris();
	c_var_instance(84, "x", ((basex - 35) + 50) - 52);
	c_var_instance(84, "y", basey - 44);
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (dogcon == 69)
{
	with (obj_saucer)
	{
		if (i_ex(collider))
		{
			with (collider)
				instance_destroy();
		}
	}
	if (instance_exists(obj_doorB))
	{
		with (obj_doorB)
			instance_destroy();
	}
	with (obj_dogtable_idle)
		instance_destroy();
	if (loc == "botright")
		dogtable = instance_create(((basex - 35) + 50) - 52, basey - 44, obj_dogtable_controlled);
	else
		dogtable = instance_create(((basex - 35) + 52) - 22, basey - 44, obj_dogtable_controlled);
	global.flag[7] = 1;
	global.interact = 0;
	with (obj_caterpillarchara)
		visible = false;
	with (obj_mainchara)
		visible = false;
	dogcon++;
}
if (dogcon == 70)
	timer = 0;
if (dogcon == 71)
{
	if (timer == 0)
	{
		snd_play(snd_sparkle_glock);
		obj_dogtable_controlled.drawcustom = 0;
		with (key)
			depth = 80;
		with (key)
			scr_move_to_point_over_time(other.dogtable.x - (sprite_width / 2), other.dogtable.y - 228, 16);
	}
	timer++;
	if (timer == 20)
	{
		obj_dogtable_controlled.drawcustom = 1;
		obj_dogtable_controlled.raspr = spr_ralsei_up;
		scr_speaker("ralsei");
		msgsetloc(0, "\\EJ* There's the key!!^1! Now we just have to--/%", "obj_controller_dining3_slash_Step_0_gml_539_0");
		d_make();
		dogcon = 72;
		timer = 0;
	}
}
if (dogcon > 69)
{
	if (i_ex(key))
	{
		sparkletimer++;
		if ((sparkletimer % 4) == 0)
		{
			for (var i = 0; i < 1; i++)
			{
				sparkle[i] = instance_create(key.x + 50, key.y + 42, obj_afterimage);
				sparkle[i].sprite_index = spr_sparestar_anim;
				sparkle[i].fadeSpeed = choose(0.01, 0.02);
				sparkle[i].image_xscale = 2;
				sparkle[i].image_yscale = 2;
				sparkle[i].image_speed = 0.5;
				sparkle[i].hspeed = random_range(-3, 3);
				sparkle[i].friction = 0.05;
				sparkle[i].gravity = 0.1;
				sparkle[i].depth = key.depth + 1;
			}
		}
	}
}
if (dogcon == 72 && !d_ex())
{
	timer++;
	if (timer == 29)
	{
		with (dogtable)
			scr_move_to_point_over_time(x, y - 128, 4);
	}
	if (timer == 33)
	{
		for (var i = 0; i < 8; i++)
		{
			shard[i] = instance_create(key.x + 50, key.y + 42, obj_afterimage);
			shard[i].image_xscale = 2;
			shard[i].image_yscale = 2;
			shard[i].sprite_index = spr_keyShard;
			shard[i].direction = (i / 8) * 360;
			shard[i].image_angle = shard[i].direction + random_range(-30, 30);
			shard[i].speed = random_range(6, 10);
			shard[i].depth = key.depth + 1;
		}
		snd_play(snd_break2);
		with (key)
			instance_destroy();
	}
	if (timer == 50)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EL* It BROKE IT?!/%", "obj_controller_dining3_slash_Step_0_gml_603_0");
		d_make();
		dogcon++;
		timer = 0;
	}
}
if (dogcon == 73 && !d_ex())
{
	var dist = round(abs(dogtable.x - 64) / 16);
	dist = clamp(dist, 4, 16);
	var targy;
	if (dogtable.y < 320)
		targy = 360;
	else
		targy = dogtable.y;
	if (timer == 0)
	{
		with (dogtable)
			scr_move_to_point_over_time(640, targy, dist);
	}
	timer++;
	if (timer == (dist + 10))
	{
		with (dogtable)
			scr_move_to_point_over_time(640, -128, (y - 128) / 24);
	}
	if (dogtable.y <= 160 && timer > 18)
	{
		explosion_marker = instance_create(dogtable.x, dogtable.y, obj_marker);
		explosion_marker.image_yscale = 2;
		explosion_marker.image_xscale = 2;
		explosion_marker.sprite_index = spr_realisticexplosion;
		snd_play(snd_badexplosion);
		layer_set_visible("TILES_Doorway", 1);
		layer_set_visible("TILES_Doorway_FG", 1);
		global.flag[381] = 1;
		with (obj_doorW)
			event_user(9);
		dogcon++;
	}
}
