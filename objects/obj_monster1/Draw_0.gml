if (state == 3)
{
	hurttimer -= 1;
	if (hurttimer < 0)
	{
		state = 0;
	}
	else
	{
		if (global.monster[myself] == 0)
		{
			hspeed = 12;
			turnt -= 8;
			vspeed = -4;
		}
		hurtshake += 1;
		if (hurtshake > 1)
		{
			if (shakex > 0)
				shakex -= 1;
			if (shakex < 0)
				shakex += 1;
			shakex = -shakex;
			hurtshake = 0;
		}
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
