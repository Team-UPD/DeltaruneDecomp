if (wall_con == 1)
{
	with (looping_coaster_top)
		y_pos -= 20;
	with (looping_coaster)
		y_pos -= 20;
	if ((looping_coaster_top.y_pos + looping_coaster_top.height) <= cameray())
	{
		wall_con = 2;
		with (looping_coaster)
		{
			loop_vertical = true;
			y_speed = -20;
		}
	}
}
if (wall_con == 3)
{
	if (v_speed < 0)
	{
		v_speed++;
	}
	else
	{
		wall_con = 4;
		with (looping_coaster)
			y_speed = 0;
	}
	var v_speed_temp = v_speed;
	with (looping_coaster)
	{
		y_speed = v_speed_temp;
		x_speed = -20;
	}
}
