image_alpha -= 0.02;
if (image_alpha == 0)
	instance_create(320, -260, obj_thrash_intro);
if (image_alpha < 0)
	instance_destroy();
