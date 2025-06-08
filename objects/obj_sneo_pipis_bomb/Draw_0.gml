draw_self();
if (sprite_index == spr_mettaton_bomb2)
{
	for (var i = 1; i < 24; i++)
	{
		draw_sprite_ext(spr_mettaton_bomb3, image_index, x + (24 * i), y, image_xscale, image_yscale, 90, c_white, image_alpha);
		draw_sprite_ext(spr_mettaton_bomb3, image_index, x - (24 * i), y, image_xscale, image_yscale, 90, c_white, image_alpha);
		draw_sprite_ext(spr_mettaton_bomb3, image_index, x, y - (24 * i), image_xscale, image_yscale, 0, c_white, image_alpha);
		draw_sprite_ext(spr_mettaton_bomb3, image_index, x, y + (24 * i), image_xscale, image_yscale, 0, c_white, image_alpha);
	}
}
