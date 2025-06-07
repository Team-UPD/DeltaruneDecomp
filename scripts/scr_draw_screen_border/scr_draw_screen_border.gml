function scr_draw_screen_border(arg0)
{
	var border_id = arg0;
	draw_enable_alphablend(false);
	if (border_id == "Dynamic" || border_id == "ダイナミック")
	{
		if (!loaded)
		{
			obj_time.border_alpha = 0;
			loaded = true;
		}
		obj_time.border_fade_value = 0.025;
		var room_id = room;
		var _border_image = global.darkzone ? border_dark : border_light;
		if (room_id == 132 || room_id == 321 || room_id == 139 || room_id == 137)
			_border_image = border_dark;
		if (room_id == 1 || room_id == 317 || room_id == 139 || room_id == 145 || room_id == 135 || room_id == 131 || room_id == 35 || room_id == 40)
			obj_time.border_alpha = 0;
		else if (room_id == 32 || room_id == 130)
			obj_time.border_fade_out = obj_time.border_alpha > 0;
		else if (room_id == 7 || room_id == 45 || room_id == 14)
			obj_time.border_fade_in = obj_time.border_alpha < 1;
		else if (instance_exists(obj_savepoint))
			obj_time.border_alpha = 1;
		if (room_id == 33)
		{
			if (instance_exists(obj_unusedclassevent))
			{
				if (obj_unusedclassevent.lightsoff == 0)
					obj_time.border_fade_in = obj_time.border_alpha < 1;
				else
					obj_time.border_alpha = 0;
			}
		}
		if (room_id == 2)
		{
			if (instance_exists(obj_krisroom))
			{
				if (obj_krisroom.con >= 50)
					obj_time.border_fade_out = obj_time.border_alpha > 0;
				else
					obj_time.border_alpha = (global.plot <= 10) ? 0 : 1;
			}
		}
		if (room_id == 138)
		{
			if (instance_exists(DEVICE_FAILURE))
			{
				if (DEVICE_FAILURE.EVENT >= 27 && !instance_exists(obj_writer))
					obj_time.border_alpha = 0;
			}
		}
		var game_won = false;
		if (ossafe_file_exists("filech1_3"))
			game_won = true;
		if (ossafe_file_exists("filech1_4"))
			game_won = true;
		if (ossafe_file_exists("filech1_5"))
			game_won = true;
		if ((room_id == 132 || room_id == 321 || room_id == 139) && game_won == true)
		{
			_border_image = border_dark;
			obj_time.border_alpha = 1;
		}
		scr_draw_background_ps4(_border_image, 0, 0);
		global.disable_border = obj_time.border_alpha != 1;
	}
	else if (border_id == "Simple" || border_id == "シンプル")
	{
		var room_id = room;
		if (instance_exists(obj_savepoint))
			obj_time.border_alpha = 1;
		if (room_id == 140)
		{
			if (instance_exists(obj_credits))
			{
				if (obj_credits.timer >= 1560)
				{
					obj_time.border_fade_value = 0.01;
					obj_time.border_fade_out = obj_time.border_alpha > 0;
				}
			}
		}
		scr_draw_background_ps4(bg_border_line_1080, 0, 0);
		global.disable_border = obj_time.border_alpha != 1;
	}
	draw_set_alpha(1);
	draw_enable_alphablend(true);
}
