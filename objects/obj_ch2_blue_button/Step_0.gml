if (pressed)
	exit;
var checkPress = 0;
if (i_ex(obj_mainchara) && !pressed && global.interact == 0)
{
	if (place_meeting(x, y, obj_mainchara))
		checkPress = 1;
}
if (checkPress)
{
	if (pressed == 0)
	{
		pressed = 1;
		alarm[0] = 30;
	}
}
