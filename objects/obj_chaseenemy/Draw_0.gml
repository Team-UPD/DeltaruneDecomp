if (facing == 0)
	draw_sprite_ext(sprite_index, walk_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if (facing == 1)
	draw_sprite_ext(sprite_index, walk_index, x + sprite_width, y, -image_xscale, image_yscale, image_angle, image_blend, image_alpha);
