if (global.chapter == 2 && global.flag[424] > 0)
{
	if (instance_exists(obj_ch2_room_beach))
	{
		with (obj_ch2_room_beach)
			canrest = true;
		instance_destroy();
	}
}
if (onioncount > 0)
	onioncount -= 1;
if (global.flag[258] == 0)
{
	if (onioncount >= 200 && con == 0 && global.flag[258] == 0)
	{
		if (global.chapter == 1)
		{
			global.flag[258] = 1;
			onioncount = 1;
			global.facing = 1;
			con = 1;
			alarm[4] = 10;
			global.interact = 1;
		}
	}
	if (global.chapter == 2)
	{
		if (instance_exists(obj_ch2_room_beach))
		{
			with (obj_ch2_room_beach)
				canrest = true;
			instance_destroy();
		}
	}
}
else if (global.flag[258] == 1 || global.flag[258] == 2)
{
	if (obj_mainchara.x > x)
	{
		if (con == -1)
		{
			con = 2;
			global.facing = 1;
			global.interact = 1;
		}
		if (con == 2)
		{
			with (onion)
				on = 1;
			con = 3;
			alarm[4] = 50;
		}
		if (con == 4)
		{
			global.facing = 1;
			with (onion)
				on = 2;
			con = (global.chapter == 2 && scr_havechar(2)) ? 19 : 5;
			if (global.chapter == 2 && scr_havechar(2))
			{
				with (obj_caterpillarchara)
					visible = 0;
				cutscene_master = scr_cutscene_make();
				scr_maincharacters_actors();
				c_sel(su);
				c_facing("r");
				c_emote("!", 30);
				c_waitcustom();
			}
			alarm[4] = 150;
		}
		if (con == 6)
		{
			global.fc = 0;
			global.typer = 5;
			global.msc = (global.chapter == 1) ? 195 : 1030;
			scr_text(global.msc);
			instance_create(0, 0, obj_dialoguer);
			con = 7;
		}
		if (con == 7 && !d_ex())
		{
			global.interact = 1;
			onion.on = 4;
			con = (global.chapter == 2 && scr_havechar(2)) ? 29 : 8;
			alarm[4] = 150;
		}
		if (con == 9)
		{
			con = 10;
			global.flag[424] = 1;
			with (onion)
				instance_destroy();
			global.interact = 0;
			global.facing = 0;
			if (instance_exists(obj_ch2_room_beach))
			{
				with (obj_ch2_room_beach)
					canrest = true;
			}
			instance_destroy();
		}
		if (con == 20 && customcon == 1)
		{
			con = 21;
			customcon = 0;
			c_waitcustom_end();
		}
		if (con == 21)
		{
			con = 22;
			c_speaker("no_name");
			c_msgsetloc(0, "\\M3* Hey....^1. thought I told you..^1. to come alone.../", "obj_onion_event_slash_Step_0_gml_110_0");
			c_facenext("susie", 0);
			c_msgnextloc("* ..^1. you know what^1, hell if I'm getting involved in this./%", "obj_onion_event_slash_Step_0_gml_112_0");
			c_talk_wait();
			c_walk_wait("l", 4, 40);
			c_waitcustom();
		}
		if (con == 22 && customcon == 1)
		{
			customcon = 0;
			con = 6;
		}
		if (con == 30)
		{
			con = 33;
			customcon = 0;
			c_waitcustom_end();
			c_sel(su);
			c_actormoveparty(30);
			c_wait(45);
			c_speaker("susie");
			c_msgsetloc(0, "* Hey Kris. So^1, uh.../", "obj_onion_event_slash_Step_0_gml_139_0");
			c_msgnextloc("\\EK* Do you do weird stuff like this every day after school?/%", "obj_onion_event_slash_Step_0_gml_140_0");
			c_talk_wait();
			c_actortokris();
			c_actortocaterpillar();
			c_terminatekillactors();
		}
		if (con == 33 && !i_ex(obj_cutscene_master))
			con = 9;
	}
}
else if (global.flag[258] == 3)
{
	if (instance_exists(obj_ch2_room_beach))
	{
		with (obj_ch2_room_beach)
			canrest = true;
		instance_destroy();
	}
}
