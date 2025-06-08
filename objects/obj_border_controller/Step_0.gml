var border_id = global.screen_border_id;
var return_title = false;
if (variable_global_exists("chapter_return"))
{
	if (global.chapter_return > 0 && !global.game_won)
		return_title = true;
}
if (!return_title)
{
	if (border_id == "Dynamic" || border_id == "ダイナミック")
	{
		if (!loaded)
		{
			border_alpha = 0;
			loaded = true;
		}
		border_fade_value = 0.025;
		var room_id = room;
		_border_image = global.darkzone ? border_dw_castletown : border_lw_town;
		if (room_id == 227 || room_id == 891 || room_id == 237 || room_id == 234)
			_border_image = border_dw_castletown;
		if (room_id >= 74 && room_id < 108)
			_border_image = border_dw_cyber;
		if (room_id >= 108 && room_id < 150)
			_border_image = border_dw_city;
		if ((room_id >= 150 && room_id <= 210) || room_id == 199 || room_id == 200)
			_border_image = border_dw_mansion;
		if (room_id == 230)
		{
			if (global.plot < 200)
				_border_image = border_dw_cyber;
		}
		if (room_id == 231)
			_border_image = border_dw_mansion;
		if (room_id == 232)
			_border_image = border_dw_city;
		if (room_id == 17 || room_id == 886 || room_id == 237 || room_id == 233 || room_id == 226 || room_id == 2 || room_id == 225)
		{
			border_alpha = 0;
		}
		else if (room_id == 53 || room_id == 264)
		{
			border_fade_out = border_alpha > 0;
		}
		else if (room_id == 23 || room_id == 55 || room_id == 30)
		{
			border_fade_in = border_alpha < 1;
		}
		else if (instance_exists(obj_savepoint))
		{
			if (global.chapter == 2)
			{
				if (room_id == 152 && global.plot >= 101)
					border_alpha = 1;
				if (room_id == 157)
					border_alpha = 1;
				if (room_id == 193)
					border_alpha = 1;
				if (room_id == 61)
					border_alpha = 1;
			}
			else
			{
				border_alpha = 1;
			}
		}
		if (global.chapter == 1)
		{
			if (room_id == 54)
			{
				if (instance_exists(obj_unusedclassevent))
				{
					if (obj_unusedclassevent.lightsoff == 0)
						border_fade_in = border_alpha < 1;
					else
						border_alpha = 0;
				}
			}
			if (room_id == 18)
			{
				if (instance_exists(obj_krisroom))
				{
					if (obj_krisroom.con >= 50)
						border_fade_out = border_alpha > 0;
					else
						border_alpha = (global.plot <= 10) ? 0 : 1;
				}
			}
		}
		if (global.chapter == 2)
		{
			if (room_id == 18)
			{
				if (global.plot < 1)
				{
					border_alpha = 0;
					if (i_ex(obj_krisroom))
					{
						if (obj_krisroom.show_border)
							border_alpha = 1;
					}
				}
			}
			if (room_id == 52)
			{
				if (i_ex(obj_dw_transition))
				{
					border_fade_in = false;
					border_fade_out = border_alpha > 0;
				}
				else
				{
					border_fade_out = false;
					border_fade_in = border_alpha < 1;
				}
			}
			if (room_id == 60)
			{
				if (i_ex(obj_dw_leave))
				{
					if (obj_dw_leave.con >= 10)
					{
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
				if (i_ex(obj_dw_transition))
				{
					if (obj_dw_transition.timer >= 30)
					{
						border_fade_out = false;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			if (room_id >= 74 && room_id <= 97 && room_id != 91)
				border_fade_in = border_alpha < 1;
			if (room_id == 62)
			{
				if (global.plot <= 10)
				{
					if (i_ex(obj_ch2_scene6))
					{
						if (obj_ch2_scene6.con >= 50)
							border_fade_in = border_alpha < 1;
					}
				}
				else
				{
					border_alpha = 1;
				}
			}
			if (room_id == 42)
			{
				if (i_ex(obj_dw_transition))
					border_fade_out = border_alpha > 0;
			}
			if (room_id == 91)
			{
				if (i_ex(obj_ch2_scene11a))
				{
					if (obj_ch2_scene11a.hide_border == true)
						border_fade_out = border_alpha > 0;
				}
			}
			if (room_id == 112)
				border_fade_in = border_alpha < 1;
			if (room_id == 110)
			{
				if (global.plot >= 67)
					border_fade_in = border_alpha < 1;
				else
					alpha_border = 0;
			}
			if (room_id >= 113 && room_id <= 142 && room_id != 136)
				border_alpha = 1;
			if (room_id == 136)
			{
				if (i_ex(obj_ch2_city08))
				{
					if (obj_ch2_city08.circle_zoom_timer >= 50)
					{
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
			}
			if (room_id == 150)
			{
				border_alpha = 0;
				border_fade_out = false;
				border_fade_in = false;
			}
			if (room_id == 152)
			{
				border_fade_out = false;
				border_fade_in = border_alpha < 1;
			}
			if (room_id == 169)
			{
				border_fade_value = 0.01;
				border_fade_out = border_alpha > 0;
			}
			if (room_id == 164)
				border_fade_in = border_alpha < 1;
			if (room_id >= 170 && room_id <= 179)
				border_alpha = 0;
			if (room_id == 187)
				border_alpha = 1;
			if (room_id == 196)
				border_alpha = 1;
			if (room_id == 199)
				border_alpha = 1;
			if (room_id == 200)
				border_fade_out = border_alpha > 0;
			if (room_id == 198)
			{
				if (i_ex(obj_ch2_scene27))
				{
					if (obj_ch2_scene27.hide_border)
					{
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
					else if (obj_ch2_scene27.show_border)
					{
						border_fade_out = false;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			if (room_id == 44)
			{
				if (i_ex(obj_ch2_scene28b))
				{
					if (obj_ch2_scene28b.show_border)
						border_fade_in = border_alpha < 1;
				}
			}
			if (room_id == 21)
			{
				if (i_ex(obj_ch2_scene32))
				{
					if (obj_ch2_scene32.hide_border)
					{
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
			}
		}
		if (room_id == 235)
		{
			if (i_ex(DEVICE_FAILURE))
			{
				if (DEVICE_FAILURE.EVENT >= 27 && !instance_exists(obj_writer))
					border_alpha = 0;
			}
		}
		if ((room_id == 227 || room_id == 891 || room_id == 237) && global.game_won == 1)
		{
			_border_image = border_dw_castletown;
			border_alpha = 1;
		}
		global.disable_border = border_alpha != 1;
	}
	else if (border_id == "Simple" || border_id == "シンプル")
	{
		var room_id = room;
		if (instance_exists(obj_savepoint))
			border_alpha = 1;
		if (room_id == 238)
		{
			if (instance_exists(obj_credits))
			{
				if (obj_credits.timer >= 1560)
				{
					border_fade_value = 0.01;
					border_fade_out = border_alpha > 0;
				}
			}
		}
		global.disable_border = border_alpha != 1;
	}
}
if (return_title)
{
	border_fade_in = false;
	border_fade_value = 0.05;
	border_fade_out = border_alpha > 0;
	global.disable_border = border_alpha != 1;
}
