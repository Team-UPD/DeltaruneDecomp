function scr_prevhero()
{
	prevturn = global.charturn;
	moveswapped = 0;
	if (global.charturn == 1)
	{
		if (global.charmove[0] == 1)
		{
			global.charturn = 0;
			moveswapped = 1;
		}
	}
	if (global.charturn == 2)
	{
		moveswapped = 1;
		if (global.charmove[1] == 1 && global.acting[1] == 0)
			global.charturn = 1;
		else if (global.charmove[0] == 1)
			global.charturn = 0;
	}
	if (moveswapped == 1)
	{
		global.bmenuno = 0;
		global.faceaction[global.charturn] = 0;
		global.chartarget[global.charturn] = 0;
		global.charaction[global.charturn] = 0;
		global.charspecial[global.charturn] = 0;
		movenoise = 1;
	}
	if (global.charturn == 0)
	{
		with (obj_monsterparent)
			acting = 0;
		global.acting[0] = 0;
		global.acting[1] = 0;
		global.acting[2] = 0;
		global.faceaction[1] = 0;
		global.chartarget[1] = 0;
		global.charaction[1] = 0;
		global.charspecial[1] = 0;
		global.faceaction[2] = 0;
		global.tension = global.temptension[0];
		for (i = 0; i < 12; i += 1)
			tempitem[i][0] = global.item[i];
	}
	else
	{
		global.tension = global.temptension[global.charturn];
		for (i = 0; i < 12; i += 1)
			tempitem[i][global.charturn] = tempitem[i][global.charturn - 1];
	}
}
