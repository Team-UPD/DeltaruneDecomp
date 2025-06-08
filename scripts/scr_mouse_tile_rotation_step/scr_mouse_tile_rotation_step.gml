function scr_mouse_tile_rotation_step()
{
	if (__init == 0)
	{
		x += __positionx[__currentposition];
		__movedx += __positionx[__currentposition];
		y += __positiony[__currentposition];
		__movedy += __positiony[__currentposition];
		__nextposition = __currentposition;
		__init = 1;
	}
	if (__con == 0)
	{
		if (__move != 0)
		{
			__nextposition = __currentposition + __move;
			if (__nextposition < 0)
				__nextposition = __positionmax;
			if (__nextposition > __positionmax)
				__nextposition = 0;
		}
		if (__nextposition != __currentposition)
		{
			__curmovedx = __movedx;
			__curmovedy = __movedy;
			__nextmovedx = __positionx[__nextposition];
			__nextmovedy = __positiony[__nextposition];
			__movetimer = 0;
			__con = 1;
		}
	}
	if (__con == 1)
	{
		__movetimer++;
		x += ((__nextmovedx - __movedx) / __positionframes);
		y += ((__nextmovedy - __movedy) / __positionframes);
		if (__movetimer >= __positionframes)
		{
			__movetimer = 0;
			__con = 0;
			__movedx = __positionx[__nextposition];
			__movedy = __positiony[__nextposition];
			__currentposition = __nextposition;
		}
	}
}
