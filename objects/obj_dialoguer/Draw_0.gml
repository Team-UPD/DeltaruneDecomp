if (active == 1)
{
	if (scr_debug())
	{
		if (keyboard_check_pressed(ord("D")))
		{
			if (global.tempflag[19] == 0)
				global.tempflag[19] = 1;
			else
				global.tempflag[19] = 0;
		}
	}
	if (global.tempflag[19] == 0)
		scr_dbox();
	if (!i_ex(writer))
	{
		instance_destroy();
	}
	else if (global.tempflag[19] == 1)
	{
		draw_set_color(c_red);
		scr_84_set_draw_font("mainbig");
		draw_text(camerax() + 16, cameray() + (174 * (global.darkzone + 1)), writer.msgno);
	}
}
