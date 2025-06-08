image_xscale = 1;
image_yscale = 1;
siner = 0;
sinerb = 0;
frame = 0;
timer = 0;
bodyflip = 1;
headimage = 2;
buffer = 0;
bultype = 0;
if (instance_find(object_index, 1) == id)
	headimage = 5;
if (instance_find(object_index, 2) == id)
	headimage = 8;
headframe = 0;
active = 0;
shoottimer = -headimage * 4;
