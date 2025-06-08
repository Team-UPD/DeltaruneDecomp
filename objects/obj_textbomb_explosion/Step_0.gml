lifetimer++;
if (image_index >= 1 && image_index <= 2)
	active = 1;
else
	active = 0;
if (image_index >= 4)
	instance_destroy();
if (lifetimer > (60 & !scr_onscreen_tolerance(id, 40)))
	instance_destroy();
