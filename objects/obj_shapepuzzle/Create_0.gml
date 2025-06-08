depth = 999990;
puzzleSize = 60 * image_xscale;
setupComplete = false;
goalCheck = true;
goalHit = false;
image_index = 0;
image_speed = 0;
finalGlow = 0;
insideOnly = true;
if (room == room_dw_mansion_darkbulb_1)
{
	if (global.plot >= 105)
	{
		goalHit = true;
		finalGlow = 0.7;
	}
}
if (room == room_dw_mansion_darkbulb_2)
{
	if (global.plot >= 110)
	{
		goalHit = true;
		finalGlow = 0.7;
	}
}
if (room == room_dw_mansion_darkbulb_3)
{
	if (global.plot >= 115)
	{
		goalHit = true;
		finalGlow = 0.7;
	}
}
inUse = false;
instructionLerp = 0;
