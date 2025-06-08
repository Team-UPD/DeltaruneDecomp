if (sprite_index == spr_krisd_dark)
	draw_sprite_part_ext(sprite_index, image_index, 0, 0, sprite_get_width(sprite_index), sprite_get_height(sprite_index) - cutoff, x - (sprite_get_xoffset(sprite_index) * image_xscale), y - (sprite_get_yoffset(sprite_index) * image_yscale), image_xscale, image_yscale, image_blend, image_alpha);
else
	draw_self();
