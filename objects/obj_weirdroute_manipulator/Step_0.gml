if (lastphase != global.flag[915])
	phasechange = true;
else
	phasechange = false;
if (global.flag[915] == 0 && global.flag[531] == 6)
{
	snd_play(snd_ominous);
	global.flag[915] = 1;
}
if (room == room_dw_city_intro)
{
	if (global.flag[915] == 1 && global.flag[916] == 0 && global.flag[452] == 0)
	{
		if (trashcon == 0)
		{
			if (i_ex(obj_mainchara))
			{
				if (obj_mainchara.x < (room_width / 2) && global.interact == 0)
				{
					global.interact = 1;
					trashcon = 1;
					scr_speaker("noelle");
					msgsetloc(0, "\\E2* K-Kris...^1? Are you sure this isn't the wrong way?/%", "obj_weirdroute_manipulator_slash_Step_0_gml_36_0");
					d_make();
				}
			}
		}
		if (trashcon == 1 && !d_ex())
		{
			global.interact = 0;
			global.flag[452] = 1;
			trashcon++;
		}
	}
}
if (global.flag[915] == 1 && global.flag[916] == 0)
{
	if (global.flag[559] == 6 && global.flag[560] == 6 && global.flag[561] == 6)
	{
		snd_play(snd_ominous);
		global.flag[915] = 1.5;
	}
}
if (global.flag[915] == 1.5 && global.flag[916] == 0)
{
	if (global.flag[562] == 6 && global.flag[563] == 6)
	{
		snd_play(snd_ominous);
		global.flag[915] = 1.75;
	}
}
if (global.flag[915] == 1.75 && global.flag[916] == 0)
{
	if (global.flag[564] == 6 && global.flag[565] == 6 && global.flag[532] == 6 && global.flag[533] == 6)
	{
		snd_play(snd_ominous);
		global.flag[915] = 2;
	}
}
if (scr_debug())
{
}
if (global.flag[915] >= 2 && global.flag[916] == 0)
{
	if (encountercheck == 0)
	{
		if (instance_exists(obj_battleback))
			encountercheck = 1;
	}
	if (encountercheck == 1)
	{
		if (!instance_exists(obj_battleback))
		{
			alarm[11] = 1;
			encountercheck = 0;
		}
	}
}
if (init == 0)
{
	if (phase == 2)
	{
		with (obj_chaseenemy)
			chasetype = 8;
	}
	init = 1;
}
if (phasechange == true)
{
	if (global.flag[915] == 4)
	{
		if (instance_exists(obj_musicer_city))
		{
			obj_musicer_city.update = true;
			phasechange = false;
		}
		else
		{
			instance_create(0, 0, obj_musicer_city);
			phasechange = false;
		}
	}
}
if (global.flag[915] > 0 && global.flag[916] == 0)
{
	if (scr_sideb_checkencounters() >= 1)
		scr_sideb_fail();
}
if (global.flag[916] > failstate)
	snd_play(snd_ominous_cancel);
lastphase = global.flag[915];
failstate = global.flag[916];
