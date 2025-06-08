if (auto_scroll_start)
{
	auto_scroll_start = false;
	with (looping_bg)
		x_speed = -2;
}
if (auto_scroll_stop)
{
	if ((looping_bg.x_pos % 40) == 0)
	{
		auto_scroll_stop = false;
		with (looping_bg)
			x_speed = 0;
	}
}
