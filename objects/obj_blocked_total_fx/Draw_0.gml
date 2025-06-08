if (state == 1)
{
	draw_self();
	scr_84_set_draw_font("main");
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	if (global.lang == "ja")
	{
		draw_text(x, y - 6, string(count));
		draw_text(x, y + 8, stringsetloc("Blocked", "obj_blocked_total_fx_slash_Draw_0_gml_9_0") + stringsetloc(" ads!", "obj_blocked_total_fx_slash_Draw_0_gml_10_0"));
	}
	else
	{
		draw_text(x, y - 6, stringsetloc("Blocked", "obj_blocked_total_fx_slash_Draw_0_gml_9_0"));
		draw_text(x, y + 8, string(count) + stringsetloc(" ads!", "obj_blocked_total_fx_slash_Draw_0_gml_10_0"));
	}
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	con = 1;
}
else if (state < 3)
{
	if (state == -1)
	{
		scale += 0.25;
		if (scale > 1)
		{
			scale = 1.2;
			state = 0;
		}
	}
	else if (state == 0)
	{
		scale = 1;
		state = 1;
	}
	else if (state == 2)
	{
		scale -= 0.25;
		if (scale <= 0)
			instance_destroy();
	}
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle((x - (sprite_width / 2)) + 6, (y - (sprite_height / 2)) + 6, x + (sprite_width / 2) + 6, y + (sprite_height / 2) + 6, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1);
}
if (con == 1)
	image_alpha -= 0.4;
if (image_alpha < 0)
	instance_destroy();
