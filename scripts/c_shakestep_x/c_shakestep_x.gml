function c_shakestep_x(arg0, arg1, arg2, arg3, arg4, arg5)
{
	c_autowalk(0);
	c_imageindex(1);
	c_addxy(arg0, arg1);
	if (arg5 == 1)
		c_var("stepsound", 1);
	c_delaycmd(arg2, "imageindex", 0);
	c_shakeobj();
	if (arg4 > 1)
	{
		for (__argi = 1; __argi < arg4; __argi++)
		{
			c_delaycmd(__argi * arg3, "imageindex", 1);
			c_delaycmd4(__argi * arg3, "addxy", arg0, arg1, 0, 0);
			if (arg5 == 1)
				c_delaycmd4(__argi * arg3, "var", 0, "stepsound", 1, 0);
			c_delaycmd((__argi * arg3) + arg2, "imageindex", 0);
			c_delaycmd(__argi * arg3, "shakeobj", 0);
		}
	}
}
