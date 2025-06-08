draw_set_color(c_white);
draw_self();
siner++;
y += (sin(siner / 16) / 4);
draw_set_blend_mode(bm_add);
draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale + 0.01, image_yscale + 0.01, image_angle, image_blend, 0.1 + (sin(siner / 5) * 0.1));
draw_set_blend_mode(bm_normal);
