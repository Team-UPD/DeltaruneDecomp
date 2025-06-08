function ease_inout_back(arg0, arg1, arg2, arg3)
{
	var _s = 1.70158;
	arg0 /= arg3;
	arg0 *= 2;
	if (arg0 < 1)
	{
		_s *= 1.525;
		return (arg2 * 0.5 * (arg0 * arg0 * (((_s + 1) * arg0) - _s))) + arg1;
	}
	arg0 -= 2;
	_s *= 1.525;
	return (arg2 * 0.5 * ((arg0 * arg0 * (((_s + 1) * arg0) + _s)) + 2)) + arg1;
}
