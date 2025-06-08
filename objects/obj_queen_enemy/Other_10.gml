turn++;
phaseturn++;
rr = 0;
if (usewineattack == 1 && phase == 2)
{
	rr = 2;
	difficulty = 0;
	usewineattack = 0;
	phaseturn -= 1;
}
if (usewineattack == 1 && phase == 3)
{
	rr = 2;
	difficulty = 1;
	usewineattack = 0;
	phaseturn -= 1;
}
if (usewineattack == 1 && phase == 4)
{
	if (beatwine2nodamage == 1)
	{
		rr = 2;
		difficulty = 2;
		usewineattack = 0;
	}
	else
	{
		rr = 2;
		difficulty = 1;
		usewineattack = 0;
	}
	phaseturn -= 1;
}
if (usefinalattack == 1)
{
	rr = 1;
	difficulty = 0;
	usefinalattack = 2;
	phaseturn -= 1;
}
if ((phase == 1 && rr != 2 && rr != 1) || (phase == 2 && rr != 2 && rr != 1))
{
	if (phaseturn == 1)
	{
		rr = 7;
		difficulty = 0;
	}
	if (phaseturn == 2)
	{
		rr = 3;
		difficulty = 0;
	}
	if (phaseturn == 3)
	{
		rr = 6;
		difficulty = 0;
	}
	if (phaseturn == 4)
	{
		rr = 8;
		difficulty = 0;
	}
	if (phaseturn == 5)
	{
		rr = 4;
		difficulty = 0;
	}
	if (phaseturn == 6)
	{
		rr = 9;
		difficulty = 0;
	}
	if (phaseturn == 7)
	{
		rr = 8;
		difficulty = 4;
	}
	if (phaseturn > 7)
	{
		phaseturn = 7;
		var rand = irandom(120);
		if (rand >= 0)
		{
			rr = 7;
			difficulty = 0;
		}
		if (rand >= 20)
		{
			rr = 3;
			difficulty = 0;
		}
		if (rand >= 40)
		{
			rr = 6;
			difficulty = 0;
		}
		if (rand >= 60)
		{
			rr = 8;
			difficulty = 0;
		}
		if (rand >= 80)
		{
			rr = 4;
			difficulty = 0;
		}
		if (rand >= 100)
		{
			rr = 8;
			difficulty = 4;
		}
	}
}
if ((phase == 3 && rr != 2 && rr != 1) || (phase == 4 && rr != 2 && rr != 1))
{
	if (phaseturn == 1)
	{
		rr = 7;
		difficulty = 0;
	}
	if (phaseturn == 2)
	{
		rr = 3;
		difficulty = 0;
	}
	if (phaseturn == 3)
	{
		rr = 6;
		difficulty = 0;
	}
	if (phaseturn == 4)
	{
		rr = 8;
		difficulty = 0;
	}
	if (phaseturn == 5)
	{
		rr = 4;
		difficulty = 0;
	}
	if (phaseturn == 6)
	{
		rr = 9;
		difficulty = 0;
	}
	if (phaseturn == 7)
	{
		rr = 8;
		difficulty = 4;
	}
	if (phaseturn == 8)
	{
		rr = 4;
		difficulty = 1;
	}
	if (phaseturn == 9)
	{
		rr = 7;
		difficulty = 1;
	}
	if (phaseturn == 10)
	{
		rr = 6;
		difficulty = 1;
	}
	if (phaseturn == 11)
	{
		rr = 9;
		difficulty = 1;
	}
	if (phaseturn == 12)
	{
		rr = 8;
		difficulty = 5;
	}
	if (phaseturn > 12)
	{
		var rand = irandom(100);
		if (rand >= 0)
		{
			rr = 4;
			difficulty = 1;
		}
		if (rand >= 20)
		{
			rr = 7;
			difficulty = 1;
		}
		if (rand >= 40)
		{
			rr = 6;
			difficulty = 1;
		}
		if (rand >= 60)
		{
			rr = 9;
			difficulty = 1;
		}
		if (rand >= 80)
		{
			rr = 8;
			difficulty = 5;
		}
	}
}
if (!instance_exists(obj_berdlyplug_enemy))
{
	if (rr == 7)
		rr = 5;
}
