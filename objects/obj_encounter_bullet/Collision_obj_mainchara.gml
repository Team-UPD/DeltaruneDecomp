if (active == 1)
{
	with (creator)
	{
		global.ambush = 1;
		event_user(0);
	}
}
with (obj_encounter_bullet)
{
	active = 0;
	instance_destroy();
}
