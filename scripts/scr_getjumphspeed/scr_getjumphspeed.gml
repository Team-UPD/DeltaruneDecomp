function scr_getjumphspeed(arg0, arg1, arg2, arg3)
{
	var __traveltime = sqrt((2 * arg1) / arg0);
	var __downwardDistance = arg3 - (y - arg1);
	__traveltime += sqrt((2 * __downwardDistance) / arg0);
	return arg2 / __traveltime;
}
