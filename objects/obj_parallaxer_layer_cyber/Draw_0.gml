if (spr_height == 0)
	spr_height = sprite_get_height(sprite_index);
if (shadoweffect == 0)
	scr_draw_sprite_tiled_area(sprite_index, image_index, x, y, x, y, x + room_width, y + spr_height, 1, 1, c_white, 1);
if (shadoweffect == 1)
{
	if (sprite_index == spr_bg_cyber_parallax_buildings)
	{
		if (room == room_dw_cyber_teacup_final)
		{
			draw_set_color(merge_color(c_navy, c_black, 0.7));
			draw_rectangle(0, 3000, room_width, 7500, false);
			draw_set_color(merge_color(c_navy, c_black, 0.6));
			draw_rectangle(0, 7500, room_width, 8500, false);
			draw_set_color(#02021D);
			draw_rectangle(0, 0, room_width, 4000, false);
			scr_draw_sprite_tiled_area(spr_cyber_starry_sky, 0, 0, 4000, 0, 4000, x + room_width, (4000 + sprite_get_height(spr_cyber_starry_sky)) - 1, 1, 1, c_white, 1);
			var y_top = 3000 + (__view_get(e__VW.YView, 0) * 0.0125);
			scr_draw_sprite_tiled_area(spr_cyber_starry_stars, 0, (__view_get(e__VW.XView, 0) * 0.00125) + xstart, y_top, (__view_get(e__VW.XView, 0) * 0.00125) + xstart, y_top, room_width, y_top + 1000, 1, 1, c_white, 1);
			scr_draw_sprite_tiled_area(spr_cyber_starry_sky_black, 0, 0, 2100, 0, 2100, x + room_width, (2100 + sprite_get_height(spr_cyber_starry_sky_black)) - 1, 1, 1, c_white, 1);
			draw_set_color(c_black);
			draw_rectangle(0, 0, room_width, 2100, false);
			scr_draw_sprite_tiled_area(spr_cyber_coaster_bg_tile, 0, 2720, 1400, 2720, 1400, room_width, 1400 + sprite_get_height(spr_cyber_coaster_bg_cityscape), 1, 1, c_white, 1);
			scr_draw_sprite_tiled_area(spr_cyber_coaster_bg_cityscape, 0, 2720, 1488, 2720, 1488, room_width, 1488 + sprite_get_height(spr_cyber_coaster_bg_cityscape), 1, 1, c_white, 1);
		}
		xx = camerax() * 0.95;
		yy = (room == room_dw_cyber_teacup_final) ? 8500 : cameray();
		if (init == 0)
		{
			linesiner = 0;
			for (i = 0; i < 20; i++)
				liney[i] = 200 + (40 * (i * i));
			for (i = 0; i < 8; i++)
			{
				patha[i] = path_add();
				pathb[i] = path_add();
				path_set_closed(patha[i], 0);
				path_set_closed(pathb[i], 0);
				path_set_precision(patha[i], 6);
				path_set_precision(pathb[i], 6);
				for (j = 0; j < 6; j++)
				{
					path_add_point(patha[i], (i * 20) + (i * j * j * 8), -70 * j, 1);
					path_add_point(pathb[i], -((i * 20) + (i * j * j * 8)), -70 * j, 1);
				}
			}
			init = 1;
		}
		draw_set_color(c_lime);
		linesiner++;
		if (init == 1)
		{
			draw_set_alpha(0.1);
			for (i = 0; i < 19; i++)
			{
				draw_set_color(merge_color(c_navy, c_black, i * 0.05));
				draw_rectangle(-100, yy, room_width + 100, yy + (i * 15), false);
			}
			draw_set_alpha(0.5 + (sin(linesiner / 12) * 0.1));
			draw_set_color(c_lime);
			for (i = 0; i < 8; i++)
			{
				draw_path(patha[i], xx + 320, yy + 320, false);
				draw_path(patha[i], xx + 319, yy + 320, false);
				draw_path(pathb[i], xx + 320, yy + 320, false);
				draw_path(pathb[i], xx + 321, yy + 320, false);
			}
			for (i = 0; i < 19; i++)
			{
				liney[i] = lerp(liney[i], -400, 0.005);
				if (liney[i] <= -100)
					liney[i] += liney[19];
				draw_ellipse((xx - 100) + (liney[i] / 2), yy + liney[i], (xx + 640 + 100) - (liney[i] / 2), yy + 600, true);
			}
			draw_set_alpha(1);
			draw_set_color(c_black);
			draw_rectangle(-100, room_height - 240, room_width + 100, room_height + 2, false);
		}
		scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, x + room_width, y + spr_height, 1, 1, c_white, 1);
		scr_draw_sprite_tiled_area(sprite_index, 0, x, y + 8, x, y + 8, x + room_width, y + 8 + spr_height, 1, 1, c_gray, 1);
		siner++;
		draw_set_alpha(1);
		draw_set_blend_mode(bm_add);
		scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings_lights, 0, x, y + 8, x, y + 8, room_width, y + 8 + spr_height, 1, 1, c_white, 0.5 + (sin(siner / 12) * 0.1));
		draw_set_blend_mode(bm_normal);
	}
	else
	{
		scr_draw_sprite_tiled_area(sprite_index, 0, x, y, x, y, x + room_width, y + spr_height, 1, 1, c_white, 1);
		scr_draw_sprite_tiled_area(sprite_index, 0, x, y + 8, x, y + 8, x + room_width, y + 8 + spr_height, 1, 1, c_gray, 1);
	}
	if (sprite_index == spr_bg_cyber_parallax_ground)
	{
		draw_set_color(c_black);
		draw_rectangle(x, y + 440, x + room_width + 100, y + 500 + room_height + 2, false);
	}
}
if (shadoweffect == 2)
{
	image_blend = c_white;
	draw_sprite_tiled(sprite_index, image_index, x, y);
	image_blend = c_gray;
	draw_sprite_tiled_ext(sprite_index, image_index, x, y + 8, 1, 1, c_dkgray, 1);
}
