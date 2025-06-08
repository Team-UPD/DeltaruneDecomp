draw_self();
if (flashamount >= 0)
{
	draw_set_blend_mode(bm_max);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
	draw_set_blend_mode(bm_normal);
}
