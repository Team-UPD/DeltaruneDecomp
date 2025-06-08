scr_depth();
if (movecourse == 1)
{
	if (movedir == 1)
		x += 8;
	if (movedir == 0)
		y += 8;
	if (movedir == 2)
		y -= 8;
	if (movedir == 3)
		x -= 8;
	movetimer += 1;
	if (movetimer >= 5)
	{
		movetimer = 0;
		global.interact = 0;
		movecourse = 0;
	}
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
if (reset == true)
{
	if (con == 0)
	{
		image_alpha *= 0.6;
		if (image_alpha < 0.1)
		{
			image_alpha = 0;
			x = xpos;
			y = ypos;
			con = 1;
			pause = 0;
		}
	}
	if (con == 1)
	{
		pause++;
		if (pause == 10)
		{
			image_alpha = 0.1;
			con = 2;
		}
	}
	if (con == 2)
	{
		image_alpha *= 1.4;
		if (image_alpha >= 1)
		{
			image_alpha = 1;
			con = 0;
			reset = 0;
			global.interact = 0;
		}
	}
}
