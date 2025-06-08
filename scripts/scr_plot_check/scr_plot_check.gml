function scr_plot_check(arg0)
{
	var __plot = arg0;
	if (__plot > 0)
	{
		if (global.plot >= __plot)
			return true;
		else
			return false;
	}
	else if (global.plot < __plot)
	{
		return true;
	}
	else
	{
		return false;
	}
}
