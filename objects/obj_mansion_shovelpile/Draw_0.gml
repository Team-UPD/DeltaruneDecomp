glow_alpha++;
fade += 0.075;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, sin((((2 * fade) + 1) * pi) / 2) + 1);
