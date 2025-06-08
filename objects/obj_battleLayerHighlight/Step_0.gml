if (i_ex(obj_mainchara))
{
	if (obj_mainchara.battlemode == 1)
		myalpha = lerp(myalpha, 1, 0.25);
	else
		myalpha = lerp(myalpha, 0, 0.35);
}
else
{
	myalpha = lerp(myalpha, 0, 0.35);
}
