function scr_tensionheal(arg0)
{
	global.tension += arg0;
	if (global.tension > global.maxtension)
		global.tension = global.maxtension;
}
