if (init == 0)
{
	if (global.lang == "ja" && jaString != "-")
		myString = jaString;
	if (myString == "!")
		textImage = 36;
	else if (ord(myString) <= 57)
		textImage = ord(myString) - 22;
	else
		textImage = ord(string_upper(myString)) - 65;
	init = 1;
}
var checkPress = 0;
if (i_ex(obj_mainchara) && pressable && global.interact == 0)
{
	if (place_meeting(x, y, obj_mainchara))
		checkPress = 1;
}
if (checkPress)
{
	if (pressed == 0)
	{
		pressedBuffer = 2;
		pressed = 1;
		with (obj_ch2_keyboardpuzzle_speaker)
			image_timer = 7;
		if (myString == "A" && irandom(99) == 0)
			snd_play(snd_txtsans);
		else if (myString == "!")
			snd_play(snd_speak_and_spell_Exclamation);
		else
			snd_play(asset_get_index("snd_speak_and_spell_" + myString));
		obj_ch2_keyboardpuzzle_controller.addString = myString;
		obj_ch2_keyboardpuzzle_controller.lastPressedTile = id;
		with (obj_ch2_keyboardpuzzle_controller)
			event_user(0);
	}
}
else if (pressable && global.interact == 0)
{
	if (pressedBuffer <= 0)
		pressed = 0;
}
pressedBuffer--;
if (bouncecon > 0)
{
	if (bouncecon == 1)
	{
		drawY = 0;
		bouncetimer = 0;
		bouncecon = 2;
	}
	if (bouncecon == 2)
	{
		pressed = 0;
		drawY = -30;
		bouncecon = 3;
	}
	if (bouncecon == 3)
	{
		drawY = lerp(drawY, 0, 0.25);
		bouncetimer++;
		if (bouncetimer >= 15)
		{
			bouncetimer = 0;
			bouncecon = 0;
			drawY = 0;
		}
	}
}
