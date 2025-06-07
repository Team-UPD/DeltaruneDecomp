xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
if (saved == 0)
	time_current = global.time;
scr_84_set_draw_font("main");
if (d == 2)
	scr_84_set_draw_font("mainbig");
if (global.lang == "ja")
{
	if (d == 1)
	{
		draw_set_color(c_white);
		draw_rectangle(54 + xx, 49 + yy, 265 + xx, 157 + yy, false);
		draw_set_color(c_black);
		draw_rectangle((57 * d) + xx, (52 * d) + yy, (262 * d) + xx, (154 * d) + yy, false);
	}
	else
	{
		scr_darkbox((54 * d) + xx, (49 * d) + yy, (265 * d) + xx, (157 * d) + yy);
		draw_set_color(c_black);
		draw_rectangle((64 * d) + xx, (59 * d) + yy, (255 * d) + xx, (147 * d) + yy, false);
	}
	draw_set_color(c_white);
	if (coord == 2)
		draw_set_color(c_yellow);
	draw_set_halign(fa_center);
	draw_text((160 * d) + xx, (60 * d) + yy, string_hash_to_newline(name));
	draw_set_halign(fa_left);
	if (d == 1)
		draw_text(76 + xx, 80 + yy, string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_29_0") + string(love)));
	if (d == 2)
		draw_text((78 * d) + xx, (80 * d) + yy, string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_33_0") + string(level)));
	draw_text((196 * d) + xx, (80 * d) + yy, scr_timedisp(time_current));
	draw_set_halign(fa_center);
	draw_text((160 * d) + xx, (100 * d) + yy, string_hash_to_newline(roomname));
	draw_set_halign(fa_left);
	if (coord == 0)
		draw_sprite(heartsprite, 0, xx + (83 * d), yy + (135 * d));
	if (coord == 1)
		draw_sprite(heartsprite, 0, xx + (173 * d), yy + (135 * d));
	if (coord < 2)
	{
		draw_text(xx + (95 * d), yy + (130 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_47_0")));
		draw_text(xx + (185 * d), yy + (130 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_48_0")));
	}
	else
	{
		draw_set_halign(fa_center);
		draw_text(xx + (160 * d), yy + (130 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_52_0")));
		draw_set_halign(fa_left);
	}
}
else
{
	if (d == 1)
	{
		draw_set_color(c_white);
		draw_rectangle(54 + xx, 49 + yy, 265 + xx, 135 + yy, false);
		draw_set_color(c_black);
		draw_rectangle((57 * d) + xx, (52 * d) + yy, (262 * d) + xx, (132 * d) + yy, false);
	}
	else
	{
		scr_darkbox((54 * d) + xx, (49 * d) + yy, (265 * d) + xx, (135 * d) + yy);
		draw_set_color(c_black);
		draw_rectangle((64 * d) + xx, (59 * d) + yy, (255 * d) + xx, (125 * d) + yy, false);
	}
	draw_set_color(c_white);
	if (coord == 2)
		draw_set_color(c_yellow);
	if (global.flag[912] == 0)
	{
		draw_text((70 * d) + xx, (60 * d) + yy, string_hash_to_newline(name));
	}
	else
	{
		draw_set_font(fnt_ja_main);
		if (d == 2)
			draw_set_font(fnt_ja_mainbig);
		draw_text((70 * d) + xx, (60 * d) + yy, string_hash_to_newline(name));
		scr_84_set_draw_font("main");
		if (d == 2)
			scr_84_set_draw_font("mainbig");
	}
	if (d == 1)
		draw_text(140 + xx, 60 + yy, string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_29_0") + string(love)));
	if (d == 2)
		draw_text((175 * d) + xx, (60 * d) + yy, string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_33_0") + string(level)));
	draw_text((210 * d) + xx, (60 * d) + yy, scr_timedisp(time_current));
	draw_text((70 * d) + xx, (80 * d) + yy, string_hash_to_newline(roomname));
	if (coord == 0)
		draw_sprite(heartsprite, 0, xx + (71 * d), yy + (113 * d));
	if (coord == 1)
		draw_sprite(heartsprite, 0, xx + (161 * d), yy + (113 * d));
	if (coord < 2)
	{
		draw_text(xx + (85 * d), yy + (110 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_47_0")));
		draw_text(xx + (175 * d), yy + (110 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_48_0")));
	}
	else
	{
		draw_text(xx + (85 * d), yy + (110 * d), string_hash_to_newline(scr_84_get_lang_string("obj_savemenu_slash_Draw_0_gml_52_0")));
	}
}
