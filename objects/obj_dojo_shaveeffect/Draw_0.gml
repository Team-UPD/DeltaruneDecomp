draw_self();
if (blend_timer < 1)
	blend_timer += 0.25;
if (blend_timer > 0)
{
	d3d_set_fog(true, c_white, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, blend_timer);
	d3d_set_fog(false, c_black, 0, 0);
}
