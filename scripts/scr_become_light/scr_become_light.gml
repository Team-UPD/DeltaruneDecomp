function scr_become_light()
{
	if (scr_litemcheck(5) == 0)
		scr_litemget(5);
	if (scr_keyitemcheck(2))
	{
		if (scr_litemcheck(8) == 0)
			scr_litemget(8);
	}
	if (scr_keyitemcheck(13))
	{
		if (scr_litemcheck(11) == 0)
			scr_litemget(11);
	}
	else
	{
		scr_litemremove(11);
	}
	global.lhp = ceil(global.hp[1] / global.maxhp[1]) * global.lmaxhp;
	if (global.lhp < 1)
		global.lhp = 1;
	if (global.lhp > global.lmaxhp)
		global.lhp = global.lmaxhp;
	global.lwstrength = 1;
	if (global.charweapon[1] == 1)
		global.lweapon = 2;
	if (global.charweapon[1] == 5)
		global.lweapon = 6;
	if (global.charweapon[1] == 8)
		global.lweapon = 7;
	global.darkzone = 0;
}
