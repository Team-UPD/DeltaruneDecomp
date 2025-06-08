if (turnaroundcon == 0)
{
	if (timer >= 3)
		sinetargetspeed = -1.1;
	alarm[0] = 98;
}
if (turnaroundcon == 1)
{
	if (timer >= 3)
		sinetargetspeed = 1.2;
}
turnaroundcon++;
