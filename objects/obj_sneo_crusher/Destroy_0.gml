if (creatednewalls == 1)
{
	creatednewalls = 0;
	with (topwall)
		instance_destroy();
	with (bottomwall)
		instance_destroy();
}
if ((difficulty == 4 && createdguns == 1) || (difficulty == 6 && createdguns == 1))
{
	with (gun1)
		instance_destroy();
	with (gun2)
		instance_destroy();
}
