if (image_index >= 7)
	instance_destroy();
d = scr_afterimage();
d.image_index = image_index + 8;
d.direction = direction;
d.speed = 4;
