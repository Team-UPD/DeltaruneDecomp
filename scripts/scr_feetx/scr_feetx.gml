function scr_feetx(arg0, arg1)
{
	_feetx = 0;
	if (i_ex(arg0) && i_ex(arg1))
	{
		_obj1middlex = arg0.x + (arg0.sprite_width / 2);
		return _obj1middlex - (arg1.sprite_width / 2);
	}
}
