draw_sprite_skew_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha, hskew, vskew);
draw_set_color(c_black);
draw_text(x + 10, y + 10, string_hash_to_newline("h: " + string(hskew) + "#v: " + string(vskew) + "rot: " + string(image_angle)));
