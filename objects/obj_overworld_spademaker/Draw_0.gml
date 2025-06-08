cur_alpha = darkamt;
if (darkamt < 0.6)
	darkamt += 0.04;
if (tile_fade == 1)
{
	if (cur_alpha != darkamt)
	{
		for (var i = 0; i < array_length_1d(tilearray); i++)
			tile_set_alpha(tilearray[i], darkamt * 2);
	}
}
draw_set_alpha(darkamt);
draw_set_color(c_black);
draw_rectangle(__view_get(e__VW.XView, 0) - 10, __view_get(e__VW.YView, 0) - 10, __view_get(e__VW.XView, 0) + 650, __view_get(e__VW.YView, 0) + 650, false);
draw_set_alpha(1);
