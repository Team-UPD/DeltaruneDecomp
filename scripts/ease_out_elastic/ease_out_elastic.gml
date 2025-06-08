function ease_out_elastic(arg0, arg1, arg2, arg3)
{
	var _s = 1.70158;
	var _p = 0;
	var time = arg0;
	var start = arg1;
	var change = arg2;
	var duration = arg3;
	if (time == 0 || change == 0)
		return start;
	time /= duration;
	if (time == 1)
		return start + arg2;
	if (!_p)
		_p = duration * 0.3;
	if (change < abs(arg2))
	{
		change = arg2;
		_s = _p * 0.25;
	}
	else
	{
		_s = (_p / (2 * pi)) * arcsin(arg2 / change);
	}
	return (change * power(2, -10 * time) * sin((((time * duration) - _s) * (2 * pi)) / _p)) + arg2 + start;
}
