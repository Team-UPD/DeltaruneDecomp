if (invincible <= 0)
{
	invincible = 4;
	if (other.big == 1)
		invisible = 10;
	if (instance_exists(obj_sneo_elevator_test))
	{
		obj_sneo_elevator_test.my_direction = my_direction;
		with (obj_sneo_elevator_test)
			event_user(0);
	}
	else
	{
		instance_destroy();
	}
}
if (other.big == 0)
{
	with (other)
		event_user(0);
}
