function scr_qb_reset()
{
	attackcount = 0;
	attackcountmax = 0;
	attackpattern = 0;
	for (i = 0; i < 20; i++)
	{
		list_attacktype[i] = 0;
		list_attackamount[i] = 0;
		list_attackvariant[i] = 0;
		list_attackwait[i] = 0;
	}
}
