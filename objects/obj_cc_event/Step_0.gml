if (room == room_cc_4f)
{
	if (global.flag[245] == 0)
	{
		bluhtotal = 0;
		with (obj_bluhpainting)
		{
			if (bluh == 1)
				obj_cc_event.bluhtotal += 1;
		}
		if (bluhtotal >= 3)
		{
			snd_play(snd_splat);
			chest = instance_create(480, 980, obj_treasure_room);
			global.flag[245] = 1;
		}
	}
}
