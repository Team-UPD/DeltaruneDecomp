scr_84_set_draw_font("main");
draw_set_halign(fa_center);
draw_set_alpha(creditalpha);
var y_offset = 0;
if (timer >= 573 && timer < 668)
	y_offset = -16;
for (i = 0; i < 8; i += 1)
{
	draw_set_color(linecolor[i]);
	draw_text(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.YView, 0) + (20 * i) + 50 + y_offset, string_hash_to_newline(line[i]));
}
draw_set_alpha(textalpha);
draw_set_color(c_yellow);
draw_text(__view_get(e__VW.XView, 0) + (__view_get(e__VW.WView, 0) / 2), __view_get(e__VW.HView, 0) - 40, string_hash_to_newline(lyric));
draw_set_alpha(1);
draw_set_halign(fa_left);
