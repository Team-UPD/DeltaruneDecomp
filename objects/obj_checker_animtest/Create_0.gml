type = 0;
con = 0;
subcon = 0;
secondtime = 0;
if (room == room_field_checkersboss)
{
	if (global.plot < 60)
	{
		con = 1;
		image_xscale = 2;
		image_yscale = 2;
		subcon = 0;
	}
	else
	{
		instance_destroy();
	}
}
if (room == room_cc_6f)
{
	secondtime = 1;
	con = 1;
	image_xscale = 2;
	image_yscale = 2;
	subcon = 0;
}
