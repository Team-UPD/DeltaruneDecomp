if (wait)
	exit;
if (friction > 0 && speed <= end_speed)
{
	speed = end_speed;
	friction = 0;
}
if (friction == 0)
{
	sparkle_timer++;
	if (sparkle_timer == 8)
		image_speed = 1;
}
if (image_index == (image_number - 1))
	instance_destroy();
