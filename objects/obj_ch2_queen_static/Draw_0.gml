if (!surface_exists(goggles_surface) || !surface_exists(static_surface))
	exit;
surface_set_target(goggles_surface);
draw_set_blend_mode(bm_subtract);
draw_clear(c_black);
draw_sprite_ext(spr_cutscene_27_queen_static_goggles, 0, x, y, 2, 2, 0, c_white, 1);
draw_set_blend_mode(bm_normal);
surface_reset_target();
surface_set_target(static_surface);
draw_sprite_tiled_ext(spr_static, 0, offset_x, offset_y, 2, 2, c_white, 1);
draw_set_blend_mode(bm_subtract);
draw_surface(goggles_surface, 0, 0);
draw_set_blend_mode(bm_normal);
surface_reset_target();
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_black, 1);
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_white, image_alpha);
draw_surface_ext(static_surface, 0, 0, 1, 1, 0, c_black, image_alpha - 2);
if (image_alpha < 3)
	image_alpha += 0.02;
