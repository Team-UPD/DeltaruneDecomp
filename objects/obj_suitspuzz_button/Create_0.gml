image_xscale = 2;
image_yscale = 2;
press_timer = 0;
boss = 0;
image_speed = 0;
type = 0;
d_index = 0;
if (id == instance_find(object_index, 0))
{
	boss = 1;
	type = 0;
	image_index = 0;
	d_index = image_index;
}
if (id == instance_find(object_index, 1))
{
	type = 1;
	image_index = 2;
	d_index = image_index;
}
if (id == instance_find(object_index, 2))
{
	type = 2;
	image_index = 4;
	d_index = image_index;
}
