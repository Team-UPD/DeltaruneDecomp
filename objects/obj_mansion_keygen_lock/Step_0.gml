if (con == 1 && !d_ex())
{
	snd_play(snd_weirdeffect);
	con++;
}
if (con == 2 && !d_ex())
{
	scr_lerpvar_instance(id, "image_alpha", 1, 0, 30);
	con++;
}
if (con == 3)
{
	fade_timer++;
	if (fade_timer >= 30)
		con = 4;
}
if (con == 4 && !d_ex())
{
	con = 99;
	global.interact = 0;
	instance_destroy();
}
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
