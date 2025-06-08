for (i = 0; i < 15; i++)
{
	d = instance_create(x, y, obj_confetti_overworld);
	d.direction = random_range(direction - 20, direction + 20);
	d.height = height;
}
instance_destroy();
