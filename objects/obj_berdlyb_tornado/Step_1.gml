if (firstwave == 1)
{
	speed = 0;
	for (i = 0; i < 50; i++)
		speed += -(-1.75 + (sin((i + 15.707963267948966) / 10) * 1.75));
	firstwave = 2;
}
else if (firstwave == 2)
{
	speed = 0;
	fadetimer = 50;
	firstwave = -1;
}
else if (timer >= 0)
{
	speed = -(-3.5 + (sin((timer + 15.707963267948966) / 10) * 3.5));
	if (middespawn && traveldistance < 110)
		speed /= 2;
}
traveldistance += speed;
timer++;
