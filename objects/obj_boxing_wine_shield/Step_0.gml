image_alpha -= 0.1;
image_xscale += 0.2;
image_yscale += 0.2;
if (image_alpha < 0)
	instance_destroy();
if (o_boxingqueen.drawflip == 0)
	x = o_boxingqueen.x - 18;
else
	x = o_boxingqueen.x + 18;
