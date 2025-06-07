if (loaded)
{
	if (visit_shop)
	{
		if (os_type == os_ps4 || os_type == os_ps5)
		{
			if (commerce_dialog_open == true)
			{
				var result = psn_np_commerce_dialog_tick();
				if (result != 0)
					commerce_dialog_open = false;
			}
		}
		buffer++;
		if (left_p())
		{
			snd_play(snd_menumove);
			heart_pos_x = heart_pos_x_default;
		}
		if (right_p())
		{
			snd_play(snd_menumove);
			heart_pos_x = heart_pos_x_default + heart_pos_x_h_padding;
		}
		if (button1_p() && buffer >= 3)
		{
			buffer = 0;
			snd_play(snd_menumove);
			if (heart_pos_x == heart_pos_x_default)
			{
				if (scr_is_switch_os())
				{
					switch_show_store(72199087622348800);
				}
				else if (os_type == os_ps4 || os_type == os_ps5)
				{
				}
			}
			else if (heart_pos_x == (heart_pos_x_default + heart_pos_x_h_padding))
			{
				visit_shop = false;
			}
		}
		if (button2_p())
		{
			snd_play(snd_menumove);
			visit_shop = false;
		}
	}
	else
	{
		if (up_p())
		{
			snd_play(snd_menumove);
			if (global.lang == "en")
			{
				if (heart_pos_y == (yy + 288 + line_height))
					heart_pos_y -= line_height;
			}
			else if (heart_pos_y_ja == (yy + 328 + select_padding))
			{
				heart_pos_y_ja -= select_padding;
			}
		}
		if (down_p())
		{
			snd_play(snd_menumove);
			if (global.lang == "en")
			{
				if (heart_pos_y == (yy + 288))
					heart_pos_y += line_height;
			}
			else if (heart_pos_y_ja == (yy + 328))
			{
				heart_pos_y_ja += select_padding;
			}
		}
		if (button1_p())
		{
			snd_play(snd_menumove);
			if (global.lang == "en")
			{
				if (heart_pos_y == (yy + 288))
				{
					heart_pos_x = heart_pos_x_default;
					visit_shop = true;
				}
				else if (heart_pos_y == (yy + 288 + line_height))
				{
					room_goto(PLACE_CONTACT);
				}
			}
			else if (heart_pos_y_ja == (yy + 328))
			{
				heart_pos_x = heart_pos_x_default;
				visit_shop = true;
			}
			else if (heart_pos_y_ja == (yy + 328 + select_padding))
			{
				room_goto(PLACE_CONTACT);
			}
		}
	}
}
else
{
	if (text_alpha_a < 1)
		text_alpha_a += 0.015;
	if (text_alpha_a >= 1)
	{
		if (text_alpha_b < 1)
			text_alpha_b += 0.015;
	}
	loaded = text_alpha_b >= 1;
}
