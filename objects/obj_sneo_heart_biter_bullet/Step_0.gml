image_angle = direction;
timer++;
if (timer > 50)
	image_alpha -= 0.1;
if (image_alpha < 0)
	instance_destroy();
if (global.turntimer < 1)
	instance_destroy();
