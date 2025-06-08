if (other.block == 0)
{
	if (hitted == 0)
	{
		with (other)
			hits++;
		image_speed = 0;
		image_index = 1;
		hitted = 1;
		hspeed = 12;
		vspeed = -12;
		global.flag[462]++;
		if (small == 1)
		{
			audio_play_sound(snd_smallcar_yelp, 0, 0);
			audio_play_sound(snd_hitcar_little, 0, 0);
		}
		else
		{
			audio_play_sound(snd_bigcar_yelp, 0, 0);
			audio_play_sound(snd_hitcar, 0, 0);
		}
	}
}
else
{
	with (other)
		blockeffectcon = 1;
	x += 6;
	hspeed = 12;
	gravity_direction = 180;
	gravity = 0.5;
}
