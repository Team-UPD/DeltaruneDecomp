image_xscale = max(0, image_xscale * 0.8);
image_alpha = max(0, image_alpha - 0.016666666666666666);
if (image_xscale <= 0)
	instance_destroy();
