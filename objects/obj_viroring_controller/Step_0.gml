if (noleave == 0)
{
	with (obj_mainchara)
	{
		if (place_meeting(x, y, obj_traffic_road_trigger))
			other.noleave = 1;
	}
}
if (noleave == 1)
{
	with (obj_traffic_road_trigger)
		instance_destroy();
	barrier = instance_create(200, 240, obj_forcefield);
	barrier.image_xscale = 2;
	barrier.image_yscale = 8;
	barrier.skip = true;
	noleave = 2;
}
if (noleave == 2)
{
	if (global.flag[352] != 0)
	{
		with (barrier)
			instance_destroy();
	}
	instance_destroy();
}
