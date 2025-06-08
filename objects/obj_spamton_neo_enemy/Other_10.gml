if ((global.mercymod[myself] > 25 && phase == 1) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.75) && phase == 1))
	phase = 2;
if ((global.mercymod[myself] > 50 && phase == 2) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.5) && phase == 2))
	phase = 3;
if ((global.mercymod[myself] > 70 && phase == 3) || (global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.3) && phase == 3))
{
	phaseturn = 0;
	phase = 4;
}
turn++;
phaseturn++;
if (phaseturn == 1)
{
	rr = 0;
	difficulty = 1;
}
if (phaseturn == 2)
{
	rr = 6;
	difficulty = 0;
}
if (phaseturn == 3)
{
	rr = 2;
	difficulty = 0;
}
if (phaseturn == 4)
{
	rr = 8;
	difficulty = 0;
}
if (phaseturn == 5)
{
	rr = 8.5;
	difficulty = 0;
	if (hellmode == 1)
		difficulty = 2;
}
if (phaseturn == 6)
{
	rr = 7;
	difficulty = 0;
}
if (phaseturn == 7)
{
	rr = 2;
	difficulty = 2;
}
if (phaseturn == 8)
{
	rr = 0;
	difficulty = 3;
}
if (phaseturn == 9)
{
	rr = 7;
	difficulty = 0;
}
if (phaseturn == 10)
{
	rr = 8.5;
	difficulty = 2;
	if (nothitduringphonehands == 1 || hellmode == 1)
	{
		rr = 8.5;
		difficulty = 1;
	}
}
if (phaseturn == 11)
{
	rr = 8;
	difficulty = 1;
}
if (phaseturn == 12)
{
	rr = 6;
	difficulty = 1;
	phaseturn = 7;
}
if (phase == 4)
{
	if (phaseturn == 1)
	{
		rr = 2;
		difficulty = 1;
	}
	if (phaseturn == 2)
	{
		rr = 8;
		difficulty = 3;
	}
	if (phaseturn == 3)
	{
		rr = 9;
		difficulty = 0;
		haveusedfinalattack = 1;
	}
	if (phaseturn == 4)
	{
		rr = 2;
		difficulty = 1;
	}
	if (phaseturn == 5)
	{
		rr = 7;
		difficulty = 0;
	}
	if (phaseturn == 6)
	{
		rr = 9;
		difficulty = 0;
		phaseturn = 3;
	}
}
if ((global.monsterhp[myself] < (global.monstermaxhp[myself] * 0.1) && haveusedfinalattack == 0) || (global.mercymod[myself] > 90 && haveusedfinalattack == 0))
{
	rr = 9;
	difficulty = 0;
	haveusedfinalattack = 1;
	phaseturn = 3;
}
if (weirdpathendcon > 0)
	rr = 5;
