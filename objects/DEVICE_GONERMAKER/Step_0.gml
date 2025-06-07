siner += 1;
x = initx + (sin(siner / 24) * 2);
y = inity + (cos(siner / 30) * 2);
if (FINISH == 0 && ONEBUFFER < 0 && CANCEL == 0)
{
	if (left_p())
		PART[s] -= 1;
	if (right_p())
		PART[s] += 1;
	if (button1_p() && LOCK[s] == 1)
	{
		FINISH = 1;
		global.flag[900 + s] = PART[s];
		global.flag[20] = 1;
	}
}
for (i = 0; i < 3; i += 1)
{
	if (PART[i] > PARTMAX[i])
		PART[i] = PARTMAX[i];
	if (PART[i] < 0)
		PART[i] = 0;
	IDEALX[i] = PART[i] * -50;
	if (PARTX[i] < IDEALX[i])
	{
		if (abs(IDEALX[i] - PARTX[i]) >= 0)
			PARTX[i] += 10;
		if (abs(IDEALX[i] - PARTX[i]) > 50)
			PARTX[i] += 10;
		if (abs(IDEALX[i] - PARTX[i]) > 100)
			PARTX[i] += 10;
		if (abs(IDEALX[i] - PARTX[i]) > 150)
			PARTX[i] += 10;
	}
	if (PARTX[i] > IDEALX[i])
	{
		if (abs(IDEALX[i] - PARTX[i]) >= 0)
			PARTX[i] -= 10;
		if (abs(IDEALX[i] - PARTX[i]) > 50)
			PARTX[i] -= 10;
		if (abs(IDEALX[i] - PARTX[i]) > 100)
			PARTX[i] -= 10;
		if (abs(IDEALX[i] - PARTX[i]) > 150)
			PARTX[i] -= 10;
	}
	if (PARTX[i] == IDEALX[i])
		LOCK[i] = 1;
	else
		LOCK[i] = 0;
}
ONEBUFFER -= 1;
if (FADEBUFFER > 0 && FINISH <= 0)
	FADEBUFFER -= 1;
if (FINISH == 1)
	FADEBUFFER += 1;
if (FADEBUFFER > 10)
	instance_destroy();
