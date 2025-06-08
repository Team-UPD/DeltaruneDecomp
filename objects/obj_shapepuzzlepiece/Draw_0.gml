gpu_set_blendmode(bm_add);
draw_self();
if (active)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, scr_wave(0, 0.2, 1, 0));
gpu_set_blendmode(bm_normal);
