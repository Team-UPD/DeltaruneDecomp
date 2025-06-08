if (image_angle == 0)
	draw_sprite_ext(sprite_index, image_index, x - (sprite_width * 0.5), y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if (image_angle == 270)
	draw_sprite_ext(sprite_index, image_index, x, y - (sprite_width * 0.5), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if (image_angle == 90)
	draw_sprite_ext(sprite_index, image_index, x, y + (sprite_width * 0.5), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
