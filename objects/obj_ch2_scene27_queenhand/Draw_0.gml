if (!leave)
{
	draw_sprite_ext(kr_sprite, 0, x + x_pos, y + y_pos, 2, 2, 0, c_white, image_alpha);
	if (scr_sideb_get_phase() < 2)
		draw_sprite_ext(su_sprite, su_anim_index, x + x_pos, y + y_pos, 2, 2, 0, c_white, image_alpha);
	if (ra_shake)
	{
		shakeamt -= shakereduct;
		on *= -1;
		ral_x = nowx + (shakeamt * on);
		if (shakeamt <= 0)
		{
			ra_shake = false;
			ral_x = x;
		}
	}
	else
	{
		ral_x = x;
	}
	draw_sprite_ext(ra_sprite, ra_anim_index, ral_x + x_pos, y + y_pos, 2, 2, 0, c_white, image_alpha);
}
draw_sprite_ext(hand_sprite, 0, x + x_pos, y + y_pos, 2, 2, 0, c_white, image_alpha);
