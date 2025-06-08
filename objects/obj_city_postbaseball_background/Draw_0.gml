bg_y_pos = (cameray() * 0.92) + 680;
bg_x_pos = camerax() * 0.95;
siner++;
if (room == room_dw_city_postbaseball_1)
{
	if (!sprite_init)
	{
		sprite_init = true;
		ground_height = sprite_get_height(spr_bg_cyber_parallax_ground);
		sky_height = sprite_get_height(spr_cyber_starry_sky_white);
		starry_sky_height = sprite_get_height(spr_cyber_starry_sky);
		stars_height = sprite_get_height(spr_cyber_starry_stars_2);
	}
	scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_clouds, 0, bg_x_pos, bg_y_pos, bg_x_pos, bg_y_pos, bg_x_pos + room_width, bg_y_pos + ground_height, 1, 1, c_white, 1);
	scr_draw_sprite_tiled_area(spr_cyber_starry_sky_white, 0, 0, bg_y_pos - 100, 0, bg_y_pos - 100, x + room_width, ((bg_y_pos - 100) + sky_height) - 1, 1, 1, sky_blue, 1);
	var dark_y_pos = (cameray() * 0.6) + 500;
	draw_set_color(merge_color(c_navy, c_black, 0.7));
	draw_rectangle(0, 0, room_width, dark_y_pos, false);
	draw_set_color(merge_color(c_navy, c_black, 0.5));
	draw_rectangle(0, dark_y_pos, room_width, bg_y_pos, false);
	scr_draw_sprite_tiled_area(spr_cyber_starry_sky_white, 0, 0, dark_y_pos, 0, dark_y_pos, x + room_width, (dark_y_pos + sky_height) - 1, 1, 1, sky_blue_dark, 1);
	var dark_star_y_pos = (cameray() * 0.5) + 10;
	var dark_star_x_pos = camerax() * 0.75;
	staralpha = sin(siner / 16) * 0.1;
	staralpha2 = sin(siner / 16) * 0.05;
	scr_draw_sprite_tiled_area(spr_cyber_starry_stars, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, x + room_width, dark_star_y_pos + (starry_sky_height * 3.5), 1, 1, c_white, 0.7 + staralpha2);
	scr_draw_sprite_tiled_area(spr_cyber_starry_stars_3, 0, dark_star_x_pos - (camerax() * 0.025), dark_star_y_pos, dark_star_x_pos + 20, dark_star_y_pos, x + room_width, dark_star_y_pos + (stars_height * 2), 1, 1, c_white, 0.7 + staralpha);
}
else
{
	if (!sprite_init)
	{
		sprite_init = true;
		ground_height = sprite_get_height(spr_bg_cyber_parallax_ground);
		sky_height = sprite_get_height(spr_cyber_starry_sky_white);
		starry_sky_height = sprite_get_height(spr_cyber_starry_sky);
		stars_height = sprite_get_height(spr_cyber_starry_stars_2);
	}
	scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_clouds, 0, bg_x_pos, bg_y_pos, bg_x_pos, bg_y_pos, bg_x_pos + room_width, bg_y_pos + ground_height, 1, 1, c_white, 1);
	scr_draw_sprite_tiled_area(spr_cyber_starry_sky_white, 0, 0, bg_y_pos - 100, 0, bg_y_pos - 100, x + room_width, ((bg_y_pos - 100) + sky_height) - 1, 1, 1, sky_blue, 1);
	var dark_y_pos = (cameray() * 0.6) + 500;
	draw_set_color(merge_color(c_navy, c_black, 0.7));
	draw_rectangle(0, 0, room_width, dark_y_pos, false);
	draw_set_color(merge_color(c_navy, c_black, 0.5));
	draw_rectangle(0, dark_y_pos, room_width, bg_y_pos, false);
	scr_draw_sprite_tiled_area(spr_cyber_starry_sky_white, 0, 0, dark_y_pos, 0, dark_y_pos, x + room_width, (dark_y_pos + sky_height) - 1, 1, 1, sky_blue_dark, 1);
	var dark_star_y_pos = (cameray() * 0.5) + 10;
	var dark_star_x_pos = camerax() * 0.75;
	staralpha = sin(siner / 16) * 0.1;
	staralpha2 = sin(siner / 16) * 0.05;
	scr_draw_sprite_tiled_area(spr_cyber_starry_stars, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, x + room_width, dark_star_y_pos + (starry_sky_height * 3.5), 1, 1, c_white, 0.7 + staralpha2);
	scr_draw_sprite_tiled_area(spr_cyber_starry_stars_3, 0, dark_star_x_pos - (camerax() * 0.025), dark_star_y_pos, dark_star_x_pos + 20, dark_star_y_pos, x + room_width, dark_star_y_pos + (stars_height * 2), 1, 1, c_white, 0.7 + staralpha);
}
