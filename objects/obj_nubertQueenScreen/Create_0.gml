extflag = false;
image_speed = 0;
siner = 0;
con = 0;
timer = 0;
image_xscale = 4;
image_yscale = 0;
dismiss = 0;
depth = 100000;
scr_depth();
activecon = 1;
index2 = 0;
if (global.plot >= 100)
{
	x = 905;
	y = 75;
	scr_depth();
	reader = instance_create(840, 30, obj_readable_room1);
	reader.image_xscale = 7;
	reader.image_yscale = 5;
}
