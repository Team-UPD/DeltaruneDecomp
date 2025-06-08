if (init == 0)
{
	if (ord(myString) <= 57)
		textImage = ord(myString) - 22;
	else
		textImage = ord(string_upper(myString)) - 65;
	init = 1;
}
var checkPress = 0;
if (i_ex(obj_actor) && !pressed && pressable && global.interact == 0)
{
	if (place_meeting(x, y, obj_actor))
		checkPress = 1;
}
if (checkPress)
{
	if (pressed == 0)
	{
		pressedBuffer = 2;
		pressed = 1;
		var _snd = snd_play(asset_get_index("snd_speak_and_spell_" + myString));
		var _volume = (buttonIndex == 7) ? 1 : max(1 - (buttonIndex / 4), 0);
		audio_sound_gain(_snd, _volume, 0);
		alarm[0] = 30;
		controller.finalString += myString;
		controller.buttonx = x;
		down = true;
	}
}
else if (pressable && global.interact == 0)
{
	if (pressedBuffer <= 0)
		pressed = 0;
}
