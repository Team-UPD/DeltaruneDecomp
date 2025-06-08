depth = 98600;
if (monitor_on)
{
	var x1 = 145;
	var y1 = 34;
	var x2 = x1 + (sprite_get_width(spr_queenmonitor_bg) * 2);
	var y2 = y1 + (sprite_get_height(spr_queenmonitor_bg) * 2);
	var color = overload ? c_red : make_color_rgb(60, 120, 190);
	draw_set_color(color);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_color(c_white);
	draw_sprite_ext(spr_dw_mansion_monitor_frame, 0, 142, 24, 2, 2, 0, c_white, 1);
	if (!overload)
	{
		for (var i = 0; i < l_amount; i++)
		{
			var x_pos = x_start_pos + (i * (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2));
			draw_sprite_ext(spr_cutscene_17b_lancer_letter, 0, x + x_pos, y_pos, 2, 2, 0, c_white, 1);
		}
		x1 = x_start_pos + (l_amount * (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2));
		y1 = y_pos - 1;
		x2 = x1 + (sprite_get_width(spr_cutscene_17b_lancer_letter) * 2);
		y2 = (y_pos - 1) + (sprite_get_height(spr_cutscene_17b_lancer_letter) * 2);
		typer_alpha++;
		fade += 0.1;
		draw_set_alpha(sin((((2 * fade) + 3) * pi) / 2) + 1);
		draw_rectangle(x1, y1, x2, y2, false);
		draw_set_alpha(1);
	}
	else
	{
		scr_84_set_draw_font("mainbig");
		draw_set_halign(fa_center);
		typer_alpha++;
		fade += 0.1;
		draw_set_alpha(sin((((2 * fade) + 3) * pi) / 2) + 1);
		draw_text(camerax() + (view_wport[0] / 2), cameray() + 70, stringsetloc("QUANTITY OVERLOAD", "obj_ch2_scene17b_lancer_type_slash_Draw_0_gml_44_0"));
		draw_set_alpha(1);
		draw_set_halign(fa_left);
	}
}
