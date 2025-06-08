if (myinteract == 3)
{
	if (talked == 0)
	{
		timer++;
		if (timer >= 15)
		{
			timer = 0;
			global.interact = 0;
			myinteract = 0;
			with (obj_mainchara)
				onebuffer = 5;
		}
	}
	else if (i_ex(mydialoguer) == false)
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
image_index = opened;
