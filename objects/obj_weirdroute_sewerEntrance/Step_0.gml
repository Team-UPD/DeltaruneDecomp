if (myinteract == 3)
{
	if (i_ex(mydialoguer) == false)
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con == 1 && !d_ex())
{
	global.interact = 1;
	fade = scr_fadeout(15);
	snd_play(snd_escaped);
	timer = 0;
	con++;
}
if (con == 2)
{
	timer++;
	if (timer >= 120)
	{
		with (obj_doorAny)
		{
			if (x > room_width)
				event_user(9);
		}
	}
}
