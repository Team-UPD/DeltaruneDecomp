if (init == 0)
{
	image_xscale = size / 3;
	image_yscale = size / 3;
	hp = size;
	init = 1;
	speed = power(2, size - 1);
	if (direction == 0)
		direction = point_direction(x, y, obj_growtangle.x + random_range(-60, 60), obj_growtangle.y);
	if (size == 3)
		shrinksize = 6;
	if (size == 1)
		destroyonhit = 1;
	else if (size == 2)
		shrinksize = 3;
}
if (global.turntimer < 45)
{
	image_speed = 2;
	image_blend = c_red;
	friction = 0.25;
}
if (breaking > 0)
{
	breaking--;
	if (breaking == 0)
	{
		d = instance_create(x, y, obj_sneo_box_restore_effect);
		d.size = size;
		if (size == 3)
			d.size = 4;
		if (size == 3)
		{
			d = instance_create(x, y, obj_sneo_splitbouncer);
			var dir1 = irandom(3);
			d.direction = (dir1 * 90) + 45;
			d.size = 2;
			d = instance_create(x, y, obj_sneo_splitbouncer);
			d.direction = (((dir1 + irandom(2) + 1) % 4) * 90) + 45;
			d.size = 2;
		}
		else if (size == 2)
		{
			d = instance_create(x, y, obj_sneo_splitbouncer);
			var dir1 = irandom(3);
			d.direction = (dir1 * 90) + 45;
			d.size = 1;
			d = instance_create(x, y, obj_sneo_splitbouncer);
			d.direction = (((dir1 + 1) % 4) * 90) + 45;
			d.size = 1;
			d = instance_create(x, y, obj_sneo_splitbouncer);
			d.direction = (((dir1 + 2) % 4) * 90) + 45;
			d.size = 1;
		}
		instance_destroy();
	}
	exit;
}
if (y < (obj_shrinktangle.top + 6) && abs(angle_difference(direction, 90)) < 90)
{
	vspeed *= -1;
	obj_shrinktangle.top += shrinksize;
}
else if (x < (obj_shrinktangle.left + 6) && abs(angle_difference(direction, 180)) < 90)
{
	hspeed *= -1;
	obj_shrinktangle.left += shrinksize;
}
else if (y > (obj_shrinktangle.bottom - 6) && abs(angle_difference(direction, 270)) < 90)
{
	vspeed *= -1;
	obj_shrinktangle.bottom -= shrinksize;
}
else if (x > (obj_shrinktangle.right - 6) && abs(angle_difference(direction, 0)) < 90)
{
	hspeed *= -1;
	obj_shrinktangle.right -= shrinksize;
}
