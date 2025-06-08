if (i_ex(obj_ch2_city_car_a))
{
	with (obj_ch2_city_car_a)
		car_convo++;
}
if (i_ex(obj_ch2_scene21))
{
	with (obj_ch2_scene21)
	{
		got_banana = true;
		snd_play(snd_item);
		snd_play(snd_swallow);
	}
}
instance_destroy();
