newx1 = lengthdir_x(radius, rot + ((360 / trimax) * i));
newy1 = lengthdir_y(radius / 2, rot + ((360 / trimax) * i));
newx2 = lengthdir_x(radius, rot + ((360 / trimax) * (i + 1)));
newy2 = lengthdir_y(radius / 2, rot + ((360 / trimax) * (i + 1)));
if (newy1 <= 0)
	newy1 *= 0.6;
if (newy2 <= 0)
	newy2 *= 0.6;
if (blackon == 0)
{
	draw_set_color(dkblue);
	blackon = 1;
}
else
{
	blackon = 0;
	draw_set_color(dkblue2);
}
