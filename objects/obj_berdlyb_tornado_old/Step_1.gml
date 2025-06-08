if (middespawn && timer >= 0)
{
	traveldistance += psuedo_speed;
}
else if (!middespawn && timer >= 0)
{
	speed = -(-3.5 + (sin((timer + 15.707963267948966) / 10) * 3.5));
	traveldistance += speed;
}
timer++;
