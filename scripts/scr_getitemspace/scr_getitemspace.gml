function scr_getitemspace(arg0)
{
	if (arg0 == "pocket")
	{
		var invroom = 0;
		for (var i = 0; i < 12; i++)
		{
			if (global.item[i] == 0)
				invroom++;
		}
		return invroom;
	}
}
