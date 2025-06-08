if (instance_exists(obj_heart))
{
	x = obj_heart.x;
	y = obj_heart.y;
	image_index = obj_heart.image_index;
}
else
{
	instance_destroy();
}
