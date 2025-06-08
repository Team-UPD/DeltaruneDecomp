if (image_alpha < 0.15)
	image_alpha += 0.01;
if (slow_down == 0)
	siner += 1;
y = ystart + ((siner * siner * siner) / 2048);
if (y >= 640)
	instance_destroy();
