draw_self();
draw_set_color(c_white);
if (image_blend == c_yellow && timer >= 20 && timer <= 60)
{
	draw_set_halign(fa_right);
	draw_text_ext_transformed(x - 15, y - 2, stringsetloc("Movements from turn 2", "obj_mauswheel_cursor_slash_Draw_0_gml_10_0"), 9999, 9999, 0.6, 0.6, 0);
}
if (image_blend == c_red && timer >= 20 && timer <= 60 && instance_number(obj_mauswheel_cursor) == 1)
{
	draw_set_halign(fa_left);
	draw_text_ext_transformed(x + 30, y - 2, stringsetloc("Movements from turn 1", "obj_mauswheel_cursor_slash_Draw_0_gml_11_0"), 9999, 9999, 0.6, 0.6, 0);
}
draw_set_halign(fa_left);
