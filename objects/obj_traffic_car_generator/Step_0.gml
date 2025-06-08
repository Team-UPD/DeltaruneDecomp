if (prepopulate == 1)
{
	for (var i = 0; i < 6; i++)
	{
		car = instance_create(x, y + (gen_speed * gen_rate * i), obj_traffic_car);
		car.walkdir = cartype;
		car.myspeed = gen_speed;
		car.remspeed = gen_speed;
		car.sprite_index = car_sprite;
		car.group = group;
		car.walking = walking;
		car.alwayswalking = alwayswalking;
		car.speedadjust = speedadjust;
		with (car)
			scr_depth();
	}
	prepopulate = 0;
}
if (active == 1 && (global.interact == 0 || i_ex(obj_cutscene_master)))
{
	if (walking == 0)
		timer++;
	if (walking == 1)
		timer += 0.25;
}
if (timer >= gen_rate)
{
	carCount++;
	if (skipEvery != 0)
	{
		if ((carCount % skipEvery) == 0)
			makeCar = 0;
		else
			makeCar = 1;
	}
	else
	{
		makeCar = 1;
	}
	if (makeCar == 1)
	{
		car = instance_create(x, y, obj_traffic_car);
		car.walkdir = cartype;
		car.myspeed = gen_speed;
		car.remspeed = gen_speed;
		car.sprite_index = car_sprite;
		car.group = group;
		car.walking = walking;
		car.alwayswalking = alwayswalking;
		car.speedadjust = speedadjust;
		with (car)
			scr_depth();
		makeCar = 0;
	}
	timer = 0;
}
