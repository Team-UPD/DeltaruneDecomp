function scr_tb_make_split(arg0, arg1, arg2, arg3, arg4)
{
	for (var i = 0; i < arg3; i += 1)
	{
		var _bul = scr_tb_make(arg0, arg1 + ((i / arg3) * 360), arg2, arg4, true);
		with (_bul)
		{
			offsetAngle = (i / arg3) * 360;
			if (i == 0)
				eatMe = true;
		}
	}
}
