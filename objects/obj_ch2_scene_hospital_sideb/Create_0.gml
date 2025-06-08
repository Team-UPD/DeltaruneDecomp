step = 0;
if (global.flag[915] == 19)
{
	global.flag[928] = 0;
	con = 1;
	global.flag[20] = 0;
	blackscreen = scr_marker(-10, -10, spr_whitepx_10);
	blackscreen.image_blend = c_black;
	blackscreen.image_xscale = 100;
	blackscreen.image_yscale = 100;
}
else
{
	con = 0;
	instance_destroy();
}
