draw_set_color(c_white);
draw_set_alpha(image_alpha);
if (con == 0)
{
	var dot_text = "...";
	if (timer < 45 && variant == 0)
		dottimer++;
	if (timer < 15 && variant == 1)
		dottimer++;
	if (dottimer >= 5)
		dot_text = ".";
	if (dottimer >= 10)
		dot_text = "..";
	if (dottimer >= 15)
		dottimer = 0;
	scr_84_set_draw_font("main");
	draw_set_halign(fa_center);
	draw_text(obj_growtangle.x, obj_growtangle.y - 160, stringsetloc("DOWNLOADING", "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_20_0"));
	draw_text(obj_growtangle.x, obj_growtangle.y - 140, stringsetloc("ULTIMATE ATTACK", "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_21_0") + dot_text);
}
if (con == 1)
{
	scr_84_set_draw_font("main");
	draw_set_halign(fa_center);
	draw_text(obj_growtangle.x, obj_growtangle.y - 160, stringsetloc("DOWNLOAD", "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_29_0"));
	draw_text(obj_growtangle.x, obj_growtangle.y - 140, stringsetloc("FAILED", "obj_queen_ultimate_attack_controller_slash_Draw_0_gml_30_0"));
}
draw_set_halign(fa_left);
draw_rectangle(obj_growtangle.x - 80, obj_growtangle.y - 110, obj_growtangle.x + 80, obj_growtangle.y - 90, 1);
draw_rectangle(obj_growtangle.x - 80, obj_growtangle.y - 110, (obj_growtangle.x - 80) + barprogress, obj_growtangle.y - 90, 0);
draw_set_alpha(1);
