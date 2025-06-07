done = 0;
if (x < 600)
{
	with (obj_darkeyepuzzle)
	{
		if (eye[0] == 0)
			eye[0] = 1;
		else
			eye[0] = 0;
		if (eye[2] == 0)
			eye[2] = 1;
		else
			eye[2] = 0;
	}
	done = 1;
}
if (x < 700 && done == 0)
{
	with (obj_darkeyepuzzle)
	{
		if (eye[0] == 0)
			eye[0] = 1;
		else
			eye[0] = 0;
		if (eye[1] == 0)
			eye[1] = 1;
		else
			eye[1] = 0;
	}
	done = 1;
}
if (x < 800 && done == 0)
{
	with (obj_darkeyepuzzle)
	{
		if (eye[2] == 0)
			eye[2] = 1;
		else
			eye[2] = 0;
	}
	done = 1;
}
snd_play(snd_noise);
with (obj_mainchara)
	onebuffer = 3;
