x = obj_thrash_zap_controller.x;
y = obj_thrash_zap_controller.y;
texture_set_interpolation(true);
draw_sprite_ext(spr_aura_zap, image_index, x, y, dis / 300, image_yscale, dir, image_blend, random(1));
draw_set_blend_mode(bm_add);
draw_sprite_ext(spr_aura_zap, image_index * 2, x, y, dis / 300, image_yscale * 2, dir, tint, random(1));
texture_set_interpolation(false);
draw_set_blend_mode(bm_normal);
