if (obj_mainchara.x > x && !i_ex(carGen) && victory == false)
{
	carGen = instance_create(1120, 262, obj_traffic_car_generator);
	with (carGen)
	{
		image_xscale = 2;
		image_yscale = 2;
		group = 0;
		gen_rate = 10;
		timer = -2;
		gen_speed = 15;
		car_sprite = spr_traffic_car;
		skipEvery = 0;
	}
}
if (obj_mainchara.x < x && i_ex(carGen))
{
	with (carGen)
		instance_destroy();
}
if (obj_mainchara.x < x)
{
	with (obj_traffic_car)
	{
		if (x > 1090)
			endme = 1;
	}
}
if (victory == true)
{
	if (con == 0)
	{
		global.flag[370] = 1;
		global.interact = 1;
		with (obj_traffic_car)
		{
			if (x <= obj_mainchara.x)
				active = 0;
			if (x > obj_mainchara.x)
				hspeed = 8;
		}
		with (obj_traffic_car_generator)
			instance_destroy();
		con++;
	}
	if (con == 1)
	{
		timer++;
		with (obj_traffic_car)
		{
			if (place_meeting(x + 10, y, obj_holemouse))
			{
				var runCar = instance_create(x, y, obj_marker);
				runCar.image_index = image_index;
				runCar.sprite_index = sprite_index;
				runCar.image_xscale = 2;
				runCar.image_yscale = 2;
				runCar.hspeed = -16;
				if (madeblock == 1)
				{
					with (myblock)
						instance_destroy();
				}
				instance_destroy();
			}
		}
		global.interact = 1;
		if (timer == 65)
			global.facing = 0;
		if (timer == 110)
			con++;
	}
	if (con == 2)
	{
		with (obj_traffic_car)
		{
			if (madeblock == 1)
			{
				with (myblock)
					instance_destroy();
			}
			instance_destroy();
		}
		with (obj_traffic_car_generator)
			instance_destroy();
		global.interact = 0;
		con++;
	}
	if (con == 3)
	{
		with (obj_traffic_car_generator)
			instance_destroy();
		with (obj_traffic_car)
			endme = 1;
		if (i_ex(carGen))
			instance_destroy();
		instance_destroy();
	}
}
