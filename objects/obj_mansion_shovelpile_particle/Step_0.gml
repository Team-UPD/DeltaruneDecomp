if (image_alpha > 0)
{
	image_alpha -= 0.2;
	rotate_timer--;
	if (rotate_timer <= 0)
		image_angle += 90;
	else
		rotate_timer = rotate_time;
}
else
{
	instance_destroy();
}
