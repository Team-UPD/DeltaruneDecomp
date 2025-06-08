function scr_lrecover(arg0)
{
	recovered = arg0;
	maxedout = 0;
	if (global.lhp < global.lmaxhp)
		global.lhp += arg0;
	else
		maxedout = 1;
	if (global.lhp >= global.lmaxhp && maxedout == 0)
	{
		global.lhp = global.lmaxhp;
		maxedout = 1;
	}
}
