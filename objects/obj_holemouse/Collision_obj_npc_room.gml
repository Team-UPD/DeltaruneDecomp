if (nointeract == false && room == room_dw_city_mice2)
{
	with (other)
	{
		scaredNoelle = instance_create(x, y, obj_noelle_scared);
		scaredNoelle.con = 0;
		scaredNoelle.alarm[0] = 1;
		instance_destroy();
	}
	if (instance_exists(obj_controller_city_mice2))
		obj_controller_city_mice2.scared = 0;
}
