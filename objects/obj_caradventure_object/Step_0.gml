if (type == "banana")
{
	var objcheck1 = place_meeting(x, y, obj_caradventure_car_enemy);
	var objcheck2 = place_meeting(x, y + sprite_height, obj_caradventure_car_enemy);
	if (objcheck1 >= 20)
	{
		with (objcheck1)
			y -= 4;
	}
	if (objcheck2 >= 20)
	{
		with (objcheck2)
			y += 4;
	}
}
