timer++;
if (speed > 0)
	speed -= 0.4;
if (timer > 16)
	instance_destroy();
if (instance_exists(o_boxingqueen))
{
	if (timer == 1)
	{
		if (o_boxingqueen.drawflip == 0)
			x = o_boxingqueen.x - 18;
		else
			x = o_boxingqueen.x + 18;
		y = o_boxingqueen.y - 128;
	}
}
