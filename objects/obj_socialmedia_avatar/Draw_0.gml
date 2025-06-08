if (sprite_index == spr_q_socialface_queen || sprite_index == spr_q_socialface_queen_laugh)
{
	index_timer += 0.25;
	if (index_timer >= 2)
		index_timer = 0;
	if (sprite_index == spr_q_socialface_queen_laugh)
	{
		if (index_timer < 1)
			draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_aqua, 1);
		if (index_timer >= 1)
			draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_aqua, 1);
	}
	else
	{
		if (index_timer < 1)
			draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_aqua, 1);
		if (index_timer >= 1)
			draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_aqua, 1);
	}
}
else
{
	index_timer += 0.25;
	if (index_timer >= 2)
		index_timer = 0;
	if (sprite_index == spr_queen_pfps)
	{
		if (index_timer < 1)
			draw_sprite(spr_queen_pfps, chosen_face, x, y);
		if (index_timer >= 1)
			draw_sprite(spr_queen_pfps_mouth_open, chosen_face, x, y);
	}
	if (sprite_index == spr_queen_pfps_mad)
	{
		if (index_timer < 1)
			draw_sprite(spr_queen_pfps_mad, chosen_face, x, y);
		if (index_timer >= 1)
			draw_sprite(spr_queen_pfps_mad_mouth_open, chosen_face, x, y);
	}
}
