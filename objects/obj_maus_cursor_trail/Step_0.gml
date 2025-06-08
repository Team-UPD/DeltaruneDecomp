lifetime--;
depth++;
if (lifetime < 0)
	instance_destroy();
