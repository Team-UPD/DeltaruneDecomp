if (wobbled == 0)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.x > (x - 10) && obj_mainchara.x < (x + 50))
		{
			s = snd_play(snd_wobbler);
			snd_pitch(s, 0.8 + random(0.3));
			image_speed = 0.2;
			wobbled = 1;
		}
	}
}
