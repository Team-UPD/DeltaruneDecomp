image_xscale -= 0.1;
image_yscale -= 0.1;
if (image_xscale <= 0)
	instance_destroy();
image_angle += image_rotation;
if (dustmode == 0)
	image_blend = merge_color(c_red, c_yellow, image_xscale / 2);
