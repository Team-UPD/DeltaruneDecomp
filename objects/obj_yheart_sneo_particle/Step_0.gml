timer++;
image_xscale = lerp(image_xscale, 0, timer / 20);
image_yscale = lerp(image_yscale, 0, timer / 20);
if (timer == 20)
	instance_destroy();
