if (init == 0)
{
	init = 1;
	if (difficulty == 0)
	{
		x2[0] = x;
		y2[0] = -400;
		visiblevine[1] = 0;
		visiblevine[2] = 0;
		visiblevine[3] = 0;
		visiblevine[4] = 0;
		visiblevine[5] = 0;
	}
	if (difficulty == 1)
	{
		x2[0] = x;
		y2[0] = -400;
		x_offset[0] = -2;
		x2[1] = x;
		y2[1] = -400;
		x_offset[1] = -2;
		visiblevine[2] = 0;
		visiblevine[3] = 0;
		visiblevine[4] = 0;
		visiblevine[5] = 0;
	}
	if (difficulty == 2)
	{
		x2[0] = x - 200;
		y2[0] = -400;
		x_offset[0] = -8;
		x2[1] = x;
		y2[1] = -400;
		x2[2] = x + 200;
		y2[2] = -400;
		x_offset[2] = 8;
		visiblevine[3] = 0;
		visiblevine[4] = 0;
		visiblevine[5] = 0;
	}
	if (difficulty == 3)
	{
		x2[0] = x - 180;
		y2[0] = -400;
		x_offset[0] = -7;
		x2[1] = x - 60;
		y2[1] = -400;
		x_offset[1] = 1;
		x2[2] = x + 60;
		y2[2] = -400;
		x_offset[2] = 1;
		x2[3] = x + 180;
		y2[3] = -400;
		x_offset[3] = 7;
		visiblevine[4] = 0;
		visiblevine[5] = 0;
	}
	if (difficulty == 4)
	{
		x2[0] = x - 260;
		y2[0] = -400;
		x_offset[0] = -10;
		x2[1] = x - 130;
		y2[1] = -400;
		x_offset[1] = -5;
		x2[2] = x;
		y2[2] = -400;
		x2[3] = x + 130;
		y2[3] = -400;
		x_offset[3] = 4;
		x2[4] = x + 260;
		y2[4] = -400;
		x_offset[4] = 10;
		visiblevine[5] = 0;
	}
}
