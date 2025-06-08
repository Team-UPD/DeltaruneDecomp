if (type == 0)
{
	for (i = 0; i < 25; i += 5)
	{
		var alpha;
		if (i < obj_maus_cursor_follow.followindex)
			alpha = ((i + 60) - obj_maus_cursor_follow.followindex) / 60;
		else
			alpha = (i - obj_maus_cursor_follow.followindex) / 60;
		draw_sprite_ext(spr_maus_player_trail, 0, obj_maus_cursor_follow.heartposx[i], obj_maus_cursor_follow.heartposy[i], 1, 1, 0, c_white, alpha);
	}
}
if (type == 1)
{
	draw_set_color(c_gray);
	for (i = 0; i < 26; i += 1)
		draw_line_width(obj_maus_cursor_follow.heartposx[i] + 10, obj_maus_cursor_follow.heartposy[i] + 10, obj_maus_cursor_follow.heartposx[i] + 1 + 10, obj_maus_cursor_follow.heartposy[i] + 1 + 10, 4);
}
