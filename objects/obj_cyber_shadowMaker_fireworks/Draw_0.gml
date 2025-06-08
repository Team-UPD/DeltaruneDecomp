if (is_active || inactive_cleanup)
{
	draw_set_color(c_black);
	draw_set_alpha(frontshadOpacity);
	if (room == room_dw_cyber_maze_fireworks)
		draw_rectangle(160, 280, 480, 480, 0);
	if (room == room_dw_cyber_post_music_boss_slide)
	{
		if (obj_mainchara.x < 840)
		{
			fade_reset = false;
			fade_cleanup = true;
			fade_in = false;
			frontshadOpacity *= (1 - ((520 / obj_mainchara.x) * 0.25));
		}
		else if (!fade_reset)
		{
			fade_reset = true;
			fade_cleanup = false;
			fade_timer = 0;
		}
		draw_rectangle(520, 2600, 2720, 2640, 0);
	}
	draw_set_color(c_white);
	draw_set_alpha(1);
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false, false, false, true);
	draw_set_alpha(0);
	if (room == room_dw_cyber_maze_fireworks)
	{
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 160, 360, 160, 360, 280, 480, 1, 1, c_white, 0);
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 360, 360, 360, 360, 480, 480, 1, 1, c_white, 0);
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 160, 280, 160, 280, 480, 360, 1, 1, c_white, frontshadOpacity);
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 280, 360, 280, 360, 358, 480, 1, 1, c_white, frontshadOpacity);
	}
	if (room == room_dw_cyber_post_music_boss_slide)
	{
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 520, 2640, 520, 2640, 2720, 2800, 1, 1, c_white, 0);
		scr_draw_sprite_tiled_area(spr_blank_tile_white, 0, 520, 2600, 520, 2600, 2720, 2640, 1, 1, c_white, frontshadOpacity);
	}
	draw_set_alpha(1);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true, true, true, true);
	gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_sprite_ext(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, (obj_mainchara.y + (obj_mainchara.sprite_height * obj_mainchara.image_yscale)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
	if (i_ex(obj_caterpillarchara))
	{
		var sus_x, sus_sprite, sus_index, sus_y, sus_height, ral_x, ral_sprite, ral_index, ral_y, ral_height;
		with (obj_caterpillarchara)
		{
			if (name == "susie")
			{
				sus_x = x;
				sus_y = y;
				sus_sprite = sprite_index;
				sus_index = image_index;
				sus_height = sprite_height;
			}
			if (name == "ralsei")
			{
				ral_x = x;
				ral_y = y;
				ral_sprite = sprite_index;
				ral_index = image_index;
				ral_height = sprite_height;
			}
		}
		if (sus_x != 0)
			draw_sprite_ext(sus_sprite, sus_index, sus_x, (sus_y + (sus_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
		if (ral_x != 0)
			draw_sprite_ext(ral_sprite, ral_index, ral_x, (ral_y + (ral_height * 2)) - 4, 2, -2, 0, frontShadowColor, frontshadOpacity);
	}
	if (i_ex(obj_interactablesolid))
	{
		var hacker_sprite, hacker_index, hacker_x, hacker_y, hacker_height;
		with (obj_interactablesolid)
		{
			hacker_x = x;
			hacker_y = y;
			hacker_sprite = sprite_index;
			hacker_index = image_index;
			hacker_height = sprite_height;
		}
		draw_sprite_ext(hacker_sprite, hacker_index, hacker_x, (hacker_y + (hacker_height * 2)) - 4, 2, -2, 0, frontShadowColor, 1);
	}
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
