function scr_directionsnap(arg0, arg1)
{
	var __angle = 360 / arg1;
	return ((arg0 + (__angle / 2)) % __angle) - (__angle / 2);
}
