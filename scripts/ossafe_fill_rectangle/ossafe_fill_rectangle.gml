function ossafe_fill_rectangle(arg0, arg1, arg2, arg3, arg4 = false)
{
	if (arg0 > arg2)
	{
		var temp = arg0;
		arg0 = arg2;
		arg2 = temp;
	}
	if (arg1 > arg3)
	{
		var temp = arg1;
		arg1 = arg3;
		arg3 = temp;
	}
	if (os_type == os_ps4 || os_type == os_psvita || os_type == os_ps5)
	{
		arg2++;
		arg3++;
	}
	draw_rectangle(arg0, arg1, arg2, arg3, arg4);
}
