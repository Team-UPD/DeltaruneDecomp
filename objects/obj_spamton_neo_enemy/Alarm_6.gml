if (endcon > 0)
{
	if (balloonend == 1)
	{
		endcon = 4;
	}
	else
	{
		endcon = 2;
		talktimer = 0;
	}
}
else if (balloonend == 1)
{
	talked = 1;
}
else
{
	talked = 0.6;
	talktimer = 0;
}
