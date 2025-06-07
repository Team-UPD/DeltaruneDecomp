function scr_dead(arg0)
{
	global.charmove[arg0] = 0;
	global.charcantarget[arg0] = 0;
	global.chardead[arg0] = 1;
	global.charaction[arg0] = 0;
	global.charspecial[arg0] = 0;
}
