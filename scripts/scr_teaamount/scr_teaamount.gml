function scr_teaamount(arg0, arg1)
{
	var __healamt = 10;
	if (arg0 == 1)
	{
		if (arg1 == 1)
			__healamt = 10;
		if (arg1 == 2)
			__healamt = 120;
		if (arg1 == 3)
			__healamt = 120;
		if (arg1 == 4)
			__healamt = 70;
	}
	if (arg0 == 2)
	{
		if (arg1 == 1)
			__healamt = 120;
		if (arg1 == 2)
			__healamt = 10;
		if (arg1 == 3)
			__healamt = 120;
		if (arg1 == 4)
			__healamt = 400;
	}
	if (arg0 == 3)
	{
		if (arg1 == 1)
			__healamt = 60;
		if (arg1 == 2)
			__healamt = 120;
		if (arg1 == 3)
			__healamt = 10;
		if (arg1 == 4)
			__healamt = 50;
	}
	if (arg0 == 4)
	{
		if (arg1 == 1)
			__healamt = 70;
		if (arg1 == 2)
			__healamt = 120;
		if (arg1 == 3)
			__healamt = 50;
		if (arg1 == 4)
			__healamt = 10;
	}
	if (global.fighting == 1 && __healamt < 40)
		__healamt = 40;
	if (global.chapter == 2)
	{
		if (i_ex(o_boxingcontroller))
			__healamt = 100;
	}
	return __healamt;
}
