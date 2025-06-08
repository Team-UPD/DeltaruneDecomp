function scr_sneo_wall_create(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
{
	if (arg0 == 0)
	{
	}
	if (arg0 == 1)
		emptyspot1[wallsetupcount] = 1;
	if (arg0 == 2)
		breakspot1[wallsetupcount] = 1;
	if (arg0 == 3)
		pipispot1[wallsetupcount] = 1;
	if (arg0 == 4)
		redbreakspot1[wallsetupcount] = 1;
	if (arg1 == 0)
	{
	}
	if (arg1 == 1)
		emptyspot2[wallsetupcount] = 2;
	if (arg1 == 2)
		breakspot2[wallsetupcount] = 2;
	if (arg1 == 3)
		pipispot2[wallsetupcount] = 2;
	if (arg1 == 4)
		redbreakspot2[wallsetupcount] = 2;
	if (arg2 == 0)
	{
	}
	if (arg2 == 1)
		emptyspot3[wallsetupcount] = 3;
	if (arg2 == 2)
		breakspot3[wallsetupcount] = 3;
	if (arg2 == 3)
		pipispot3[wallsetupcount] = 3;
	if (arg2 == 4)
		redbreakspot3[wallsetupcount] = 3;
	if (arg3 == 0)
	{
	}
	if (arg3 == 1)
		emptyspot4[wallsetupcount] = 4;
	if (arg3 == 2)
		breakspot4[wallsetupcount] = 4;
	if (arg3 == 3)
		pipispot4[wallsetupcount] = 4;
	if (arg3 == 4)
		redbreakspot4[wallsetupcount] = 4;
	if (arg4 == 0)
	{
	}
	if (arg4 == 1)
		emptyspot5[wallsetupcount] = 5;
	if (arg4 == 2)
		breakspot5[wallsetupcount] = 5;
	if (arg4 == 3)
		pipispot5[wallsetupcount] = 5;
	if (arg4 == 4)
		redbreakspot5[wallsetupcount] = 5;
	wallcreatetimer[wallsetupcount] = arg5;
	walltype[wallsetupcount] = arg6;
	wallsetupcount++;
}
