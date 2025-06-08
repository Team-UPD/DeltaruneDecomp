function ossafe_fill_rectangle(arg0, arg1, arg2, arg3)
{
	var x1 = arg0;
	var y1 = arg1;
	var x2 = arg2;
	var y2 = arg3;
	if (x1 > x2)
	{
		var temp = x1;
		x1 = x2;
		x2 = temp;
	}
	if (y1 > y2)
	{
		var temp = y1;
		y1 = y2;
		y2 = temp;
	}
	if (os_type == os_ps4 || os_type == os_psvita || os_type == os_ps5)
	{
		x2++;
		y2++;
	}
	draw_rectangle(x1, y1, x2, y2, false);
}
