x += xs;
y += ys;
xs *= 0.9;
ys *= 0.9;
image_xscale *= 0.97;
image_yscale *= 0.97;
if ((image_xscale + image_yscale) < 0.1)
	instance_destroy();
