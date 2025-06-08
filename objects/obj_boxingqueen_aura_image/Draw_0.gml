draw_set_blend_mode(bm_add);
texture_set_interpolation(true);
draw_self();
draw_set_blend_mode(bm_normal);
texture_set_interpolation(false);
d3d_set_fog(0, image_blend, 0, 1);
