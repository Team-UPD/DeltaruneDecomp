if (timer > 0)
	exit;
timer = 1;
destroyable = 0;
depth -= 40;
d = instance_create(x, y, obj_fadeout);
d.image_blend = c_white;
