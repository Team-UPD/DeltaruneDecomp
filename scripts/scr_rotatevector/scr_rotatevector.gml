function scr_rotatevector(arg0, arg1, arg2)
{
	var _tempVector = 
	{
		x: arg0,
		y: arg1
	};
	if (arg2 == 0)
		return _tempVector;
	var _dir = point_direction(0, 0, arg0, arg1);
	var _len = point_distance(0, 0, arg0, arg1);
	_tempVector.x = lengthdir_x(_len, _dir + arg2);
	_tempVector.y = lengthdir_y(_len, _dir + arg2);
	return _tempVector;
}
