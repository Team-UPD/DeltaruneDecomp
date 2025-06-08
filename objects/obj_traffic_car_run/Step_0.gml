if (init == 0)
{
	if (dir == 0)
		hspeed = 12;
	if (dir == 1)
		hspeed = -12;
	init = 1;
}
hspeed *= 1.1;
vspeed *= 1.1;
if (x > (camerax() + 640 + (sprite_width * 2)) || x < (camerax() - (sprite_width * 2)) || y > (cameray() + 480 + (sprite_height * 2)) || y < (cameray() - (sprite_height * 2)))
	instance_destroy();
