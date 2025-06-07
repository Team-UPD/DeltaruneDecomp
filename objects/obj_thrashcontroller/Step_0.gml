if (con == 0)
{
	if (logocon == 2)
	{
		introtimer += 1;
		if (introtimer >= 180)
			con = 1;
	}
}
if (con == 1)
{
	with (thrash)
	{
		if (a < 1)
			a += 0.1;
	}
	if (thrash.a >= 1)
		con = 2;
}
if (con == 2)
{
	for (i = 0; i < 6; i += 1)
		stat[i] = 0;
	for (i = 0; i < 3; i += 1)
	{
		if (global.flag[220 + i] >= 0)
		{
			addstat1 = stat1[i][global.flag[220 + i]];
			addstat2 = stat2[i][global.flag[220 + i]];
			if (addstat1 < 6)
				stat[addstat1] += 1;
			if (addstat2 < 6)
				stat[addstat2] += 1;
		}
	}
	if (menu == 0)
	{
		if (left_p())
			menucoord1x = 0;
		if (right_p())
		{
			if (menucoord1y < 3)
				menucoord1x = 1;
		}
		if (up_p())
		{
			menucoord1y -= 1;
			if (menucoord1y < 0)
				menucoord1y = 0;
		}
		if (down_p())
		{
			menucoord1y += 1;
			if (menucoord1y >= 3 && menucoord1x == 1)
				menucoord1y = 2;
			if (menucoord1y >= 3)
				menucoord1y = 3;
		}
		if (buffer1 < 0 && button1_p())
		{
			buffer1 = 3;
			buffer2 = 3;
			if (menucoord1x == 0)
			{
				if (menucoord1y < 3)
					menu = 4 + menucoord1y;
				if (menucoord1y == 3)
				{
					if (global.flag[220] >= 0 && global.flag[221] >= 0 && global.flag[222] >= 0)
						menu = 7;
				}
			}
			if (menucoord1x == 1)
			{
				if (global.flag[220 + menucoord1y] >= 0)
					menu = menucoord1y + 1;
			}
		}
	}
	if (menu >= 1 && menu <= 3)
	{
		press = 0;
		if (right_h())
		{
			press = 1;
			if (colorbuffer == 0)
				global.flag[222 + menu] += 1;
			colorbuffer += 1;
			if (colorbuffer >= 3)
			{
				global.flag[222 + menu] += 1;
				colorbuffer = 1;
			}
		}
		if (left_h())
		{
			press = 1;
			if (colorbuffer == 0)
				global.flag[222 + menu] -= 1;
			colorbuffer += 1;
			if (colorbuffer >= 3)
			{
				global.flag[222 + menu] -= 1;
				colorbuffer = 1;
			}
		}
		if (press == 0)
			colorbuffer = 0;
		if (global.flag[222 + menu] > 31)
			global.flag[222 + menu] = 0;
		if (global.flag[222 + menu] < 0)
			global.flag[222 + menu] = 31;
		press = 0;
		if (button1_p() && buffer1 < 0)
			press = 1;
		if (button2_p() && buffer2 < 0)
			press = 1;
		if (press == 1)
		{
			menu = 0;
			buffer2 = 3;
			buffer1 = 3;
		}
	}
	if (menu >= 4 && menu <= 6)
	{
		tm = menu - 4;
		global.flag[216 + menu] = menucoord2[tm];
		if (up_p())
		{
			if (menucoord2[tm] > 0)
				menucoord2[tm] -= 1;
		}
		if (down_p())
		{
			if (menucoord2[tm] < 3)
				menucoord2[tm] += 1;
		}
		press = 0;
		if (button1_p() && buffer1 < 0)
			press = 1;
		if (button2_p() && buffer2 < 0)
			press = 1;
		if (press == 1)
		{
			menu = 0;
			buffer2 = 3;
			buffer1 = 3;
		}
	}
	if (menu == 7)
	{
		if (right_p() || left_p())
		{
			if (endcoord == 0)
				endcoord = 1;
			else
				endcoord = 0;
		}
		quit = 0;
		if (button1_p() && buffer1 < 0)
		{
			buffer1 = 3;
			buffer2 = 3;
			if (endcoord == 0)
			{
				if (instance_exists(obj_thrashmaker_event))
				{
					for (i = 0; i < 6; i += 1)
						obj_thrashmaker_event.stat[i] = stat[i];
				}
				snd_volume(global.currentsong[1], 0, 40);
				ctimer = 0;
				menu = -1;
				ended = 1;
				con = 5;
			}
			else
			{
				quit = 1;
			}
		}
		if (button2_p() && buffer2 < 0)
		{
			buffer2 = 3;
			buffer1 = 3;
			quit = 1;
		}
		if (quit == 1)
			menu = 0;
	}
}
if (con == 5)
{
	with (thrash)
		a -= 0.03;
	logocon = 3;
	ctimer += 1;
	if (ctimer >= 40)
	{
		with (thrash)
			instance_destroy();
		instance_destroy();
	}
}
buffer1 -= 1;
buffer2 -= 1;
for (i = 0; i < 3; i += 1)
{
	mtxt[i] = scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_259_0");
	if (global.flag[220 + i] >= 0)
		mtxt[i] = menutext2[i][global.flag[220 + i]];
}
menutext1[0][0] = scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_264_0") + mtxt[0];
menutext1[0][1] = scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_265_0") + mtxt[1];
menutext1[0][2] = scr_84_get_lang_string("obj_thrashcontroller_slash_Step_0_gml_266_0") + mtxt[2];
