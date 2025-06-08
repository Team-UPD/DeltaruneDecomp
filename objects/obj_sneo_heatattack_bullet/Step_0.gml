image_angle = dir;
f += 1.4;
x += lengthdir_x(f, dir);
y += lengthdir_y(f, dir);
if (global.turntimer < 1)
	instance_destroy();
