if (pushedoverride < 0)
{
	pushed = 0;
	for (var i = 0; i < 3; i++)
	{
		if (place_meeting(x, y, pushChar[i]))
			pushed = 1;
	}
}
else
{
	pushed = pushedoverride;
}
var pushchanged = -1;
if (pushed != rempushed)
	pushchanged = pushed;
if (pushchanged == 0)
	variable_instance_set(instance_find(bossObject, 0), pushVariableName, pushVariableUp);
if (pushchanged == 1)
{
	snd_play(pushSound);
	variable_instance_set(instance_find(bossObject, 0), pushVariableName, pushVariableDown);
}
if (pushType == 1)
{
	if (pushed == 1)
		pushedoverride = 1;
}
image_index = pushed;
rempushed = pushed;
