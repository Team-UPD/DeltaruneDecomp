bg_y_pos = (cameray() * 0.92) + 680;
bg_y_pos_alt = ((cameray() - 200) * 0.92) + 680;
bg_x_pos = camerax() * 0.95;
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
var dark_y_pos = (cameray() * 0.6) + 1800;
draw_set_color(merge_color(c_navy, c_black, 0.7));
draw_rectangle(0, 0, room_width, dark_y_pos, false);
draw_set_color(merge_color(c_navy, c_black, 0.5));
draw_rectangle(0, dark_y_pos, room_width, bg_y_pos, false);
scr_draw_sprite_tiled_area(spr_cyber_starry_sky_white, 0, 0, dark_y_pos, 0, dark_y_pos, x + room_width, (dark_y_pos + sky_height) - 1, 1, 1, sky_blue_dark, 1);
var dark_star_y_pos = (cameray() * 0.75) + 250;
var dark_star_x_pos = camerax() * 0.75;
scr_draw_sprite_tiled_area(spr_cyber_starry_stars, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, x + room_width, dark_star_y_pos + (starry_sky_height * 3.5), 1, 1, c_white, 1);
scr_draw_sprite_tiled_area(spr_cyber_starry_stars_2, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, x + room_width, dark_star_y_pos + (stars_height * 3), 1, 1, c_white, 1);
var dark_star_y_pos_2 = (cameray() * 0.77) + 350;
var dark_star_x_pos_2 = camerax() * 0.77;
scr_draw_sprite_tiled_area(spr_cyber_starry_stars_3, 0, dark_star_x_pos_2 + 20, dark_star_y_pos_2, dark_star_x_pos_2 + 20, dark_star_y_pos_2, x + room_width, dark_star_y_pos_2 + (stars_height * 2), 1, 1, c_white, 1);
xx = camerax() * 0.94;
yy = (cameray() * 0.86) + 1080;
draw_set_alpha(0.1);
for (var i = 0; i < 19; i++)
{
	draw_set_color(merge_color(c_navy, c_black, i * 0.05));
	draw_rectangle(-100, bg_y_pos, room_width + 100, bg_y_pos + (i * 15), false);
}
draw_set_alpha(1);
buildoffset = 0;
scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings, 0, bg_x_pos, bg_y_pos_alt + buildoffset, bg_x_pos, bg_y_pos_alt, bg_x_pos + room_width, bg_y_pos + ground_height + 900, 1, 1, c_white, 1);
scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings, 0, bg_x_pos, bg_y_pos_alt + 8 + buildoffset, bg_x_pos, bg_y_pos_alt + 8, bg_x_pos + room_width, bg_y_pos + 8 + ground_height + 900, 1, 1, c_gray, 1);
siner++;
draw_set_alpha(1);
draw_set_blend_mode(bm_add);
scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_buildings_lights, 0, bg_x_pos, bg_y_pos_alt + 8 + buildoffset, bg_x_pos, bg_y_pos + 8, room_width, bg_y_pos + 8 + ground_height, 1, 1, c_white, 0.5 + (sin(siner / 12) * 0.1));
draw_set_blend_mode(bm_normal);
var ground_x = bg_x_pos;
var ground_y = ((cameray() * 0.94) + 505) - 100;
scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_ground, 0, ground_x, bg_y_pos_alt + buildoffset, ground_x, ground_y, ground_x + room_width, bg_y_pos_alt + ground_height, 1, 1, c_white, 1);
scr_draw_sprite_tiled_area(spr_bg_cyber_parallax_ground, 0, ground_x, bg_y_pos_alt + 8 + buildoffset, ground_x, ground_y + 8, ground_x + room_width, bg_y_pos_alt + 8 + ground_height, 1, 1, c_gray, 1);
draw_set_color(c_black);
draw_rectangle(ground_x, ground_y + 440, ground_x + room_width + 100, ground_y + 500 + room_height + 2, false);
draw_set_color(merge_color(c_dkgray, c_navy, 0.3));
draw_rectangle(camerax() - 80, ground_y + 400, camerax() + 720, ground_y + 640, false);
draw_set_alpha(0.3);
for (var i = 0; i < 6; i++)
{
	draw_set_color(c_black);
	draw_rectangle(camerax() - 80, ground_y + 380 + (i * 20), camerax() + 760, ground_y + 600, false);
}
draw_set_alpha(1);
for (var i = 0; i < 1; i++)
	draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (ground_y + 320 + 4) - 40, room_scale, 0.9, 0, c_white, 1);
for (var i = 0; i < 3; i++)
	draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (ground_y + 360) - 40, room_scale, 1, 0, c_white, 1);
for (var i = 0; i < 5; i++)
	draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (ground_y + 400) - 40, room_scale, 1, 0, c_white, 1);
for (var i = 0; i < 7; i++)
	draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (ground_y + 440) - 40, room_scale, 1, 0, c_white, 1);
for (var i = 0; i < 9; i++)
	draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (ground_y + 480) - 40, room_scale, 1, 0, c_white, 1);
draw_set_color(c_black);
draw_rectangle(-100, (ground_y + 400) - 40, 2000, room_height + 10, false);
