var drawx = camerax() - (cameray() / 10);
if (parallax)
{
	cityscape_bg_1.x_pos = drawx;
	cityscape_bg_2.x_pos = drawx * 0.9;
}
if (looping)
{
	looping = false;
	cityscape_bg_1.x_speed = -0.5;
	cityscape_bg_2.x_speed = -1;
	for (var i = 0; i < 3; i++)
		coaster_track[i].x_speed = -15;
}
if (fountain_active)
	fountain.x = camerax() + 25;
