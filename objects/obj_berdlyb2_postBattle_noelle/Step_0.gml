image_index = clamp(image_index, 0, 4);
if (i_ex(obj_battleback))
{
	if (obj_battleback.destroy == 1)
		instance_destroy();
}
if (!i_ex(obj_battleback))
	instance_destroy();
