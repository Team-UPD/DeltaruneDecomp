image_angle = random(360);
image_rotation = choose(4, -4, 6, -6);
image_xscale = 2;
image_yscale = 2;
image_alpha = 0.5;
depth = -5;
if (instance_exists(o_boxingcontroller))
	depth = o_boxingcontroller.depth - 1;
dustmode = 0;
con = 0;
timer = 0;
