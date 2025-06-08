if (con > 3 && drawtimer <= 20)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	scr_84_set_draw_font("main");
	draw_text_transformed(320, 138, stringsetloc("POTTERY NOT RESPECTED", "obj_controller_dw_mansion_single_pot_slash_Draw_0_gml_9_0"), 2, 4, 0);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
}
drawtimer++;
if (drawtimer == 40)
	drawtimer = 0;
