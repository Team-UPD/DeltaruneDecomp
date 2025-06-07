function ossafe_fill_rectangle_color(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
	var x1 = arg0;
	var y1 = arg1;
	var x2 = arg2;
	var y2 = arg3;
	var col1 = arg4;
	var col2 = arg5;
	var col3 = arg6;
	var col4 = arg7;
	var outline = false;
	if (argument_count > 8)
		outline = arg8;
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
	draw_rectangle_color(x1, y1, x2, y2, col1, col2, col3, col4, outline);
}
