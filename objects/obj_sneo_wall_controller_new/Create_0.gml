wallsize = 7;
wallcountmax = 35;
wallcount = 0;
wallsetupcount = 0;
timer = 0;
timer2 = 0;
wallcreatetimermax = 30;
con = 0;
difficulty = obj_spamton_neo_enemy.difficulty;
xx = camerax();
yy = cameray();
track1_x = camerax();
track2_x = camerax() + 320;
track3_x = camerax() + 640;
x = 0;
y = 0;
breakspot1[wallcountmax] = -1;
breakspot2[wallcountmax] = -1;
breakspot3[wallcountmax] = -1;
breakspot4[wallcountmax] = -1;
breakspot5[wallcountmax] = -1;
pipispot1[wallcountmax] = -1;
pipispot2[wallcountmax] = -1;
pipispot3[wallcountmax] = -1;
pipispot4[wallcountmax] = -1;
pipispot5[wallcountmax] = -1;
emptyspot1[wallcountmax] = -1;
emptyspot2[wallcountmax] = -1;
emptyspot3[wallcountmax] = -1;
emptyspot4[wallcountmax] = -1;
emptyspot5[wallcountmax] = -1;
redbreakspot1[wallcountmax] = -1;
redbreakspot2[wallcountmax] = -1;
redbreakspot3[wallcountmax] = -1;
redbreakspot4[wallcountmax] = -1;
redbreakspot5[wallcountmax] = -1;
var a = 0;
repeat (wallcountmax)
{
	wallcreatetimer[a] = wallcreatetimermax;
	a++;
}
a = 0;
repeat (wallcountmax)
{
	wallspeed[a] = -7;
	a++;
}
a = 0;
repeat (wallcountmax)
{
	walltype[a] = 0;
	a++;
}
if (difficulty == 0)
{
	a = 0;
	repeat (wallcountmax)
	{
		walltype[a] = 1;
		a++;
	}
	var rand = choose(1, 2, 3);
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 0, 0, 2, 0, 1, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 30, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 3, 0, 1, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 30, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 30, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 0, 0, 2, 1, 1);
		scr_sneo_wall_create(0, 3, 2, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 30, 1);
	}
	rand = choose(1, 2, 3);
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 1, 1, 0, 0, 40, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 0, 0, 1, 1, 40, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 1, 1, 0, 40, 1);
		scr_sneo_wall_create(0, 0, 2, 1, 0, 6, 1);
		scr_sneo_wall_create(0, 0, 2, 2, 0, 6, 1);
		scr_sneo_wall_create(0, 0, 2, 2, 0, 6, 1);
	}
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 0, 0, 0, 2, 30, 1);
		scr_sneo_wall_create(0, 2, 0, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 30, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 0, 30, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 30, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(2, 0, 0, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 0, 2, 0, 0, 30, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 30, 1);
	}
	rand = choose(1, 2, 3);
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 1, 1, 0, 0, 40, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 1, 1, 0, 0, 40, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 1, 1, 0, 0, 40, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
	}
	scr_sneo_wall_create(1, 1, 1, 1, 1, 9999, 0);
}
if (difficulty == 1)
{
	a = 0;
	repeat (wallcountmax)
	{
		walltype[a] = 1;
		a++;
	}
	var rand = choose(1, 2, 3, 4);
	if (rand == 1)
	{
		scr_sneo_wall_create(3, 0, 0, 2, 0, 1, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 3, 0, 1, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 0, 3, 2, 1, 1);
		scr_sneo_wall_create(0, 3, 2, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
	}
	if (rand == 4)
	{
		scr_sneo_wall_create(2, 3, 0, 0, 0, 1, 1);
		scr_sneo_wall_create(0, 0, 2, 3, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 3, 2, 0, 20, 1);
	}
	rand = choose(1, 2, 3, 4);
	if (rand == 1)
	{
		scr_sneo_wall_create(3, 0, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 0, 3, 2, 20, 1);
		scr_sneo_wall_create(0, 3, 2, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
	}
	if (rand == 4)
	{
		scr_sneo_wall_create(2, 3, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 2, 3, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 3, 2, 0, 20, 1);
	}
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 1, 1, 0, 0, 32, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
		scr_sneo_wall_create(0, 2, 2, 0, 0, 6, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 0, 0, 1, 1, 32, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 2, 6, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 1, 1, 0, 32, 1);
		scr_sneo_wall_create(0, 0, 2, 2, 0, 6, 1);
		scr_sneo_wall_create(0, 0, 2, 2, 0, 6, 1);
		scr_sneo_wall_create(0, 0, 2, 2, 0, 6, 1);
	}
	if (rand == 4)
	{
		scr_sneo_wall_create(1, 1, 0, 0, 0, 32, 1);
		scr_sneo_wall_create(2, 2, 0, 0, 0, 6, 1);
		scr_sneo_wall_create(2, 2, 0, 0, 0, 6, 1);
		scr_sneo_wall_create(2, 2, 0, 0, 0, 6, 1);
	}
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 0, 0, 0, 2, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(2, 0, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
	}
	if (rand == 4)
	{
		scr_sneo_wall_create(0, 0, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(2, 0, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 3, 2, 0, 20, 1);
	}
	rand = choose(1, 2, 3, 4);
	if (rand == 1)
	{
		scr_sneo_wall_create(3, 0, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
		scr_sneo_wall_create(0, 3, 0, 2, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 0, 3, 0, 20, 1);
	}
	if (rand == 3)
	{
		scr_sneo_wall_create(0, 0, 0, 3, 2, 20, 1);
		scr_sneo_wall_create(0, 3, 2, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 2, 3, 0, 0, 20, 1);
	}
	if (rand == 4)
	{
		scr_sneo_wall_create(2, 3, 0, 0, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 2, 3, 0, 20, 1);
		scr_sneo_wall_create(0, 0, 3, 2, 0, 20, 1);
	}
	scr_sneo_wall_create(1, 1, 1, 1, 1, 9999, 0);
}
if (difficulty == 99)
{
	var rand = choose(1, 2);
	if (rand == 1)
	{
		scr_sneo_wall_create(0, 0, 0, 0, 4, 1, 1);
		scr_sneo_wall_create(1, 0, 0, 0, 0, 7, 1);
	}
	if (rand == 2)
	{
		scr_sneo_wall_create(4, 0, 0, 0, 0, 1, 1);
		scr_sneo_wall_create(0, 0, 0, 0, 1, 7, 1);
	}
	rand = choose(1, 2, 3);
	if (rand == 1)
		scr_sneo_wall_create(4, 0, 0, 0, 3, 63, 1);
	if (rand == 2)
		scr_sneo_wall_create(3, 0, 0, 0, 4, 63, 1);
	if (rand == 3)
		scr_sneo_wall_create(0, 3, 4, 0, 0, 63, 1);
	scr_sneo_wall_create(0, 0, 1, 0, 4, 60, 0);
	scr_sneo_wall_create(4, 2, 1, 0, 0, 7, 0);
	scr_sneo_wall_create(0, 2, 3, 1, 0, 7, 0);
	scr_sneo_wall_create(0, 2, 3, 1, 0, 7, 0);
	scr_sneo_wall_create(0, 4, 1, 3, 1, 50, 0);
	scr_sneo_wall_create(3, 1, 1, 4, 2, 7, 0);
	scr_sneo_wall_create(3, 4, 0, 3, 1, 7, 0);
	scr_sneo_wall_create(2, 1, 0, 1, 2, 7, 0);
	scr_sneo_wall_create(2, 4, 2, 0, 4, 7, 0);
	scr_sneo_wall_create(2, 1, 2, 0, 0, 7, 0);
	scr_sneo_wall_create(1, 4, 2, 0, 3, 50, 0);
	scr_sneo_wall_create(4, 2, 0, 0, 2, 7, 0);
	scr_sneo_wall_create(0, 2, 1, 1, 1, 7, 0);
	scr_sneo_wall_create(3, 1, 2, 1, 3, 7, 0);
	scr_sneo_wall_create(1, 1, 4, 0, 0, 7, 0);
	scr_sneo_wall_create(4, 2, 2, 0, 1, 7, 0);
	scr_sneo_wall_create(3, 2, 3, 4, 2, 50, 0);
	scr_sneo_wall_create(2, 2, 1, 2, 4, 7, 0);
	scr_sneo_wall_create(3, 1, 1, 1, 4, 7, 0);
	scr_sneo_wall_create(2, 2, 1, 1, 3, 7, 0);
	scr_sneo_wall_create(3, 4, 1, 1, 1, 7, 0);
	scr_sneo_wall_create(3, 0, 0, 4, 2, 7, 0);
	scr_sneo_wall_create(0, 0, 0, 0, 0, 9999, 0);
}
if (difficulty == 2)
{
	repeat (6)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), 7, 0);
	scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), 63, 0);
	repeat (5)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), 7, 0);
	scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), 63, 0);
	repeat (5)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), choose(2, 2, 1, 1, 1, 4, 3, 0), 7, 0);
	scr_sneo_wall_create(0, 0, 0, 0, 0, 9999, 0);
}
if (difficulty == 3)
{
	repeat (6)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), 7, 0);
	scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), 63, 0);
	repeat (5)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), 7, 0);
	scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), 63, 0);
	repeat (5)
		scr_sneo_wall_create(choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), choose(2, 2, 1, 1, 1, 3, 0), 7, 0);
	scr_sneo_wall_create(0, 0, 0, 0, 0, 9999, 0);
}
