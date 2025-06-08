function scr_move_step_solids_direction(arg0, arg1)
{
	var __mx = lengthdir_x(arg0, arg1);
	var __my = lengthdir_y(arg0, arg1);
	if (place_meeting(x + __mx, y + __my, obj_solidblock))
	{
		if (!place_meeting(x + __mx, y, obj_solidblock))
			__my = 0;
		else if (!place_meeting(x, y + __my, obj_solidblock))
			__mx = 0;
	}
	x += __mx;
	y += __my;
	return point_distance(0, 0, __mx, __my);
}
