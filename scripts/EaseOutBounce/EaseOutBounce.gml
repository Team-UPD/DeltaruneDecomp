function EaseOutBounce(arg0, arg1, arg2, arg3)
{
	arg0 /= arg3;
	if (arg0 < 0.36363636363636365)
	{
		return (arg2 * 7.5625 * arg0 * arg0) + arg1;
	}
	else if (arg0 < 0.7272727272727273)
	{
		arg0 -= 0.5454545454545454;
		return (arg2 * ((7.5625 * arg0 * arg0) + 0.75)) + arg1;
	}
	else if (arg0 < 0.9090909090909091)
	{
		arg0 -= 0.8181818181818182;
		return (arg2 * ((7.5625 * arg0 * arg0) + 0.9375)) + arg1;
	}
	else
	{
		arg0 -= 0.9545454545454546;
		return (arg2 * ((7.5625 * arg0 * arg0) + 0.984375)) + arg1;
	}
}
