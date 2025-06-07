function scr_mercyadd(arg0, arg1)
{
	global.mercymod[arg0] += arg1;
	if (global.mercymod[arg0] < 0)
		global.mercymod[arg0] = 0;
}
