pal_swap_set(sprite_palette, current_pal, false);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 2, 0, c_white, 1);
pal_swap_reset();
