if (con == 0)
{
	if (instance_exists(obj_noelle_scared))
	{
		x = (obj_noelle_scared.x + 23) - 5;
		y = obj_noelle_scared.y + 80;
	}
}
if (con == 1)
{
	hspeed = 0.5;
	vspeed = 2;
	con = 2;
}
if (con == 2)
{
	hspeed *= 1.05;
	vspeed *= 1.1;
	if (y > room_height)
		instance_destroy();
}
