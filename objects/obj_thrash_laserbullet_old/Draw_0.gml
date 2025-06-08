if (nextpoint > finalpoint)
{
	laserwidth -= 2;
	if (laserwidth <= 0)
		instance_destroy();
}
for (i = 1; i < nextpoint; i++)
	draw_line_width(points[i - 1][0], points[i - 1][1], points[i][0], points[i][1], laserwidth);
draw_line_width(x, y, points[nextpoint - 1][0], points[nextpoint - 1][1], laserwidth);
