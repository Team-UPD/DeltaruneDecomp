if (logocon > 0)
{
	draw_set_color(c_navy);
	draw_set_alpha(logoalpha / 1.5);
	draw_rectangle(xx + 40, yy + 10, (xx + ww) - 40, (yy + hh) - 20, false);
	draw_set_alpha(1);
	draw_sprite_ext(scr_84_get_sprite("spr_thrashlogo"), 0, xx + 40 + (logoalpha * 20), yy + 20, 2, 2, 0, c_white, logoalpha);
	if (logocon == 1)
	{
		logoalpha += 0.05;
		if (logoalpha >= 1)
			logocon = 2;
	}
	if (logocon == 3)
	{
		logoalpha -= 0.05;
		if (logoalpha <= 0)
			logocon = 4;
	}
}
if (introtimer >= 0 && introtimer < 200)
{
	presented_xoff = 0;
	madeup_xoff = 0;
	if (global.lang == "ja")
		presented_xoff = -26;
	if (global.lang == "ja")
		madeup_xoff = -6;
	scr_84_set_draw_font("mainbig");
	draw_set_color(c_white);
	if (introtimer >= 50 && introtimer <= 70)
		textalpha1 += 0.05;
	if (introtimer >= 110 && introtimer <= 130)
		textalpha2 += 0.05;
	if (introtimer >= 180)
	{
		textalpha1 -= 0.05;
		textalpha2 -= 0.05;
	}
	draw_set_alpha(textalpha1);
	draw_text(xx + presented_xoff + 100 + (textalpha1 * 20), yy + 160, string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_39_0")));
	draw_set_alpha(textalpha2);
	draw_text(xx + 100 + madeup_xoff + (textalpha2 * 20), yy + 260, string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_41_0")));
	draw_set_alpha(1);
}
if (con >= 1)
{
	for (i = 0; i < 6; i += 1)
	{
		draw_sprite_ext(scr_84_get_sprite("spr_thrashstats"), i, xx + 440, yy + 120 + (24 * i), 2, 2, 0, statcolor[i], logoalpha);
		for (j = 0; j < stat[i]; j += 1)
			draw_sprite_ext(spr_thrashstar, i, xx + 510 + (j * 20), yy + 120 + (24 * i), 2, 2, 0, statcolor[i], logoalpha);
	}
	if (menu >= 0 && menu <= 3)
	{
		colorbar_xoff = 0;
		if (global.lang == "ja")
			colorbar_xoff = 22;
		left_xoff = 0;
		if (global.lang == "ja")
			left_xoff = -26;
		colorname_xoff = 0;
		if (global.lang == "ja")
			colorname_xoff = 86 - left_xoff;
		for (i = 0; i < 4; i += 1)
		{
			for (j = 0; j < 2; j += 1)
			{
				draw_set_color(c_white);
				if (menucoord1y == i && menucoord1x == j)
				{
					draw_set_color(c_yellow);
					draw_sprite(spr_heart, 0, xx + 80 + left_xoff + ((200 + colorname_xoff) * j), yy + 310 + (i * 36));
				}
				if (j == 1 && global.flag[220 + i] < 0)
					draw_set_color(c_dkgray);
				if (i == 3)
				{
					if (global.flag[220] < 0 || global.flag[221] < 0 || global.flag[222] < 0)
						draw_set_color(c_dkgray);
				}
				if (j == 1 && menu == (i + 1))
					draw_set_color(c_yellow);
				draw_text(xx + left_xoff + 100 + ((colorname_xoff + 200) * j), yy + 300 + (i * 36), string_hash_to_newline(menutext1[j][i]));
			}
		}
		for (j = 0; j < 3; j += 1)
		{
			for (i = 0; i < 32; i += 1)
			{
				draw_set_color(precolor[i]);
				draw_rectangle(xx + 460 + (i * 3) + colorbar_xoff, yy + 310 + (j * 36), xx + 463 + (i * 3) + colorbar_xoff, yy + 330 + (j * 36), false);
			}
			draw_set_color(c_white);
			if (menu != (j + 1))
			{
				draw_set_alpha(0.5);
				draw_set_color(c_black);
				draw_rectangle(xx + 460 + colorbar_xoff, yy + 310 + (j * 36), xx + 556 + colorbar_xoff, yy + 330 + (j * 36), false);
				draw_set_alpha(1);
				draw_set_color(c_gray);
			}
			draw_rectangle(xx + 460 + (global.flag[223 + j] * 3) + colorbar_xoff, yy + 305 + (j * 36), xx + 463 + (global.flag[223 + j] * 3) + colorbar_xoff, yy + 315 + (j * 36), false);
		}
	}
	if (menu >= 4 && menu <= 6)
	{
		for (i = 0; i < 4; i += 1)
		{
			draw_set_color(c_white);
			draw_text(xx + 360, yy + 300, string_hash_to_newline(assetdesc[menu - 4][global.flag[216 + menu]]));
			if (menucoord2[menu - 4] == i)
			{
				draw_set_color(c_yellow);
				draw_sprite(spr_heart, 0, xx + 80, yy + 310 + (i * 36));
			}
			draw_text(xx + 100, yy + 300 + (i * 36), string_hash_to_newline(menutext2[menu - 4][i]));
		}
	}
	if (menu == 7)
	{
		yoroshii_xoff = 0;
		if (global.lang == "ja")
			yoroshii_xoff = -50;
		endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_155_0");
		if (global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3)
			endtext = scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_158_0");
		draw_set_color(c_white);
		draw_text(xx + 180 + yoroshii_xoff, yy + 300, string_hash_to_newline(endtext));
		draw_set_color(c_white);
		if (endcoord == 0)
		{
			draw_set_color(c_yellow);
			draw_sprite(spr_heart, 0, xx + 220, yy + 400);
		}
		draw_text(xx + 240, yy + 390, string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_171_0")));
		if (endcoord == 1)
		{
			draw_set_color(c_yellow);
			draw_sprite(spr_heart, 0, xx + 360, yy + 400);
		}
		draw_set_color(c_white);
		draw_text(xx + 380, yy + 390, string_hash_to_newline(scr_84_get_lang_string("obj_thrashcontroller_slash_Draw_0_gml_180_0")));
	}
}
