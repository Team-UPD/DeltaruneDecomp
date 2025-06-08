animsiner++;
if (!vertical_dismiss)
{
	for (var j = 0; j < 10; j++)
	{
		for (var i = 0; i < 10; i++)
			draw_sprite_ext(spr_traffic_car_idling, animsiner / 6, vertical_jam_x + (i * 80), (vertical_jam_y - 20) + (j * 50), 2, 2, 0, c_white, 1);
	}
}
if (!horizontal_dismiss)
{
	if (hor_jam_x > 3500)
	{
		for (var j = 0; j < 2; j++)
		{
			for (var i = 0; i < 5; i++)
				draw_sprite_ext(spr_traffic_car_side_wheels, animsiner / 6, hor_jam_x + (i * 90), (hor_jam_y - 25) + (j * 60), 2, 2, 0, c_white, 1);
		}
	}
	else
	{
		for (var j = 0; j < 3; j++)
		{
			for (var i = 0; i < 8; i++)
				draw_sprite_ext(spr_traffic_car_side_wheels, animsiner / 6, hor_jam_x + (i * 90), (hor_jam_y - 25) + (j * 50), 2, 2, 0, c_white, 1);
		}
	}
}
