con = -1;
customcon = 0;
release_timer = 0;
for (var i = 0; i < 5; i++)
{
	for (var j = 0; j < 3; j++)
	{
		var xpos = 325 + (88 * i);
		var ypos = (cameray() - 30) + (j * 55);
		traffic_car[i][j] = scr_dark_marker(xpos, ypos, spr_traffic_car_idling);
		with (traffic_car[i][j])
			scr_depth();
		traffic_car[i][j].image_speed = 0.15;
	}
}
for (var i = 0; i < 5; i++)
{
	for (var j = 0; j < 3; j++)
	{
		var xpos = 325 + (88 * i);
		var ypos = cameray() + 345 + (j * 55);
		traffic_car[i][j] = scr_dark_marker(xpos, ypos, spr_traffic_car_idling);
		with (traffic_car[i][j])
			scr_depth();
		traffic_car[i][j].image_speed = 0.15;
	}
}
if (global.chapter != 2 || global.plot >= 80)
{
	if (global.plot < 90)
	{
		snd_free_all();
		global.currentsong[0] = snd_init("queen_car_radio.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
		mus_volume(global.currentsong[1], 0.8, 0);
		carnpc = instance_create(2075, 208, obj_npc_sign);
		carnpc.sprite_index = spr_queen_car_right;
		with (carnpc)
			scr_depth();
		for (var i = 0; i < 4; i++)
		{
			for (var j = 0; j < 6; j++)
			{
				var xpos = 1685 + (85 * i);
				var ypos = 65 + (j * 55);
				traffic_car[i][j] = scr_dark_marker(xpos, ypos, spr_traffic_car_side_wheels);
				with (traffic_car[i][j])
				{
					scr_depth();
					image_speed = 0.15;
				}
			}
		}
		traffic_collider_left = instance_create(2020, 120, obj_solidblock);
		traffic_collider_left.image_yscale = 20;
		var readable_cars = instance_create(2000, 140, obj_readable_room1);
		readable_cars.image_yscale = 10;
		var readable_cars_2 = instance_create(2300, 140, obj_readable_room1);
		readable_cars_2.image_yscale = 10;
	}
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(4);
	scr_makecaterpillar(obj_mainchara.x - 120, obj_mainchara.y, 4, 0);
	queencar = instance_create(-200, 97, obj_caradventure_car);
	with (queencar)
		scr_depth();
	break_pie = false;
	break_pie_timer = 0;
	piebreak = -1;
	release_car = false;
	release_banana = false;
	release_banana_b = false;
	banana = -1;
	banana_b = -1;
	banana_timer = 0;
	loop_road = true;
	shift_road = false;
	car_crash_active = false;
	car_crash_timer = 0;
	car_crash_controller = -1;
	car_crash_count = 0;
	car_convo = 0;
	talk_timer = 0;
	realign = false;
	traffic_collider_left = instance_create(2020, 120, obj_solidblock);
	traffic_collider_left.image_yscale = 20;
	tile_1_lay_id = layer_get_id("TILES_City_Road_Loop_1");
	tile_1_map_id = layer_tilemap_get_id(tile_1_lay_id);
	tile_2_lay_id = layer_get_id("TILES_City_Road_Loop_2");
	tile_2_map_id = layer_tilemap_get_id(tile_2_lay_id);
	tile_3_lay_id = layer_get_id("TILES_City_Road_Loop_3");
	tile_3_map_id = layer_tilemap_get_id(tile_3_lay_id);
	carnpc = instance_create(0, cameray() - 200, obj_npc_sign);
	carnpc.sprite_index = spr_queen_car_right;
	with (carnpc)
		scr_depth();
	leftside_traffic = false;
	leftside_traffic_timer = 0;
}
