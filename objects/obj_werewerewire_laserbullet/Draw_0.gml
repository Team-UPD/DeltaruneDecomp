if (nextpoint > finalpoint)
{
	if (point_distance(x, y, tailx, taily) <= 0)
		instance_destroy();
}
image_yscale = max((laserwidth - 4) / 10, 0);
var oldcolor = draw_get_color();
draw_set_color(#8080FF);
if (lasertimer > 0)
	draw_circle(x, y, laserwidth + (((lasertimer % 4) > 1) ? 5 : 4), 0);
else
	draw_circle(x, y, (laserwidth / 2) + 2, 0);
draw_circle(tailx, taily, (laserwidth / 2) + 2, 0);
draw_line_width(x, y, tailx, taily, laserwidth + 4);
draw_set_color(c_white);
draw_line_width(x, y, tailx, taily, laserwidth);
if (lasertimer > 0)
	draw_circle(x, y, laserwidth + (((lasertimer % 4) > 1) ? 3 : 2), 0);
else
	draw_circle(x, y, laserwidth / 2, 0);
draw_circle(tailx, taily, laserwidth / 2, 0);
draw_set_color(oldcolor);
