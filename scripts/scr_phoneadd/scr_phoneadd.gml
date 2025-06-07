function scr_phoneadd(arg0)
{
	i = 0;
	loop = 1;
	noroom = 0;
	global.phone[8] = 999;
	while (loop == 1)
	{
		if (global.phone[i] == 0)
		{
			global.phone[i] = arg0;
			break;
		}
		if (i == 8)
		{
			noroom = 1;
			break;
		}
		i += 1;
	}
	scr_phonename();
}
