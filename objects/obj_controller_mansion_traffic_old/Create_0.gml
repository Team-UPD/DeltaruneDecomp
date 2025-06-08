carGen = 0;
victory = false;
con = 0;
timer = 0;
if (global.flag[370] == 1)
{
	with (obj_traffic_car_generator)
		instance_destroy();
	with (obj_mouseTrigger)
		instance_destroy();
	instance_destroy();
}
