function gt_inbounds(arg0, arg1)
{
	return gt_inbounds_tol(arg0, arg1, 0);
}

function gt_inbounds_tol(arg0, arg1, arg2)
{
	return arg0 >= (gt_minx - arg2) && arg0 <= (gt_maxx + arg2) && arg1 >= (gt_miny - arg2) && arg1 <= (gt_maxy + arg2);
}
