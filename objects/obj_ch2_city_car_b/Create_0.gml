con = -1;
customcon = 0;
queen_beam = -4;
if (global.entrance == 24 && global.plot >= 90)
	layer_set_visible(layer_get_id("BLOCKING_CARS"), 1);
else
	layer_set_visible(layer_get_id("BLOCKING_CARS"), 0);
var traffic_switch = instance_create(3103, 250, obj_npc_sign);
traffic_switch.sprite_index = spr_trafficswitch;
traffic_switch.image_index = (global.plot >= 90) ? 0 : 1;
with (traffic_switch)
	scr_depth();
cityscape = layer_create(9005000, "BG_Cityscape");
layerid = layer_background_create(cityscape, spr_cyber_coaster_bg_cityscape);
layer_background_htiled(layerid, true);
layer_background_vtiled(layerid, true);
layer_x(cityscape, 3080);
layer_y(cityscape, cameray() + 80);
cityscape_init_x = 0;
if (global.chapter != 2 || global.plot < 85 || global.plot >= 90)
{
	cityscape_init_x = 3080;
	cityscape_parallax = true;
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	queencar = instance_create(camerax() - 200, 97, obj_queencar);
	with (queencar)
		scr_depth();
	release_car = false;
	loop_road = false;
	shift_road = false;
	car_convo = 0;
	talk_timer = 0;
	realign = false;
	explosion = false;
	explodetimer = 0;
	traffic_collider_left = instance_create(2020, 120, obj_solidblock);
	traffic_collider_left.image_yscale = 20;
	tile_1_lay_id = layer_get_id("TILES_Right_Sidewalk");
	tile_1_map_id = layer_tilemap_get_id(tile_1_lay_id);
	tile_2_lay_id = layer_get_id("TILES_Right_Lights");
	tile_2_map_id = layer_tilemap_get_id(tile_2_lay_id);
	tile_3_lay_id = layer_get_id("TILES_Right_Buildings");
	tile_3_map_id = layer_tilemap_get_id(tile_3_lay_id);
	tile_4_lay_id = layer_get_id("TILES_Right_BG");
	tile_4_map_id = layer_tilemap_get_id(tile_4_lay_id);
	car_park_timer = 0;
	queen_beam = instance_create(0, 0, obj_car_queen_beam);
	queen_beam.visible = 0;
	crank_volume = false;
	cityscape_parallax = false;
	girder_marker = scr_marker(3300, 0, spr_city_road_girder_left);
	girder_marker.depth = 10000;
	girder_marker_2 = scr_marker(3480, 0, spr_city_road_girder_tile);
	girder_marker_2.depth = 10000;
	island_collider = instance_create(3080, 280, obj_soliddark);
	island_collider.image_xscale = 6;
}
