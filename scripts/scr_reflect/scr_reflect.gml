function scr_reflect(arg0, arg1)
{
	var reversedir = (arg0 + 180) % 360;
	var angledif = angle_difference(arg1, reversedir);
	if (angledif >= 90 || angledif <= -90)
		return arg0;
	return arg1 + angledif;
}
