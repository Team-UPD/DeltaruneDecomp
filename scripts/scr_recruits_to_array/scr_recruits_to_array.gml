function scr_recruits_to_array()
{
	var startnum = 0;
	var endnum = 50;
	var whichrecruit = "full";
	if (argument_count >= 1)
		whichrecruit = argument[0];
	if (argument_count >= 2)
	{
		if (argument[1] == 1)
			endnum = 25;
		if (argument[1] == 2)
			startnum = 30;
	}
	recruit[0] = 0;
	totalrecruits = 0;
	halfrecruits = 0;
	eitherrecruits = 0;
	for (var i = startnum; i < endnum; i++)
	{
		if (global.flag[i + 600] > 0)
		{
			if (whichrecruit == "either")
				recruit[eitherrecruits] = i;
			eitherrecruits++;
			if (global.flag[i + 600] == 1)
			{
				if (whichrecruit == "full")
					recruit[totalrecruits] = i;
				totalrecruits++;
			}
			else
			{
				if (whichrecruit == "half")
					recruit[halfrecruits] = i;
				halfrecruits++;
			}
		}
	}
	return totalrecruits;
}
