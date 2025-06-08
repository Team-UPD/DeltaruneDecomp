visible = true;
image_alpha = 0;
if (!(instance_exists(obj_caterpillarchara) && obj_caterpillarchara.name == "noelle"))
	instance_destroy();
if (room == room_dw_city_traffic_1 && global.flag[915] >= 1.5 && global.flag[916] == 0)
{
	safe_delete(obj_traffic_road_trigger);
	instance_destroy();
}
if (global.flag[915] >= 1.75 && global.flag[916] == 0)
{
	safe_delete(obj_traffic_road_trigger);
	instance_destroy();
}
fakeNoelleActive = 0;
fakeNoelle = 0;
