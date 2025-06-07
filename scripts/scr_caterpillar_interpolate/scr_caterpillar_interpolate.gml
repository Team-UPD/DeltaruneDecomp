function scr_caterpillar_interpolate()
{
	remx[0] = obj_mainchara.x;
	remy[0] = obj_mainchara.y;
	facing[0] = global.facing;
	for (i = target; i > 0; i -= 1)
	{
		facing[i] = 2;
		remx[i] = obj_mainchara.x + ((x - obj_mainchara.x) * (i / target));
		remy[i] = obj_mainchara.y + ((y - obj_mainchara.y) * (i / target));
	}
}
