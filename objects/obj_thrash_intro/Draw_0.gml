draw_self();
draw_set_blend_mode(bm_normal);
draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha, c_white);
draw_set_blend_mode(bm_add);
draw_sprite_ext_glow(headsprite, image_index, x, y, image_xscale, image_yscale, 0, headcolor, image_alpha, c_white);
draw_set_blend_mode(bm_normal);
