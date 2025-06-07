if (instance_exists(obj_heart))
{
	x = obj_heart.x + 10;
	y = obj_heart.y + 10;
}
else
{
	instance_destroy();
}
