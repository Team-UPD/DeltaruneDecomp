y = master.y + posY;
depth = 10000;
image_xscale += 0.02;
image_yscale += 0.02;
image_alpha -= 0.04;
if (image_alpha <= 0)
	instance_destroy();
