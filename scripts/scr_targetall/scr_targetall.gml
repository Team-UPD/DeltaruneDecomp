function scr_targetall()
{
	for (_ti = 0; _ti < 3; _ti += 1)
	{
		if (global.charcantarget[_ti] == 1)
			global.targeted[_ti] = 1;
	}
	mytarget = 3;
	target = 3;
}
