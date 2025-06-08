timer++;
if (timer >= spinspeed)
{
	image_angle += 45;
	timer = 0;
}
draw_self();
