if (weretriggered == 0)
{
	with (obj_mainchara)
	{
		if (place_meeting(x, y, obj_traffic_road_trigger))
			other.weretriggered = 1;
	}
}
if (weretriggered == 1)
{
	instance_create(camerax() + 640 + 12, 290, obj_chaseenemy);
	snd_play(snd_b);
	weretriggered = 2;
}
