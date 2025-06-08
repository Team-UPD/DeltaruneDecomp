scr_84_set_draw_font("main");
draw_set_halign(fa_center);
draw_set_alpha(creditalpha);
for (i = 0; i < 8; i += 1)
{
	draw_set_color(linecolor[i]);
	draw_text(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), (__view_get(e__VW.YView, 0) + (20 * i) + 50) - 8, string_hash_to_newline(line[i]));
}
if (drawtesters == true)
{
	fangamertesting = stringsetloc("-Fangamer Testing-", "obj_credits_2_slash_Draw_0_gml_17_0");
	trailers = stringsetloc("-Trailers & All Video Editing-", "obj_credits_2_slash_Draw_0_gml_18_0");
	var spacing = 20;
	draw_set_color(menugray);
	draw_text(160, 42 + (spacing * 0), fangamertesting);
	draw_set_color(c_white);
	draw_set_halign(fa_right);
	draw_text(152, 42 + (spacing * 1), "Chris Warriner");
	draw_text(152, 42 + (spacing * 2), "Ryan Alyea");
	draw_text(152, 42 + (spacing * 3), "Alexandro Arvizu");
	draw_text(152, 42 + (spacing * 4), "Dan Moore");
	draw_set_halign(fa_left);
	draw_text(168, 42 + (spacing * 1), "Jack Murphy");
	draw_text(168, 42 + (spacing * 2), "heavenchai");
	draw_text(168, 42 + (spacing * 3), "Charlie Verdin");
	draw_text(168, 42 + (spacing * 4), "Steven Thompson");
	draw_set_halign(fa_center);
	draw_set_color(menugray);
	draw_text(160, 42 + (spacing * 6), trailers);
	draw_set_color(c_white);
	draw_text(160, 42 + (spacing * 7), "Everdraed");
}
draw_set_color(c_white);
draw_set_alpha(1);
