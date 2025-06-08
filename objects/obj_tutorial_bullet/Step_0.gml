image_angle = direction;
if (y > (cameray() + 220) || x < ((camerax() + 320) - 120) || x > (camerax() + 320 + 120))
	fade = true;
if (fade == true)
{
	image_alpha *= 0.6;
	if (image_alpha < 0.01)
		instance_destroy();
}
if (ticked == 0)
{
	if (distance_to_object(obj_tutorial_puzboy) < 20 && y > 205)
	{
		ticked = 1;
		with (obj_tutorial_puzboy)
			tickAlpha = 1;
		snd_play(snd_graze);
	}
}
