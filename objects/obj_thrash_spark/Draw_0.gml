draw_self();
image_alpha -= fadespeed;
image_angle += image_spin;
if (image_alpha <= 0)
	instance_destroy();
