function scr_wrap(arg0, arg1, arg2)
{
	var _val = arg0;
	var _range = abs(arg2 - arg1);
	if (arg2 <= arg1)
	{
		return arg0;
	}
	else
	{
		while (_val < arg1)
			_val += _range;
		while (_val > arg2)
			_val -= _range;
		return _val;
	}
}
