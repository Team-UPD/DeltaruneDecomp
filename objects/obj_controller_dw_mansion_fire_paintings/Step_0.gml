if (suppress == 1)
{
	with (obj_queenart_mona)
	{
		if (flag != "exitblocker")
			active = 0;
	}
}
if (con == 0 && charaX() >= 460)
	con++;
if (con == 1)
{
	global.interact = 1;
	queen_monitor.turnon = 1;
	con++;
}
if (con == 2)
{
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	con = 2.1;
}
if (con == 2.1)
{
	con = 3;
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* I See You Have: Escaped From Your Room Units/%", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_29_0");
	c_talk_wait();
	c_pannable(1);
	c_sel(kr);
	c_walkdirect(464, 230, 12);
	c_sel(su);
	c_walkdirect(492, 234, 12);
	c_sel(ra);
	c_walkdirect(428, 240, 12);
	c_wait(12);
	c_panobj(kr_actor, 4);
	c_sel(kr);
	c_facing("u");
	c_sel(su);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_wait(5);
	c_speaker("queen");
	c_msgsetloc(0, "\\EC* Who Can Blame You For Wanting To See My Glorious Mansion/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_50_0_b");
	c_msgnextloc("\\ED* You Won't Want To Take Your Eyes Off This Beautiful Art/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_51_0");
	c_facenext("susie", 5);
	c_msgnextloc("\\E5* We're not here to look at your stupid pictures!/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_53_0");
	c_facenext("queen", 13);
	c_msgnextloc("\\ED* Oh It Was Not A Recommendation/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_55_0");
	c_msgnextloc("\\EN* I Was Just Warning You LMAO/%", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_56_0");
	c_talk();
	c_wait_box(3);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_cutscene_09_susie_point);
	c_imageindex(0);
	c_imagespeed(0.15);
	c_shakeobj();
	c_wait_box(6);
	c_halt();
	c_wait_talk();
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 3 && !i_ex(obj_cutscene_master))
{
	queen_monitor.turnoff = 1;
	con++;
}
if (con == 4 && queen_monitor.turnoff == 0 && queen_monitor.con == 0)
{
	with (queen_monitor)
		instance_destroy();
	with (queen_monitor_frame)
		instance_destroy();
	con++;
	snd_play(snd_ultraswing);
}
if (con == 5)
{
	with (queen_wall)
	{
		if (image_xscale > 0.1)
			image_xscale *= 0.8;
		else
			instance_destroy();
	}
	if (!i_ex(queen_wall))
		con = 5.5;
}
if (con == 5.5)
{
	queen_wall = instance_create(480, 80, obj_marker);
	queen_wall.sprite_index = spr_room_dw_mansion_fire_paintings_fakewall_back;
	queen_wall.image_xscale = 0.1;
	queen_wall.image_yscale = 2;
	queen_wall.depth = obj_mainchara.depth + 80;
	con = 5.6;
	timer = 0;
}
if (con == 5.6)
{
	timer++;
	if (timer == 5)
		snd_play(snd_swing);
	with (queen_wall)
	{
		if (image_xscale < 2)
		{
			image_xscale *= 1.25;
		}
		else
		{
			other.con = 5.7;
			other.timer = 0;
			image_xscale = 2;
		}
	}
}
if (con == 5.7)
{
	timer++;
	if (timer == 15)
		con = 6;
}
if (con == 6)
{
	con = 7;
	alarm[0] = 30;
	suppress = 0;
	with (knockout)
		instance_destroy();
	with (queen_wall)
		instance_destroy();
	bularea = instance_create(120, 280, obj_overworld_bulletarea);
	bularea.image_xscale = 18;
	bularea.image_yscale = 2;
	global.facing = 0;
	global.interact = 0;
	global.flag[397] = 1;
}
if (con == 8)
{
	con = 99;
	with (obj_queenart_mona)
		active = 1;
}
