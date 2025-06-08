if (con == 0)
{
	if (vspeed < 0.5)
	{
		con = 1;
		image_speed = 1;
		vspeed = 0;
		friction = 0;
		gravity_direction = 270;
		gravity = 0.7;
	}
}
if (con == 1)
{
	timer++;
	if (timer == 60)
		instance_destroy();
}
