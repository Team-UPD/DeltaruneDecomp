if (state == 0)
{
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_white, 0);
	var lay_id = layer_get_id("TILES_BATTLEBORDER");
	var map_id = layer_tilemap_get_id(lay_id);
	draw_tilemap(map_id, 0, 0);
	spr_battleborder = sprite_create_from_surface(surf, 0, 0, room_width, room_height, 1, 0, 0, 0);
	surface_reset_target();
	surface_free(surf);
	state = 1;
}
if (state == 1)
{
	depth = 777777;
	draw_sprite_ext(spr_battleborder, 0, 0, 0, 1, 1, 0, c_white, myalpha);
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	if (state == 10)
	{
		surf = surface_create(room_width, room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_white, 0);
		var lay_id = layer_get_id("TILES_BATTLEBORDER");
		var map_id = layer_tilemap_get_id(lay_id);
		draw_tilemap(map_id, 0, 0);
		spr_border_none = sprite_create_from_surface(surf, 0, 0, room_width, room_height, 1, 0, 0, 0);
		surface_reset_target();
		surface_free(surf);
		surf = surface_create(room_width, room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_white, 0);
		lay_id = layer_get_id("TILES_BATTLEBORDER_LEFT");
		map_id = layer_tilemap_get_id(lay_id);
		draw_tilemap(map_id, 0, 0);
		spr_border_left = sprite_create_from_surface(surf, 0, 0, room_width, room_height, 1, 0, 0, 0);
		surface_reset_target();
		surface_free(surf);
		surf = surface_create(room_width, room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_white, 0);
		lay_id = layer_get_id("TILES_BATTLEBORDER_RIGHT");
		map_id = layer_tilemap_get_id(lay_id);
		draw_tilemap(map_id, 0, 0);
		spr_border_right = sprite_create_from_surface(surf, 0, 0, room_width, room_height, 1, 0, 0, 0);
		surface_reset_target();
		surface_free(surf);
		surf = surface_create(room_width, room_height);
		surface_set_target(surf);
		draw_clear_alpha(c_white, 0);
		lay_id = layer_get_id("TILES_BATTLEBORDER_BOTH");
		map_id = layer_tilemap_get_id(lay_id);
		draw_tilemap(map_id, 0, 0);
		spr_border_both = sprite_create_from_surface(surf, 0, 0, room_width, room_height, 1, 0, 0, 0);
		surface_reset_target();
		surface_free(surf);
		state = 11;
	}
	if (state == 11)
	{
		var drawspr = spr_border_none;
		leftvis = layer_get_visible("TILES_SIDE_A");
		rightvis = layer_get_visible("TILES_SIDE_B");
		if (leftvis == 1 && rightvis == 0)
			drawspr = spr_border_left;
		if (leftvis == 0 && rightvis == 1)
			drawspr = spr_border_right;
		if (leftvis == 1 && rightvis == 1)
			drawspr = spr_border_both;
		depth = 777777;
		draw_sprite_ext(drawspr, 0, 0, 0, 1, 1, 0, c_white, myalpha);
	}
}
