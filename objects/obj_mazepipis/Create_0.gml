boss = 0;
myinteract = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
con = 0;
read = 0;
x += choose(-2, 0, 0, 0, -2);
y += choose(-2, 0, 0, 0, -2);
if (place_meeting(x, y, obj_mazepipis))
	instance_destroy();
scr_depth();
