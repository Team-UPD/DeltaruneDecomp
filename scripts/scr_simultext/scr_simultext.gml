function scr_simultext(arg0)
{
	__simulorder = 0;
	if (arg0 == "kris")
		__simulorder = simulorderkri;
	if (arg0 == "susie")
		__simulorder = simulordersus;
	if (arg0 == "ralsei")
		__simulorder = simulorderral;
	if (arg0 == "noelle")
		__simulorder = simulordernoe;
	__yoffset = __simulorder * 30;
	global.typer = 4;
	battlewriter = instance_create(xx + 30, yy + 376 + __yoffset, obj_writer);
}
