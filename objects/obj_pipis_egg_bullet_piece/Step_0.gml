image_alpha -= 0.1;
grav += 0.3;
y += grav;
if (y > (cameray() + cameraheight() + 10))
	instance_destroy();
if (global.turntimer < 1)
	instance_destroy();
