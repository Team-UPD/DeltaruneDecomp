if (shadoweffect == 0)
	draw_sprite_tiled(sprite_index, image_index, x, y);
if (shadoweffect == 1)
{
	siner++;
	draw_sprite_tiled_ext(sprite_index, image_index, x, y, 1, 1, c_white, 1);
	draw_sprite_tiled_ext(sprite_index, image_index, x, y + 8, 1, 1, c_gray, 1);
	if (sprite_index == spr_bg_cyber_parallax_buildings)
	{
		draw_set_blend_mode(bm_add);
		draw_sprite_tiled_ext(spr_bg_cyber_parallax_buildings_lights, image_index, x, y + 8, 1, 1, c_white, 0.5 + (sin(siner / 12) * 0.1));
		draw_set_blend_mode(bm_normal);
	}
}
if (shadoweffect == 2)
{
	image_blend = c_white;
	draw_sprite_tiled(sprite_index, image_index, x, y);
	image_blend = c_gray;
	draw_sprite_tiled_ext(sprite_index, image_index, x, y + 8, 1, 1, c_dkgray, 1);
}
