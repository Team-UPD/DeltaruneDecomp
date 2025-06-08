timer++;
if (timer <= 2)
{
	image_xscale = lerp(3, 2, timer / 2);
	image_yscale = lerp(3, 2, timer / 2);
}
if (timer >= max_time)
	instance_destroy();
