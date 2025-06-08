if (init == 0)
{
	init = 1;
	if (type == 0)
	{
		movemax = 8;
		xx[0] = -12;
		xx[1] = -6;
		xx[2] = -2;
		xx[3] = 4;
		xx[4] = 6;
		xx[5] = 10;
		image[0] = 0;
		image[2] = 1;
		image[4] = 2;
		image[6] = 3;
	}
	if (type == 1)
	{
		movemax = 8;
		xx[0] = -10;
		yy[0] = -3;
		xx[1] = 5;
		yy[1] = -1;
		xx[2] = -3;
		yy[2] = 1;
		xx[3] = 2;
		yy[3] = 3;
		xx[4] = -1;
		xx[5] = 1;
		image[0] = 0;
		image[2] = 1;
		image[4] = 2;
		image[6] = 3;
	}
	if (type == 2)
	{
		movemax = 8;
		yy[0] = -6;
		yy[1] = -2;
		yy[2] = 0;
		yy[3] = 0;
		yy[4] = 1;
		yy[5] = 3;
		yy[6] = 4;
		image[0] = 0;
		image[2] = 1;
		image[4] = 2;
		image[6] = 3;
	}
	if (i_ex(target))
	{
		target.x += xx[movecount] * xOrientation;
		target.y += yy[movecount] * yOrientation;
		if (image[movecount] != -1 && o_boxingcontroller.wireframe_boxing == 0)
			target.image_index = image[movecount];
	}
	movecount++;
	moved = 1;
}
