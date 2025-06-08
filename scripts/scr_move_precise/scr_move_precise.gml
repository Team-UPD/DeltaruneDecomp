function scr_move_precise(arg0, arg1, arg2)
{
	_moveprecise = instance_create(x, y, obj_move_precise);
	_moveprecise.target = id;
	_moveprecise.type = arg0;
	if (arg1 != 0)
		_moveprecise.xOrientation = arg1;
	if (arg2 != 0)
		_moveprecise.yOrientation = arg2;
	with (_moveprecise)
		event_user(0);
	return _moveprecise;
}
