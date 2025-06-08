timer++;
if (timer > 60)
{
	image_alpha -= 0.04;
	if (image_alpha < 0)
		instance_destroy();
}
if (!instance_exists(obj_heart))
	instance_destroy();
