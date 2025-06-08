timer++;
if (timer == 30 && letgo == 1)
{
	if (instance_exists(obj_holemouse_generator))
	{
		with (obj_holemouse_generator)
			mousecreate = 0;
	}
}
if (timer == 60 && letgo == 1)
{
	global.interact = 0;
	letgo = 0;
	image_index = 0;
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
