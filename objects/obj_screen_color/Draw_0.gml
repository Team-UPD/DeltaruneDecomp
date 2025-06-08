draw_set_color(image_blend);
draw_set_alpha(image_alpha);
if (blend_mode != 0)
	draw_set_blend_mode(blend_mode);
draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, 0);
if (blend_mode != 0)
	draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
