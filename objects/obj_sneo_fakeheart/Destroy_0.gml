if (global.turntimer <= 0)
	global.inv = -1;
if (instance_exists(obj_heart))
{
	obj_heart.image_alpha = 1;
	obj_heart.x = x;
	obj_heart.y = y;
	obj_heart.color = 1;
}
