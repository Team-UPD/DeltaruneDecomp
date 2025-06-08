if (place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_marker) || (instance_exists(obj_noelle_scared) && place_meeting(x, y, obj_noelle_scared) && obj_noelle_scared.jumpy == 0))
{
	if (toggle == 0)
	{
	}
	toggle = 1;
	if (instance_exists(obj_forcefield))
	{
		with (obj_forcefield)
			instance_destroy();
	}
}
image_index = toggle;
