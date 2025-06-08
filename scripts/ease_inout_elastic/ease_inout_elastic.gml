function ease_inout_elastic(arg0, arg1, arg2, arg3)
{
	var _s = 1.70158;
	var _p = 0;
	var _a = arg2;
	if (arg0 == 0 || _a == 0)
		return arg1;
	arg0 /= (arg3 * 0.5);
	if (arg0 == 2)
		return arg1 + arg2;
	if (!_p)
		_p = arg3 * 0.44999999999999996;
	if (_a < abs(arg2))
	{
		_a = arg2;
		_s = _p * 0.25;
	}
	else
	{
		_s = (_p / (2 * pi)) * arcsin(arg2 / _a);
	}
	if (arg0 < 1)
		return (-0.5 * (_a * power(2, 10 * --arg0) * sin((((arg0 * arg3) - _s) * (2 * pi)) / _p))) + arg1;
	return (_a * power(2, -10 * --arg0) * sin((((arg0 * arg3) - _s) * (2 * pi)) / _p) * 0.5) + arg2 + arg1;
}
