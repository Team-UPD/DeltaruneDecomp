if (init == 0)
{
	source.image_alpha = 0;
	init = 1;
}
if (animdone)
{
	timer++;
	if (timer >= endtime)
	{
		if (source != noone)
			source.image_alpha = 1;
		instance_destroy();
	}
}
