function scr_itemshift_temp(arg0, arg1)
{
	tempitem[12][arg1] = 0;
	for (i = arg0; i < 12; i += 1)
		tempitem[i][arg1] = tempitem[i + 1][arg1];
}
