function draw_sprite_part_parallax(arg0, arg1, arg2, arg3, arg4)
{
	var _mysprite = arg0;
	var _mywidth = sprite_get_width(arg0);
	var _myheight = sprite_get_height(arg0);
	var _xoffset = arg2 % _mywidth;
	var _yoffset = arg3 % _myheight;
	if (_xoffset < 0)
		_xoffset += _mywidth;
	if (_yoffset < 0)
		_yoffset += _myheight;
	if (_xoffset == 0 && _yoffset == 0)
	{
		draw_sprite_ext(arg0, arg1, x, y, 2, 2, 0, image_blend, arg4);
	}
	else
	{
		draw_sprite_part_ext(arg0, arg1, 0, 0, _mywidth - _xoffset, _myheight - _yoffset, x + (_xoffset * 2), y + (_yoffset * 2), 2, 2, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, _mywidth - _xoffset, _myheight - _yoffset, _xoffset, _yoffset, x, y, 2, 2, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, 0, _myheight - _yoffset, _mywidth - _xoffset, _yoffset, x + (_xoffset * 2), y, 2, 2, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, _mywidth - _xoffset, 0, _xoffset, _myheight - _yoffset, x, y + (_yoffset * 2), 2, 2, image_blend, arg4);
	}
}
