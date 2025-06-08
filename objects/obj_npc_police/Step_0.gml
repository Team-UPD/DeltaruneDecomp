if (i_ex(bars))
{
	if (bars.sprite_index == bg_lw_police_house_bars_open)
	{
		if (global.flag[317] == 0)
			bars.depth = 100000000;
		else
			bars.depth = (obj_mainchara.y > 60) ? 100000000 : 5000;
	}
	else
	{
		with (bars)
			scr_depth();
	}
}
if (i_ex(undynedesk))
{
	with (undynedesk)
		scr_depth();
}
if (i_ex(boombox))
{
	with (boombox)
		scr_depth();
}
if (con < 5)
{
	if (i_ex(keys))
		keys.depth = undynedesk.depth - 10;
}
else if (i_ex(keys))
{
	keys.depth = 0;
}
if (con > -1)
	global.interact = 1;
if (con == 1 && !d_ex())
{
	con = 2;
	undynedesk.sprite_index = spr_undyne_police_table_laugh;
	undynedesk.image_speed = 0.1;
	undyne_slam = true;
	scr_speaker("undyne");
	msgsetloc(0, "\\E0* Haha..^1. DARK WORLD??/", "obj_npc_police_slash_Step_0_gml_60_0");
	msgnextloc("\\E7* Hahahaha..^1. seriously!? Hahahaha!!/", "obj_npc_police_slash_Step_0_gml_61_0");
	msgnextloc("\\E5* NGAAAHahahahahahahah!!!/%", "obj_npc_police_slash_Step_0_gml_62_0");
	d_make();
}
if (undyne_slam)
{
	undyne_slam_timer++;
	if (undyne_slam_timer >= 20)
	{
		undyne_slam_timer = 0;
		snd_play(snd_impact);
	}
}
if (con == 2)
{
	con = 3;
	alarm[0] = 20;
}
if (con == 4 && !d_ex())
{
	con = 5;
	undyne_slam = false;
	undyne_slam_timer = 0;
	undynedesk.sprite_index = spr_undyne_police_table_break;
	undynedesk.image_speed = 0;
	undynedesk.image_index = 0;
	alarm[0] = 8;
}
if (con == 6)
{
	con = 7;
	snd_play(snd_impact);
	instance_create(0, 0, obj_shake);
	undynedesk.sprite_index = spr_undyne_police_table_break;
	undynedesk.image_index = 1;
	keycon = 1;
	alarm[0] = 15;
}
if (con == 8)
{
	con = 9;
	undynedesk.sprite_index = spr_undyne_police_table_surprise;
	undynedesk.image_index = 0;
}
if (keycon == 1)
{
	if (i_ex(keys))
	{
		keycon = 2;
		with (keys)
			scr_jump_to_point(250, 75, 10, 25);
	}
}
if (keycon == 2)
{
	key_turn_timer++;
	if (key_turn_timer >= 25 && keys.image_index == 0)
	{
		snd_play(snd_noise);
		with (keys)
			image_index = 1;
		undynedesk.image_index = 1;
	}
	if (key_turn_timer >= 65 && keys.image_index == 1)
	{
		snd_play(snd_noise);
		with (keys)
			image_index = 2;
	}
	if (key_turn_timer >= 90 && keys.image_index == 2)
		keycon = 3;
}
if (keycon == 3)
{
	pausetimer++;
	if (pausetimer >= 30)
	{
		keycon = 4;
		instance_destroy(keys);
		instance_destroy(undyneinteract);
		instance_destroy(undynesideinteract);
		snd_play(snd_dooropen);
		bars.sprite_index = bg_lw_police_house_bars_open;
		doorcollider = instance_create(223, 95, obj_solidblock);
		doorcollider.image_xscale = 0.35;
		doorcollider.image_yscale = 0.95;
	}
}
if (global.flag[317] == 0 && con == 9 && keycon == 3)
{
	con = 10;
	alarm[0] = 90;
	repeatalarm = true;
}
if (global.flag[317] == 0 && kriscon == 1)
{
	var stopcon = false;
	with (obj_mainchara)
	{
		var runspeed = 8;
		if (x > 130)
		{
			global.facing = 2;
			x -= runspeed;
		}
		if (x <= 130)
		{
			global.facing = 0;
			stopcon = true;
		}
	}
	if (stopcon)
		kriscon = -1;
}
if (con >= 12 && i_ex(doge))
{
	var runspeed = 8;
	doge.image_speed = 0.5;
	doge.depth = 0;
	if (doge.y < 90)
	{
		doge.y += runspeed;
	}
	else if (doge.x > 215)
	{
		doge.x -= runspeed;
	}
	else if (doge.y < 135)
	{
		doge.y += runspeed;
	}
	else if (doge.x > 155)
	{
		doge.x -= runspeed;
		kriscon = 1;
	}
	else if (doge.y < 250)
	{
		doge.y += runspeed;
	}
	else
	{
		instance_destroy(doge);
	}
}
if (con >= 13 && i_ex(dogc))
{
	var runspeed = 8;
	dogc.image_speed = 0.5;
	if (dogc.x < 220 && dogc.y < 65)
	{
		dogc.x += runspeed;
	}
	else
	{
		dogc.depth = 0;
		if (dogc.y < 65)
			dogc.y += runspeed;
		else if (dogc.x > 195)
			dogc.x -= runspeed;
		else if (dogc.y < 120)
			dogc.y += runspeed;
		else if (dogc.x > 145)
			dogc.x -= runspeed;
		else if (dogc.y < 250)
			dogc.y += runspeed;
		else
			instance_destroy(dogc);
	}
}
if (con >= 14 && i_ex(dogd))
{
	var runspeed = 8;
	dogd.image_speed = 0.5;
	if (dogd.x < 230 && dogd.y < 80)
	{
		dogd.x += runspeed;
	}
	else
	{
		dogd.depth = 0;
		if (dogd.y < 80)
		{
			dogd.y += runspeed;
		}
		else
		{
			dogd.depth = 0;
			if (dogd.x > 205)
				dogd.x -= runspeed;
			else if (dogd.y < 130)
				dogd.y += runspeed;
			else if (dogd.x > 160)
				dogd.x -= runspeed;
			else if (dogd.y < 250)
				dogd.y += runspeed;
			else
				instance_destroy(dogd);
		}
	}
}
if (con >= 15 && i_ex(dogb))
{
	var runspeed = 8;
	dogb.image_speed = 0.5;
	if (dogb.x < 230 && dogb.y < 80)
	{
		dogb.x += runspeed;
	}
	else
	{
		dogb.depth = 0;
		if (dogb.y < 80)
		{
			dogb.y += runspeed;
		}
		else if (dogb.x > 205)
		{
			dogb.x -= runspeed;
		}
		else
		{
			dogb.depth = 0;
			if (dogb.y < 130)
				dogb.y += runspeed;
			else if (dogb.x > 160)
				dogb.x -= runspeed;
			else if (dogb.y < 250)
				dogb.y += runspeed;
			else
				instance_destroy(dogb);
		}
	}
}
if (con >= 16 && i_ex(doga))
{
	var runspeed = 8;
	doga.image_speed = 0.5;
	if (doga.x < 230 && doga.y < 80)
	{
		doga.x += runspeed;
	}
	else
	{
		doga.depth = 0;
		if (doga.y < 80)
		{
			doga.y += runspeed;
		}
		else if (doga.x > 205)
		{
			doga.x -= runspeed;
		}
		else
		{
			doga.depth = 0;
			if (doga.y < 130)
				doga.y += runspeed;
			else if (doga.x > 160)
				doga.x -= runspeed;
			else if (doga.y < 250)
				doga.y += runspeed;
			else
				instance_destroy(doga);
		}
	}
}
if (con == 17)
{
	con = 18;
	repeatalarm = false;
}
if (con == 19)
{
	if (undyne == -1)
	{
		deskchairless.visible = 1;
		deskchairless.depth = obj_mainchara.depth + 10;
		undyne = scr_marker(147, 91, spr_undyne_walk_down);
		undyne.image_speed = 0;
		undyne.depthcancel = 1;
		undyne.depth = deskchairless.depth + 100;
		undynedesk.sprite_index = spr_lw_police_table_broken;
		undynedesk.depthcancel = 1;
		undynedesk.depth = deskchairless.depth + 200;
		scr_speaker("undyne");
		msgsetloc(0, "\\E2* H-HEY^1, WAIT!!!!/%", "obj_npc_police_slash_Step_0_gml_430_0");
		d_make();
		global.facing = 0;
	}
	con = 20;
	alarm[0] = 10;
}
if (con == 21)
{
	undyne.image_speed = 0.25;
	if (undyne.x < 200 && undyne.y < 125)
	{
		undyne.sprite_index = spr_undyne_walk_right;
		undyne.x += 7;
	}
	else if (undyne.y < 125)
	{
		undyne.depth = 0;
		if (deskchairless.visible == 1)
			deskchairless.visible = 0;
		undyne.sprite_index = spr_undyne_walk_down;
		undyne.y += 7;
	}
	else if (undyne.x > 150)
	{
		undyne.sprite_index = spr_undyne_walk_left;
		undyne.x -= 7;
	}
	else if (undyne.y < 180)
	{
		undyne.sprite_index = spr_undyne_walk_down;
		undyne.y += 7;
	}
	else
	{
		con = 22;
		undyne.image_speed = 0;
		undyne.image_index = 0;
	}
}
if (con == 22 && !d_ex())
{
	con = 50;
	undyne.visible = 0;
	scr_litemget(10);
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	un = 2;
	un_actor = instance_create(undyne.x, undyne.y, obj_actor);
	scr_actor_setup(un, un_actor, "undyne");
	un_actor.sprite_index = spr_undyne_exasperated;
	c_sel(un);
	c_autowalk(0);
	c_imagespeed(0);
	c_speaker("undyne");
	c_msgsetloc(0, "\\E2* NGAAHHHH!!^1! NOT AGAIN!!!/%", "obj_npc_police_slash_Step_0_gml_501_0");
	c_talk_wait();
	c_sprite(spr_undyne_walk_up);
	c_halt();
	c_speaker("undyne");
	c_msgsetloc(0, "\\E4* Looks like I gotta go recapture those criminals.../%", "obj_npc_police_slash_Step_0_gml_508_0");
	c_talk_wait();
	c_sprite(spr_undyne_walk_up);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_walk_wait("u", 3, 20);
	c_sprite(spr_undyne_walk_left);
	c_sel(kr);
	c_facing("r");
	c_speaker("undyne");
	c_msgsetloc(0, "\\E0* Hey^1, by the way^1, that yellow glasses lady./", "obj_npc_police_slash_Step_0_gml_522_0");
	c_msgnextloc("\\E2* Is she your teacher?/", "obj_npc_police_slash_Step_0_gml_523_0");
	c_msgnextloc("\\E7* She kinda had an accident earlier with her^1, uh^1, bike./", "obj_npc_police_slash_Step_0_gml_524_0");
	c_msgnextloc("\\E7* Just wanted to make sure she was feeling better./", "obj_npc_police_slash_Step_0_gml_525_0");
	c_msgnextloc("\\E1* So^1, uh..^1. give her this!/", "obj_npc_police_slash_Step_0_gml_526_0");
	c_facenext("none", 0);
	c_msgnextloc("* (You got a heart-shaped box of candies that says \"Get Well Soon\".)/", "obj_npc_police_slash_Step_0_gml_528_0");
	c_msgnextloc("* (It has \"to your bike\" hastily scrawled underneath the Get Well Soon.)/", "obj_npc_police_slash_Step_0_gml_529_0");
	c_facenext("undyne", "1");
	c_msgnextloc("\\E1* LOOK^1, \"GET WELL SOON\"S ALL THE STORE HAD!!/", "obj_npc_police_slash_Step_0_gml_531_0");
	c_msgnextloc("\\E2* OPEN IT AND I'LL ARREST YOU!^1! LOOK!!/", "obj_npc_police_slash_Step_0_gml_532_0");
	c_msgnextloc("\\E1* I'LL EVEN PUT A NOTE ON IT!!!/", "obj_npc_police_slash_Step_0_gml_533_0");
	c_msgnextloc("\\E2* NOW STOP INTERRUPTING ME!^1! I GOTTA GO!!/", "obj_npc_police_slash_Step_0_gml_534_0");
	c_facenext("none", 0);
	c_msgnextloc("* (You got the previously described box of candy with a note on it.)/%", "obj_npc_police_slash_Step_0_gml_536_0");
	c_talk_wait();
	c_sel(un);
	c_autowalk(0);
	c_sprite(spr_undyne_walk_down);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_walk_wait("d", 8, 30);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	con = -1;
	global.interact = 0;
	global.facing = 0;
	global.flag[317] = 1;
	with (jail_collider)
		instance_destroy();
	jail_collider_bottom = instance_create(180, 98, obj_solidblock);
	jail_collider_bottom.image_xscale = 2;
	jail_collider_bottom.image_yscale = 0.35;
	jail_collider_side = instance_create(255, 98, obj_solidblock);
	jail_collider_side.image_xscale = 1;
	jail_collider_side.image_yscale = 0.35;
}
if (napstacon == 10 && global.flag[317] == 1)
{
	global.interact = 1;
	global.flag[317] = 2;
	napstacon = 20;
	alarm_sounded = 1;
	with (obj_doorAny)
		doorFadeMusic = 1;
	cutscene_master = scr_cutscene_make();
	c_var_instance(napstablook, "visible", 0);
	na = 1;
	na_actor = instance_create(92, 84, obj_actor);
	scr_actor_setup(na, na_actor, "napstablook");
	na_actor.sprite_index = spr_npc_napstablook_police_up;
	c_sel(na);
	c_autowalk(0);
	c_var_lerp("y", 84, 64, 15);
	c_wait(15);
	c_wait(5);
	c_mus("free_all");
	c_wait(5);
	c_mus2("initloop", "napsta_alarm.ogg", 0);
	c_wait(5);
	c_var_lerp("y", 64, 84, 15);
	c_wait(15);
	c_sprite(spr_npc_napstablook_police_down);
	c_var_instance(napstablook, "visible", 1);
	c_wait(15);
	c_terminatekillactors();
}
if (napstacon == 20 && !i_ex(obj_cutscene_master))
{
	with (napstablook)
		con = -1;
	napstacon = -1;
	global.interact = 0;
}
