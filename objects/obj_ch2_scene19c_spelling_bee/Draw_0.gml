if (sb_con == 1)
{
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_set_halign(fa_center);
	draw_set_alpha(text_alpha);
	draw_text(camerax() + (view_wport[0] / 2), cameray() + 80, sb_word_current);
	draw_set_color(#F3BF00);
	scr_84_set_draw_font("main");
	draw_set_halign(fa_center);
	draw_text(camerax() + 235, cameray() + 140, sb_noelle);
	draw_set_color(#32CEFF);
	scr_84_set_draw_font("main");
	draw_set_halign(fa_center);
	draw_text(camerax() + 400, cameray() + 140, sb_berdly);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_alpha(1);
}
if (berdly_smart)
{
	berdly_iq_siner++;
	draw_set_alpha(0.75);
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	for (i = 0; i < 4; i++)
		draw_text(camerax() + 295 + (sin((berdly_iq_siner / 8) + i) * 10), cameray() + 150 + (cos((berdly_iq_siner / 8) + i) * 3), stringsetloc("IQ", "obj_ch2_scene19c_spelling_bee_slash_Draw_0_gml_37_0"));
	draw_set_halign(fa_left);
	draw_set_alpha(1);
}
