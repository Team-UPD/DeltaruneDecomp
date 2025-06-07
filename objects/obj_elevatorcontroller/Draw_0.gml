draw_background_ext(bg_cc_elevator, 0, 0, 2, 2, 0, cur_bg_c, 1);
if (rectcon >= 1)
{
	draw_set_color(merge_color(cur_bg_c, c_black, 1 - rect_alpha));
	for (i = 0; i < 8; i += 1)
	{
		draw_rectangle(-10, -100 + recty + (i * rectspacing), 180, -60 + recty + (i * rectspacing), false);
		draw_rectangle(640, -100 + recty + (i * rectspacing), 460, -60 + recty + (i * rectspacing), false);
	}
}
if (doorx > 0)
{
	draw_sprite_ext(spr_elevator_frontdoor, 0, 302 - doorx, 352, 2, 2, 0, cur_bg_c, 1);
	draw_sprite_ext(spr_elevator_frontdoor, 1, 318 + doorx, 352, 2, 2, 0, cur_bg_c, 1);
	draw_set_color(c_black);
	draw_rectangle(318 - doorx, 352, 318 + doorx, 500, false);
}
