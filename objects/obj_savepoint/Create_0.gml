image_speed = 0.2;
myinteract = 0;
talked = 0;
mydialoguer = 3478247328;
scr_depth();
if (global.darkzone == 1)
{
	image_speed = 0.2;
	image_xscale = 2;
	image_yscale = 2;
}
if (room == room_cc_throneroom)
{
	if (global.plot >= 240)
		instance_destroy();
}
