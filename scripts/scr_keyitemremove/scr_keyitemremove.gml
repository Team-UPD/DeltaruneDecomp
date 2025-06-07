function scr_keyitemremove(arg0)
{
	removed = 0;
	scr_keyitemcheck(arg0);
	if (haveit == 1)
	{
		loc = 0;
		skip = 0;
		if (global.keyitem[0] == arg0 && skip == 0)
		{
			loc = 0;
			skip = 1;
		}
		if (global.keyitem[1] == arg0 && skip == 0)
		{
			loc = 1;
			skip = 1;
		}
		if (global.keyitem[2] == arg0 && skip == 0)
		{
			loc = 2;
			skip = 1;
		}
		if (global.keyitem[3] == arg0 && skip == 0)
		{
			loc = 3;
			skip = 1;
		}
		if (global.keyitem[4] == arg0 && skip == 0)
		{
			loc = 4;
			skip = 1;
		}
		if (global.keyitem[5] == arg0 && skip == 0)
		{
			loc = 5;
			skip = 1;
		}
		if (global.keyitem[6] == arg0 && skip == 0)
		{
			loc = 6;
			skip = 1;
		}
		if (global.keyitem[7] == arg0 && skip == 0)
		{
			loc = 7;
			skip = 1;
		}
		if (global.keyitem[8] == arg0 && skip == 0)
		{
			loc = 8;
			skip = 1;
		}
		if (global.keyitem[9] == arg0 && skip == 0)
		{
			loc = 9;
			skip = 1;
		}
		if (global.keyitem[10] == arg0 && skip == 0)
		{
			loc = 10;
			skip = 1;
		}
		if (global.keyitem[11] == arg0 && skip == 0)
		{
			loc = 11;
			skip = 1;
		}
		scr_keyitemshift(loc, 0);
		removed = 1;
	}
}
