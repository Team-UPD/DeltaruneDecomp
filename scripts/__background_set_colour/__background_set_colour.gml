function __background_set_colour(arg0)
{
	var __newcol = arg0;
	var __colinfo = __background_get_colour_element();
	if (__colinfo[0] == -1)
		return 0;
	layer_background_blend(__colinfo[0], __newcol);
	return __newcol;
}
