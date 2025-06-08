if (play == 0)
{
	snd_play(snd_bell);
	if (i_ex(obj_holemouse_block_clockwise))
	{
		with (obj_holemouse_block_clockwise)
			reset = true;
	}
	if (i_ex(obj_holemouse_block_counterclockwise))
	{
		with (obj_holemouse_block_counterclockwise)
			reset = true;
	}
	if (i_ex(obj_holemouse_block_clockwise_moveable))
	{
		with (obj_holemouse_block_clockwise_moveable)
			reset = true;
	}
	play = 1;
	timer = 20;
	image_speed = 0.25;
}
