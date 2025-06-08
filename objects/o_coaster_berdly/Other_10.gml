for (i = 0; i < 3; i++)
{
	o = instance_create(x + random_range(40, 90), (y - 40) + random_range(20, 25), o_berdly_coaster_feather);
	o.direction = random(360);
	o.speed = random_range(4, 5);
	o = instance_create(x + random_range(40, 45), (y - 40) + random_range(20, 25), o_berdly_coaster_feather);
	o.direction = random(360);
	o.speed = random_range(4, 5);
}
