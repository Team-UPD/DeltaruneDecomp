siner++;
fade += 0.075;
draw_sprite_ext(sprite_index, siner / 12, x, y, image_xscale, image_yscale, 0, c_white, 0.25);
gpu_set_blendmode(bm_add);
draw_sprite_ext(sprite_index, siner / 12, x, y, image_xscale, image_yscale, 0, c_white, sin((((1 * fade) + 3) * pi) / 2) / 2);
gpu_set_blendmode(bm_normal);
