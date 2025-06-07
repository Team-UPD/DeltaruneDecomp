timer += 1;
if (timer >= 16)
	image_alpha -= 0.1;
if (image_alpha <= 0)
	instance_destroy();
image_xscale += 0.05;
image_yscale += 0.05;
