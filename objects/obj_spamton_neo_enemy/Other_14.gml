funnycheat += 1;
if (funnycheat > 5)
{
	if (global.tempflag[37] < 2)
	{
		if (global.monsterat[myself] < 26)
			global.monsterat[myself] += 0.5;
		else
			global.monsterat[myself] = 26;
		hellmode = 1;
	}
	else if (global.tempflag[37] < 4)
	{
		if (global.monsterat[myself] < 22)
			global.monsterat[myself] += 0.25;
		else
			global.monsterat[myself] = 22;
		hellmode = 1;
	}
	else if (global.tempflag[37] < 6)
	{
		if (global.monsterat[myself] < 18)
			global.monsterat[myself] += 0.1;
		else
			global.monsterat[myself] = 18;
	}
	else if (global.tempflag[37] < 10)
	{
		if (global.monsterat[myself] < 15)
			global.monsterat[myself] += 0.04;
		else
			global.monsterat[myself] = 15;
	}
	else if (global.tempflag[37] >= 10)
	{
	}
}
