if (obj_mainchara.x > 240 && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
}
if (con == 1)
{
	con = 2;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
}
if (con == 2)
{
	con = 3;
	if (kr_actor.y > 780 || ra_actor.y > 780)
	{
		c_sel(ra);
		c_walkdirect(kr_actor.x + 70, kr_actor.y - 50, 20);
		c_delayfacing(21, "l");
		c_sel(kr);
		c_walkdirect_wait(kr_actor.x, kr_actor.y - 40, 20);
		c_facing("r");
	}
	else
	{
		c_sel(ra);
		c_walkdirect_wait(kr_actor.x + 70, kr_actor.y - 10, 20);
		c_facing("l");
		c_sel(kr);
		c_facing("r");
	}
	c_msgside("top");
	c_msc(1061);
	c_talk_wait();
}
if (con == 10)
{
	con = 11;
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
	c_mus2("volume", 0, 60);
	c_wait(60);
	c_mus("free_all");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 11 && !i_ex(obj_cutscene_master))
{
	global.flag[331] = 0;
	room_goto(room_dw_mansion_noelle_room);
}
if (con == 20)
{
	con = 21;
	c_msgside("top");
	c_msc(1063);
	c_talk_wait();
}
if (con == 30 && !d_ex())
{
	con = 31;
	alarm[0] = 30;
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
	global.flag[319] = 2;
	global.flag[331] = 1;
}
if (con == 32 && !i_ex(obj_cutscene_master))
{
	con = 99;
	instance_create(0, 0, obj_ch2_scene24e);
	instance_destroy();
}
