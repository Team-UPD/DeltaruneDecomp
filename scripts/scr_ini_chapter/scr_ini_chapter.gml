function scr_ini_chapter(arg0, arg1)
{
	if (arg0 >= 2)
		return "G_" + string(arg0) + "_" + string(arg1);
	else
		return "G" + string(arg1);
}
