if (con == 1)
{
	global.interact = 1;
	contimer = 0;
	msgtimer = 0;
	swantimer = 0;
	if (swan == 0)
	{
		active = 1;
		con = 2;
		obj_mainchara.visible = 0;
		with (obj_caterpillarchara)
			visible = 0;
	}
	if (swan == 1)
	{
		con = 1.5;
		with (obj_mainchara)
		{
			fun = 1;
			global.facing = 1;
			scr_move_to_point_over_time(obj_queencar.x + obj_queencar.swanmaincharax, obj_queencar.y + obj_queencar.swanmaincharay, 15);
		}
		with (obj_caterpillarchara)
		{
			follow = 0;
			fun = 1;
			sprite_index = rsprite;
			scr_move_to_point_over_time((obj_queencar.x + obj_queencar.swanmaincharax) - 50, (obj_queencar.y + obj_queencar.swanmaincharay) - 12, 15);
		}
	}
}
if (con == 1.5)
{
	if (room == room_dw_mansion_acid_tunnel_puzzle_entrance && global.flag[343] == 1)
	{
		swantimer++;
		if (swantimer >= 15)
		{
			con = 1.6;
			scr_speaker("ralsei");
			msgsetloc(0, "\\EJ* Let's go^1, Kris!/%", "obj_queencar_slash_Step_0_gml_36_0");
			d_make();
		}
	}
	else
	{
		swantimer++;
		if (swantimer >= 15)
		{
			swantimer = 0;
			con = 2;
			active = 1;
		}
	}
}
if (con == 1.6 && !d_ex())
{
	swantimer++;
	if (swantimer >= 15)
	{
		swantimer = 0;
		con = 2;
		active = 1;
	}
}
if (active == 1)
{
	wx = 4;
	if (room >= room_dw_mansion_acid_tunnel)
		wx = 2;
	wy = 0;
	if (up_h())
		wy = -2;
	if (down_h())
		wy = 2;
	if (left_p())
	{
		if (backwardstalkcon == 0)
		{
			backwardstalkcon = 1;
			dobackwardstalk = 1;
		}
	}
	movex = 0;
	movey = 0;
	if (!place_meeting(x + wx, y + wy, obj_solidblock) && !place_meeting(x + wx, y + wy, obj_solidenemy))
	{
		movex = 1;
		movey = 1;
	}
	else
	{
		if (!place_meeting(x + wx, y, obj_solidblock) && !place_meeting(x + wx, y, obj_solidenemy))
			movex = 1;
		if (!place_meeting(x, y + wy, obj_solidblock) && !place_meeting(x, y + wy, obj_solidenemy))
			movey = 1;
	}
	if (movex == 1 && !pause_x_move)
		x += wx;
	if (movey == 1 && !pause_y_move)
		y += wy;
	if (swan == 0)
	{
		obj_mainchara.x = x + 85;
		obj_mainchara.y = y;
	}
	else
	{
		obj_mainchara.x = x + swanmaincharax;
		obj_mainchara.y = y + swanmaincharay;
		if (instance_exists(obj_caterpillarchara))
		{
			obj_caterpillarchara.x = (x + swanmaincharax) - 50;
			obj_caterpillarchara.y = (y + swanmaincharay) - 12;
		}
	}
	scr_depth();
}
if (con == 2)
{
	if (!pause_auto_talk)
	{
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				msgtimer++;
				if (msgtimer >= 60)
				{
					with (obj_writer)
						forcebutton1 = 1;
					msgtimer = 0;
				}
			}
			else
			{
				msgtimer = 0;
			}
		}
		else if (dotalk == 1)
		{
			msgsetloc(0, "* .../%", "obj_queencar_slash_Step_0_gml_110_0");
			if (swan == 1)
			{
				if (talkcon == 1)
				{
					scr_speaker("ralsei");
					global.fe = 0;
					msgsetloc(0, "\\EM* Now, we have to think of some way to distract Queen.../%", "obj_queencar_slash_Step_0_gml_147_0");
					with (obj_ch2_scene21)
						queen_heckle = true;
				}
				if (talkcon == 2)
				{
					scr_speaker("ralsei");
					global.fe = 0;
					msgsetloc(0, "\\EM* What are these..^1. Little houses?/%", "obj_queencar_slash_Step_0_gml_155_0");
					with (obj_ch2_scene21)
						queen_heckle = true;
				}
				if (talkcon == 3)
				{
					with (obj_ch2_scene21)
						queen_heckle = true;
				}
			}
			if (global.msg[0] != "* .../%")
			{
				d = d_make();
				d.side = 0;
				d.zurasu = 1;
			}
			dotalk = 0;
		}
	}
}
