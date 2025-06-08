times += 1;
instance_create(x + 30 + random(20), y + 30 + random(20), obj_healsparkle);
alarm[0] = 3;
if (times > 2)
	instance_destroy();
