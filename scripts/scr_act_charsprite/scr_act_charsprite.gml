function scr_act_charsprite(arg0, arg1, arg2, arg3)
{
	_charactor = arg0;
	_charinstance = obj_herokris;
	if (_charactor == "noelle")
	{
		_charinstance = obj_heronoelle;
		_charnum = 4;
	}
	if (_charactor == "ralsei")
	{
		_charinstance = obj_heroralsei;
		_charnum = 3;
	}
	if (_charactor == "susie")
	{
		_charinstance = obj_herosusie;
		_charnum = 2;
	}
	if (_charactor == "kris")
	{
		_charinstance = obj_herokris;
		_charnum = 1;
	}
	__returnvalue = _charactsprite[_charnum];
	if (i_ex(_charinstance))
	{
		with (_charinstance)
		{
			image_alpha = 0;
			state = 0;
			global.faceaction[myself] = 0;
		}
		_charactsprite[_charnum] = scr_dark_marker(_charinstance.x, _charinstance.y, arg1);
		with (_charactsprite[_charnum])
		{
			depth = 20 - (__view_get(e__VW.YView, 0) / 40);
			scr_oflash();
			if (arg2 > 0 && arg3 == 0)
				scr_animate(0, 0, arg2);
			if (arg2 > 0 && arg3 == 1)
				image_speed = arg2;
			a = scr_afterimage();
			a.hspeed = 2.5;
			a.depth = depth + 1;
			b = scr_afterimage();
			b.image_alpha = 0.6;
			b.hspeed = 5;
			b.depth = depth + 2;
		}
		__returnvalue = _charactsprite[_charnum];
	}
	return __returnvalue;
}
