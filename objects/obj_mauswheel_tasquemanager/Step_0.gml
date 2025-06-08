if (con == 0)
{
	if (timer < 10)
		timer++;
	y = lerp_ease_in(ystart, cameray() + 233, timer / 10, 0.5);
	if (timer == 10)
	{
		y = cameray() + 233;
		con = 1;
		timer = 0;
		snd_play(snd_impact);
	}
}
if (con == 1)
{
	if (timer < 10)
		timer++;
	if (timer == 1)
	{
		image_xscale = -2.3;
		image_yscale = 1.7;
	}
	image_xscale = lerp_ease_in(-2.3, -2, timer / 10, 0.5);
	image_yscale = lerp_ease_in(1.7, 2, timer / 10, 0.5);
}
if (x > (camerax() + camerawidth() + 80) || !i_ex(obj_battlecontroller))
	instance_destroy();
