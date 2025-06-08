yspeed *= 1.1;
y -= yspeed;
image_alpha *= 0.8;
if (image_alpha < 0.05)
	instance_destroy();
