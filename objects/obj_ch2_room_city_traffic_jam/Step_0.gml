if (dismiss)
{
	global.interact = 1;
	vertical_jam_y += 12;
	hor_jam_x += 12;
	if (vertical_jam_y > (cameray() + (view_hport[0] + 24)))
	{
		dismiss = false;
		vertical_dismiss = true;
		horizontal_dismiss = true;
		if (i_ex(obj_ch2_city_car_b))
		{
			with (obj_ch2_city_car_b)
				con = 0;
		}
	}
}
if (release_hor_jam)
{
	if (horizontal_dismiss)
	{
		depth = 9001250;
		horizontal_dismiss = false;
		hor_jam_x = 3500;
	}
	hor_jam_x += 12;
	if (hor_jam_x >= 3850)
	{
		var readable_cars = instance_create(4140, 255, obj_readable_room1);
		readable_cars.image_xscale = 8;
		release_hor_jam = false;
	}
}
