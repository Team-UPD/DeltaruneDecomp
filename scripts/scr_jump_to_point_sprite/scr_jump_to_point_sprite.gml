function scr_jump_to_point_sprite(arg0, arg1, arg2, arg3, arg4, arg5)
{
	__jump_to_point = instance_create(x, y, obj_jump_to_point);
	__jump_to_point.target = id;
	with (__jump_to_point)
	{
		startx = x;
		starty = y;
		endx = arg0;
		endy = arg1;
		jumpspeed = arg2;
		jumptime = arg3;
		jumpsprite = arg4;
		landsprite = arg5;
		if (arg4 > 0)
			usesprites = 1;
		drawshadow = 0;
	}
	return __jump_to_point;
}
