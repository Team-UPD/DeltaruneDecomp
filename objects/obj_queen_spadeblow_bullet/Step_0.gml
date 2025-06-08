rotator_target = obj_queen_spadeblow;
length += 6;
if (type == 1)
{
	x = rotator_target.x + lengthdir_x(length, obj_queen_spadeblow.place1);
	y = rotator_target.y + lengthdir_y(length, obj_queen_spadeblow.place1);
	image_angle = obj_queen_spadeblow.place1;
}
if (type == 2)
{
	x = rotator_target.x + lengthdir_x(length, obj_queen_spadeblow.place2);
	y = rotator_target.y + lengthdir_y(length, obj_queen_spadeblow.place2);
	image_angle = obj_queen_spadeblow.place2;
}
if (y >= (cameray() + 300))
{
	image_alpha -= 0.1;
	if (image_alpha <= 0)
		instance_destroy();
}
