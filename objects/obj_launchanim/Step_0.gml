g += 1;
if (g == 20)
{
	snd_play(snd_awkward);
	speed = 35;
	gravity = 1;
}
if (g >= 20)
{
	image_angle -= 50;
	t += 1;
}
