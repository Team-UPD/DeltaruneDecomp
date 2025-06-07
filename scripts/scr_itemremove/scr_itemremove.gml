function scr_itemremove(arg0)
{
	removed = 0;
	scr_itemcheck(arg0);
	if (haveit == 1)
	{
		loc = 0;
		skip = 0;
		if (global.item[0] == arg0 && skip == 0)
		{
			loc = 0;
			skip = 1;
		}
		if (global.item[1] == arg0 && skip == 0)
		{
			loc = 1;
			skip = 1;
		}
		if (global.item[2] == arg0 && skip == 0)
		{
			loc = 2;
			skip = 1;
		}
		if (global.item[3] == arg0 && skip == 0)
		{
			loc = 3;
			skip = 1;
		}
		if (global.item[4] == arg0 && skip == 0)
		{
			loc = 4;
			skip = 1;
		}
		if (global.item[5] == arg0 && skip == 0)
		{
			loc = 5;
			skip = 1;
		}
		if (global.item[6] == arg0 && skip == 0)
		{
			loc = 6;
			skip = 1;
		}
		if (global.item[7] == arg0 && skip == 0)
		{
			loc = 7;
			skip = 1;
		}
		if (global.item[8] == arg0 && skip == 0)
		{
			loc = 8;
			skip = 1;
		}
		if (global.item[9] == arg0 && skip == 0)
		{
			loc = 9;
			skip = 1;
		}
		if (global.item[10] == arg0 && skip == 0)
		{
			loc = 10;
			skip = 1;
		}
		if (global.item[11] == arg0 && skip == 0)
		{
			loc = 11;
			skip = 1;
		}
		scr_itemshift(loc, 0);
		removed = 1;
	}
}
