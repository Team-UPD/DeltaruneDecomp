glow_alpha++;
fade += 0.075;
draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, sin((((1 * fade) + 3) * pi) / 2) + 1);
gpu_set_blendmode(bm_normal);
