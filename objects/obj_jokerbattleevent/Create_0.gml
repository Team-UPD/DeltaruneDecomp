quick = 0;
if (global.tempflag[4] == 1)
	quick = 1;
if (global.flag[241] >= 6)
{
	con = 999;
	instance_destroy();
}
else
{
	con = 1;
	image_xscale = 2;
	image_yscale = 2;
	image_speed = 0;
	bulcon = 0;
}
