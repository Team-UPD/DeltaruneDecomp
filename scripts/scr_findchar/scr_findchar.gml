function scr_findchar(arg0)
{
	__charslot = -1;
	for (__findchar = 0; __findchar < 3; __findchar++)
	{
		if (global.char[__findchar] == arg0)
		{
			__charslot = __findchar;
			break;
		}
	}
	return __charslot;
}
