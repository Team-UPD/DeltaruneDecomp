depth = 99000;
if (i_ex(obj_encounterbasic))
	fightmode = 1;
if (drawblack == 1 && fightmode == 0)
{
	draw_set_color(c_black);
	draw_rectangle(1630, -10, 2500, 500, false);
}
if (drawtrack == 1)
{
	trackx += trackspeed;
	if ((trackx + 640) < camerax())
		trackx += 640;
	if ((trackx - 640) > camerax())
		trackx -= 640;
	draw_sprite_ext(spr_sneo_track, 0, trackx - 640, tracky0, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx, tracky0, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx + 640, tracky0, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx - 640, tracky1, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx, tracky1, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx + 640, tracky1, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx - 640, tracky2, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx, tracky2, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_sneo_track, 0, trackx + 640, tracky2, 2, 2, 0, c_white, image_alpha);
	if (scr_debug())
	{
	}
	draw_set_color(c_black);
	draw_rectangle(0, 200, 80, 420, false);
}
if (drawblack == 2 && fightmode == 0)
{
	draw_set_color(c_black);
	draw_rectangle(1640, -10, 2500, 500, false);
}
if (cityscape_active)
{
	if (cityscape_alpha < 1)
		cityscape_alpha = lerp(cityscape_alpha, 1, 0.2);
	if (cityscapefade == 1)
		cityscape_alpha = 0;
	cityscape_speed -= cityscape_speed_max;
	if (cityscape_speed_max < 0 && cityscape_speed > -398)
		cityscape_speed -= 398;
	scr_draw_sprite_tiled_area(bg_dw_mansion_basement_cityscape_background, 0, camerax() + cityscape_speed, cameray(), camerax() + cityscape_speed, cameray(), camerax() + view_wport[0], cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_background) * 2), 2, 2, c_white, cityscape_alpha);
	scr_draw_sprite_tiled_area(bg_dw_mansion_basement_cityscape_midground, 0, camerax() + (cityscape_speed * 1.1), cameray(), camerax() + (cityscape_speed * 1.1), cameray(), camerax() + view_wport[0], cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_midground) * 2), 2, 2, c_white, cityscape_alpha);
	scr_draw_sprite_tiled_area(bg_dw_mansion_basement_cityscape_foreground, 0, camerax() + (cityscape_speed * 1.2), cameray(), camerax() + (cityscape_speed * 1.2), cameray(), camerax() + view_wport[0], cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape_foreground) * 2), 2, 2, c_white, cityscape_alpha);
	if (shop_spamton_bg_con > 1)
	{
		if (cityscapefade == 1)
			cityscape_alpha = 0.15;
		scr_draw_sprite_tiled_area(spr_shop_spamton_bg_battle, 0, camerax() + cityscape_speed, cameray(), camerax() + cityscape_speed, cameray(), camerax() + view_wport[0], cameray() + (sprite_get_height(bg_dw_mansion_basement_cityscape) * 2), 1.6708, 1.195, c_white, cityscape_alpha);
	}
	if (shop_spamton_bg_con == 1 && !i_ex(obj_writer) && !i_ex(obj_battleblcon))
	{
		shop_spamton_bg_timer++;
		if (shop_spamton_bg_timer == 1)
			snd_play(snd_petrify);
		if (shop_spamton_bg_timer == 23)
			shop_spamton_bg_con = 2;
	}
	if (shop_spamton_bg_con == 2)
	{
		shop_spamton_bg_timer--;
		if (shop_spamton_bg_timer == 0)
		{
			shop_spamton_bg_con = 3;
			with (obj_spamton_neo_enemy)
				targetbgspeed = 5;
		}
	}
	if (shop_spamton_bg_con > 0 && shop_spamton_bg_con < 3)
		scr_draw_sprite_tiled_area(spr_whitepixel, 0, camerax() + cityscape_speed, cameray(), camerax() + cityscape_speed, cameray() - 2, camerax() + view_wport[0], (cameray() - 2) + (sprite_get_height(bg_dw_mansion_basement_cityscape) * 2), 396, 8, c_white, shop_spamton_bg_timer / 20);
}
