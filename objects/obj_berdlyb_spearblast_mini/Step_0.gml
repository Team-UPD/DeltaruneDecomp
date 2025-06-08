event_inherited();
if (speed > 1 && (y < (gt_miny() - 40) || y > (gt_maxy() + 40)))
	image_alpha -= 0.1;
if (image_alpha <= 0)
	instance_destroy();
