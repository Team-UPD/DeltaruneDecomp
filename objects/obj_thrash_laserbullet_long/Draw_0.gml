if (nextpoint > finalpoint)
{
	laserwidth -= 2;
	if (laserwidth <= 0)
		instance_destroy();
}
image_yscale = max((laserwidth - 4) / 10, 0);
var oldcolor = draw_get_color();
draw_set_color(c_black);
if (lasertimer > 0)
	draw_circle(x, y, laserwidth + (((lasertimer % 4) > 1) ? 8 : 6), 0);
else
	draw_circle(x, y, (laserwidth / 2) + 2, 0);
draw_circle(tailx, taily, (laserwidth / 2) + 2, 0);
draw_line_width(x, y, tailx, taily, laserwidth + 4);
draw_set_color(c_white);
draw_line_width(x, y, tailx, taily, laserwidth);
if (lasertimer > 0)
	draw_circle(x, y, laserwidth + (((lasertimer % 4) > 1) ? 6 : 4), 0);
else
	draw_circle(x, y, laserwidth / 2, 0);
draw_circle(tailx, taily, laserwidth / 2, 0);
draw_set_color(oldcolor);
