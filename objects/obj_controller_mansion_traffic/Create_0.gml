carGen = 0;
depth = 5102;
visible = true;
victory = false;
con = 0;
timer = 0;
hitcount = 0;
layer_set_visible("HIDDEN_PATH", 0);
layer_set_visible("TRAFFIC_JAM", 0);
if (global.flag[370] == 1)
{
	with (obj_mansion_art_frame)
	{
		if (image_index == 0)
			image_index = 3;
	}
	if (instance_exists(obj_traffic_road_trigger))
	{
		with (obj_traffic_road_trigger)
		{
			x = room_width * 2;
			y = room_height * 2;
		}
	}
	with (obj_traffic_car_generator)
		instance_destroy();
	with (obj_mouseTrigger)
		instance_destroy();
	with (obj_traffic_switch)
		instance_destroy();
	with (obj_cybercity_bg_sign)
		instance_destroy();
	layer_set_visible("HIDDEN_PATH", 1);
	layer_set_visible("TRAFFIC_JAM", 1);
	layer_set_visible("SPRITES_Alcoves_2", 0);
	instance_destroy();
}
else
{
	with (obj_mansion_stanchion)
		instance_destroy();
}
