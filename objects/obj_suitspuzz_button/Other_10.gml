if (type == 0)
{
	with (obj_suitspuzz)
	{
		if (won == 0)
			event_user(2);
	}
}
if (type == 1)
{
	with (obj_suitspuzz)
	{
		if (won == 0)
			event_user(3);
	}
}
if (type == 2)
{
	with (obj_suitspuzz)
	{
		if (won == 0)
			event_user(4);
	}
}
snd_play(snd_noise);
press_timer = 2;
with (obj_mainchara)
	onebuffer = 3;
