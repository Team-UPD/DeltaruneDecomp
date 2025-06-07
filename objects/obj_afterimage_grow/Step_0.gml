image_alpha -= fade;
image_xscale += xrate;
image_yscale += yrate;
if (image_alpha < 0)
	instance_destroy();
