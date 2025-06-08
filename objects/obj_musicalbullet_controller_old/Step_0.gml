timer++;
init = 1;
if (sfxtimer > 0)
	sfxtimer--;
tobymode = 1;
supertobymode = 1;
omegatobymode = 1;
activatedtobymode = 1;
donkeykongshouldberemovedfromthedccinematicuniverse = 1;
if (tobymode == 1 && made == 0)
{
	lane[0] = 0;
	lane[1] = 0;
	lane[2] = 0;
	lane[3] = 0;
	var a = 0;
	var b = 0;
	var c = 0;
	var chosenlane = 0;
	var beat = 1;
	for (var j = 0; j < 32; j++)
	{
		if (difficulty >= 2)
		{
			if (beat == 3)
				c = 1;
		}
		if (beat == 1)
			a = 1;
		if (difficulty >= 1)
			b = 1;
		if (beat == 1 || beat == 2 || beat == 3)
		{
			lane[choose(0, 1, 2, 3)] = 1;
			if (difficulty == 1 && beat == 3)
			{
				if (lane[0] == 1 || lane[2] == 1)
				{
					lane[0] = 1;
					lane[2] = 1;
				}
				if (lane[1] == 1 || lane[3] == 1)
				{
					lane[1] = 1;
					lane[3] = 1;
				}
			}
			if (difficulty >= 2)
			{
				if (beat == 3)
				{
					lane[0] = 1;
					lane[1] = 1;
					lane[2] = 1;
					lane[3] = 1;
					lane[choose(1, 2, 3)] = 0;
				}
			}
			scr_musicalbattlebullet([0, b, lane[0], lane[1], lane[2], lane[3], a, c], 1 + (j / 4), 50);
		}
		if (beat == 2 || beat == 4)
		{
			if (difficulty == 0)
			{
				if (beat == 4)
				{
					lane[choose(0, 1, 2, 3)] = 1;
					scr_musicalbattlebullet([0, b, lane[0], lane[1], lane[2], lane[3], a, c], 1 + (j / 4), 50);
				}
			}
			if (difficulty >= 1)
			{
				if (beat == 4)
				{
					lane[choose(0, 1, 2, 3)] = 1;
					scr_musicalbattlebullet([0, b, lane[0], lane[1], lane[2], lane[3], 0, c], 1 + (j / 4), 50);
				}
			}
		}
		beat++;
		if (beat > 4)
			beat = 1;
		a = 0;
		b = 0;
		c = 0;
		lane[0] = 0;
		lane[1] = 0;
		lane[2] = 0;
		lane[3] = 0;
	}
	made = 1;
}
if (tobymode == 1 && made == 1)
{
	if ((global.turntimer < 10 && global.turntimer > 4) || !i_ex(obj_musicalbattlebullet))
	{
		con = 0;
		global.turntimer = 3;
		instance_destroy();
	}
}
if (timer == bullettimermax)
{
	if (tobymode == 0)
	{
		var a = 1;
		var b = 0;
		if (difficulty >= 1)
			b = (con + 1) % 2;
		var c = 0;
		if (difficulty >= 2)
			c = con % 2;
		var rand = irandom(3);
		var lane1;
		if (rand == 0)
			lane1 = 1;
		else
			lane1 = 0;
		var lane2;
		if (rand == 1)
			lane2 = 1;
		else
			lane2 = 0;
		var lane3;
		if (rand == 2)
			lane3 = 1;
		else
			lane3 = 0;
		var lane4;
		if (rand == 3)
			lane4 = 1;
		else
			lane4 = 0;
		if (difficulty > 0)
		{
			rand = irandom(5);
			if (rand == 0)
				lane1 = 1;
			if (rand == 1)
				lane2 = 1;
			if (rand == 2)
				lane3 = 1;
			if (rand == 3)
				lane4 = 1;
		}
		if (difficulty > 1)
		{
			rand = irandom(5);
			if (rand == 0)
				lane1 = 2;
			if (rand == 1)
				lane2 = 2;
			if (rand == 2)
				lane3 = 2;
			if (rand == 3)
				lane4 = 2;
		}
		if (con < 12)
			scr_musicalbattlebullet([0, b, lane1, lane2, lane3, lane4, a, 0], 3, 60);
		if (con == 12)
		{
			con = 0;
			global.turntimer = 3;
			instance_destroy();
		}
		con++;
		timer = 0;
	}
}
