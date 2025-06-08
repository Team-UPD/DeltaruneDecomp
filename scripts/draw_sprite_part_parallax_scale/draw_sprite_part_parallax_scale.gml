function draw_sprite_part_parallax_scale(arg0, arg1, arg2, arg3, arg4, arg5)
{
	var _scale = arg5;
	var _mysprite = arg0;
	var _mywidth = sprite_get_width(arg0);
	var _myheight = sprite_get_height(arg0);
	var _xoffset = arg2 % _mywidth;
	var _yoffset = arg3 % _myheight;
	if (_xoffset < 0)
		_xoffset += _mywidth;
	if (_yoffset < 0)
		_yoffset += _myheight;
	var _xmax = _mywidth * (2 / _scale);
	var _ymax = _myheight * (2 / _scale);
	if (_xoffset == 0 && _yoffset == 0)
	{
		draw_sprite_ext(arg0, arg1, x, y, 2, 2, 0, image_blend, arg4);
	}
	else
	{
		draw_sprite_part_ext(arg0, arg1, 0, 0, _xmax - _xoffset, _ymax - _yoffset, x + (_xoffset * _scale), y + (_yoffset * _scale), _scale, _scale, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, _mywidth - _xoffset, _myheight - _yoffset, min(_xmax, _xoffset), min(_ymax, _yoffset), x, y, _scale, _scale, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, 0, _ymax - _yoffset, min(_xmax, _xmax - _xoffset), min(_ymax, _yoffset), x + (_xoffset * _scale), y, _scale, _scale, image_blend, arg4);
		draw_sprite_part_ext(arg0, arg1, _xmax - _xoffset, 0, min(_xmax, _xoffset), min(_ymax, _ymax - _yoffset), x, y + (_yoffset * _scale), _scale, _scale, image_blend, arg4);
	}
}
