x += grav;
grav -= 0.6;
if (x <= 320)
{
	speed = 0;
	gravity = 0;
	x = 320;
	grav = 0;
	if (state == 0)
		state = 1;
}
