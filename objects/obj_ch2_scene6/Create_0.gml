con = 0;
ralTimer = 0;
customcon = 0;
lancerSpin = 0;
totalSpins = 0;
addAmount = 1;
stepAway = 0;
glowValue = 0;
lancerGlow = 0;
tempStarwalker = 0;
lancerCard = 0;
rouxlsCard = 0;
conTimer = 0;
if (global.chapter != 2 || global.plot > 15)
	con = -1;
if (global.chapter == 2)
{
	if (global.plot == 10)
		con = 50;
	if (global.plot >= 16)
		instance_destroy();
}
