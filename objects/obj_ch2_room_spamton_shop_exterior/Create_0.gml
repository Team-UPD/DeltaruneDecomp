con = -1;
if (global.flag[386] == 1)
{
	if (scr_havechar(4))
		global.flag[386] = 2;
	else if (scr_havechar(2) && scr_havechar(3))
		con = 20;
}
else if (global.flag[309] == 0 || global.flag[309] > 2)
{
	instance_destroy();
}
