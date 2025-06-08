function c_actormoveparty_single(arg0, arg1)
{
	if (arg0 == 0)
	{
		c_sel(arg0);
		c_walkdirect(obj_mainchara.x, obj_mainchara.y, arg1);
	}
	else if (i_ex(global.cinstance[arg0 - 1]))
	{
		c_sel(arg0);
		c_walkdirect(global.cinstance[arg0 - 1].x, global.cinstance[arg0 - 1].y, arg1);
	}
}
