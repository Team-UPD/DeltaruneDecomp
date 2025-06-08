if (head_init)
{
	if (static_happened)
		draw_sprite_ext(spr_cutscene_27_queen_static_goggles, 0, 252, 123, 2, 2, 0, c_white, 1);
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	draw_rectangle(camerax(), cameray() + 360, camerax() + view_wport[0], cameray() + view_hport[0], false);
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(head_sprite, anim_index, head_x_pos, head_y_pos, 2, 2, 0, c_white, 1);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	if (!static_start)
	{
		var offset = (head_sprite == spr_cutscene_26_queen_giga_head_unhappy) ? 5 : 0;
		gpu_set_blendenable(false);
		gpu_set_colorwriteenable(false, false, false, true);
		draw_set_alpha(0);
		draw_rectangle(camerax(), cameray() + 360, camerax() + view_wport[0], cameray() + view_hport[0], false);
		draw_sprite_ext(spr_cutscene_26_queen_giga_goggles_mask, anim_index, head_x_pos, head_y_pos + offset, 2, 2, 0, c_white, 1);
		draw_set_alpha(1);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true, true, true, true);
		gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		if (damagedfx == 0)
			draw_sprite_ext(pilot_sprite, anim_index, head_x_pos + 167, head_y_pos + 160 + offset, 2, 2, 0, c_white, pilot_alpha);
		draw_sprite_ext(spr_cutscene_26_queen_giga_goggles_highlight, anim_index, head_x_pos, head_y_pos, 2, 2, 0, c_white, pilot_alpha);
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
}
