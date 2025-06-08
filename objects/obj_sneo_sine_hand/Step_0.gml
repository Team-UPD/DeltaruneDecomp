if (con == 0 && image_alpha < 1)
	image_alpha += 0.04;
if (con == 1)
	image_alpha -= 0.04;
if (con == 1 && image_alpha < 0)
	instance_destroy();
if (x < (camerax() - 21))
	x = camerax() + camerawidth() + 21;
siner += 0.4;
y = ystart + (sin(siner / 4) * 20);
