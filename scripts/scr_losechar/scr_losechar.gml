function scr_losechar()
{
	global.char[2] = 0;
	global.char[1] = 0;
	for (i = 0; i < 36; i += 1)
		global.submenucoord[i] = 0;
	with (obj_darkcontroller)
	{
		chartotal = 0;
		havechar[0] = 0;
		havechar[1] = 0;
		havechar[2] = 0;
		for (i = 0; i < 3; i += 1)
		{
			global.faceaction[i] = 0;
			if (global.char[i] != 0)
				chartotal += 1;
			if (global.char[i] == 1)
			{
				havechar[0] = 1;
				charpos[0] = i;
			}
			if (global.char[i] == 2)
			{
				havechar[1] = 1;
				charpos[1] = i;
			}
			if (global.char[i] == 3)
			{
				havechar[2] = 1;
				charpos[2] = i;
			}
		}
	}
	global.submenu = 0;
	global.charselect = -1;
	for (i = 0; i < 36; i += 1)
		global.submenucoord[i] = 0;
}
