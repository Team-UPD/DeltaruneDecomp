if (release_car)
{
	release_car = false;
	var car_ypos = choose(240, 320);
	var car = instance_create(camerax() + view_wport[0] + 100, car_ypos, obj_car_crash);
	alarm[0] = release_rate;
}
