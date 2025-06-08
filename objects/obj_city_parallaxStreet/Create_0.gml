ss = -0.125;
auto = 0;
timer = 9;
depth = 10001110;
c_dark = make_color_rgb(100, 100, 100);
car_timer = 0;
car_start_pos = x;
drawx = 0;
animsiner = 0;
drawx_prev = 0;
nocars = false;
max_cars = floor((room_width * 2) / 160) + 1;
for (var i = 0; i < max_cars; i++)
{
	for (var j = 0; j < 2; j++)
	{
		car_pos[i][j] = (j == 1) ? (i * 160) : (80 + (i * 160));
		car_timer[i][j] = 0;
	}
}
