if (boss == 1)
{
	cur_alpha = battlealpha;
	if (obj_mainchara.battlemode == 1)
	{
		if (battlealpha < 0.5)
			battlealpha += 0.04;
	}
	else if (battlealpha > 0)
	{
		battlealpha -= 0.04;
	}
	if (tile_fade == 1)
	{
		if (cur_alpha != battlealpha)
		{
			for (var i = 0; i < array_length_1d(tilearray); i++)
				tile_set_alpha(tilearray[i], battlealpha * 2 * max_battlealpha);
		}
	}
	draw_set_alpha(battlealpha * max_battlealpha);
	draw_set_color(c_black);
	draw_rectangle(__view_get(e__VW.XView, 0) - 100, __view_get(e__VW.YView, 0) - 100, __view_get(e__VW.XView, 0) + 740, __view_get(e__VW.YView, 0) + 540, false);
	draw_set_alpha(1);
	if (instance_exists(obj_caterpillarchara))
	{
		obj_caterpillarchara.image_blend = merge_color(c_white, c_black, battlealpha * max_battlealpha);
		if (battlealpha <= 0)
			obj_caterpillarchara.image_blend = c_white;
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(spr_ponman_eye_white, image_index, x + xx, y + yy, image_xscale, image_yscale, image_angle, c_red, image_alpha);
