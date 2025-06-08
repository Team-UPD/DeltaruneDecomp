if (hitted == 1)
{
	rottimer--;
	if (rottimer < 0)
	{
		image_angle += 90;
		rottimer = 4;
	}
}
if (y <= -100)
	instance_destroy();
