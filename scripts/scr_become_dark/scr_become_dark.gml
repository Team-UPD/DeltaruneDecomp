function scr_become_dark()
{
	global.darkzone = 1;
	global.hp[1] = ceil((global.lhp / global.lmaxhp) * global.maxhp[1]);
	if (global.hp[1] < 1)
		global.hp[1] = 1;
	if (global.hp[1] > global.maxhp[1])
		global.hp[1] = global.maxhp[1];
}
