image_xscale = 2;
image_yscale = 2;
siner = 0;
frame = 0;
timer = 0;
bodyflip = 1;
headimage = 2;
if (instance_find(object_index, 1) == id)
	headimage = 5;
if (instance_find(object_index, 2) == id)
	headimage = 8;
headframe = 0;
active = 0;
shoottimer = -headimage * 4;
