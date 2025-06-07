if (con == 1)
{
	waketimer += 1;
	canclick = 0;
	if (waketimer < 50)
		canclick = 1;
	if (waketimer < 110 && waketimer > 65)
		canclick = 1;
	if (waketimer > 125 && waketimer < 170)
		canclick = 1;
	if (canclick == 1)
	{
		if (left_p())
			waketimer += 2;
		if (right_p())
			waketimer += 2;
		if (down_p())
			waketimer += 2;
		if (up_p())
			waketimer += 2;
	}
	if (waketimer == 60 || waketimer == 62)
	{
		with (k)
		{
			sprite_index = spr_kris_fallen_dark;
			x = xstart + choose(-2, 2);
			y = ystart + choose(-2, 2);
		}
	}
	if (waketimer == 63)
	{
		with (k)
		{
			x = xstart;
			y = ystart;
		}
	}
	if (waketimer == 120 || waketimer == 121 || waketimer == 122 || waketimer == 123)
	{
		with (k)
		{
			x = xstart + choose(-2, 2, 0);
			y = ystart + choose(-2, 2, 0);
		}
	}
	if (waketimer >= 180 && waketimer <= 184)
	{
		with (k)
		{
			x = xstart + choose(-2, 2, 0);
			y = ystart + choose(-2, 2, 0);
		}
	}
	if (waketimer == 185)
	{
		with (k)
			instance_destroy();
		with (obj_mainchara)
			visible = 1;
		global.interact = 0;
		con = 2;
		if (global.plot < 11)
			global.plot = 11;
		scr_tempsave();
		instance_destroy();
	}
}
