if (activeDecay == 1)
{
	if (!place_meeting(x, y, obj_noelle_scared))
		activeDecay = 2;
}
if (activeDecay == 2)
{
	image_alpha *= 0.9;
	if (image_alpha < 0.01)
		instance_destroy();
}
