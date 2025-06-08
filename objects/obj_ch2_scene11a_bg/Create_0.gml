cityscape_bg_0 = instance_create(0, 0, obj_looping_tiled_area);
cityscape_bg_0.sprite_index = spr_cyber_coaster_bg_tile;
cityscape_bg_0.width = sprite_get_width(spr_cyber_coaster_bg_cityscape) * 2 * 3;
cityscape_bg_0.height = sprite_get_height(spr_cyber_coaster_bg_cityscape) - 1;
cityscape_bg_0.room_wide = true;
cityscape_bg_0.depth = 1000500;
cityscape_bg_0.x_scale = 1;
cityscape_bg_0.y_scale = 1;
cityscape_bg_1 = instance_create(0, 0, obj_looping_tiled_area);
cityscape_bg_1.sprite_index = spr_cyber_coaster_bg_cityscape_bg;
cityscape_bg_1.width = sprite_get_width(spr_cyber_coaster_bg_cityscape_bg) * 2 * 3;
cityscape_bg_1.height = sprite_get_height(spr_cyber_coaster_bg_cityscape_bg) - 1;
cityscape_bg_1.room_wide = true;
cityscape_bg_1.depth = 1000400;
cityscape_bg_1.x_scale = 1;
cityscape_bg_1.y_scale = 1;
cityscape_bg_2 = instance_create(0, 0, obj_looping_tiled_area);
cityscape_bg_2.sprite_index = spr_cyber_coaster_bg_cityscape_fg;
cityscape_bg_2.width = sprite_get_width(spr_cyber_coaster_bg_cityscape_fg) * 2 * 3;
cityscape_bg_2.height = sprite_get_height(spr_cyber_coaster_bg_cityscape_fg) - 1;
cityscape_bg_2.room_wide = true;
cityscape_bg_2.depth = 1000300;
cityscape_bg_2.x_scale = 1;
cityscape_bg_2.y_scale = 1;
coaster_bg_1 = instance_create(815, 64, obj_looping_tiled_area);
coaster_bg_1.sprite_index = bg_dw_city_coaster_track_fullwidth;
coaster_bg_1.width = sprite_get_width(bg_dw_city_coaster_track_fullwidth) * 2 * 3;
coaster_bg_1.height = sprite_get_height(bg_dw_city_coaster_track_fullwidth) - 1;
coaster_bg_1.room_wide = true;
coaster_bg_1.depth = 1000200;
coaster_bg_1.x_scale = 1;
coaster_bg_1.y_scale = 1;
for (var i = 0; i < 3; i++)
{
	coaster_track[i] = instance_create(815, 130 + (i * 60), obj_looping_tiled_area);
	coaster_track[i].sprite_index = spr_cyber_coaster_track;
	coaster_track[i].width = sprite_get_width(spr_cyber_coaster_track) * 2 * 7;
	coaster_track[i].height = sprite_get_height(spr_cyber_coaster_track) - 1;
	coaster_track[i].room_wide = true;
	coaster_track[i].depth = 1000100;
	coaster_track[i].x_scale = 1;
	coaster_track[i].y_scale = 1;
}
parallax = true;
looping = false;
fountain = scr_marker_animated(815, 0, spr_cyber_coaster_bg_fountain);
with (fountain)
{
	depth = 1000450;
	image_speed = 0.125;
}
fountain_active = false;
