function scr_draw_sprite_crop(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
	var _sprite_xoffset = sprite_get_xoffset(arg0);
	var _sprite_yoffset = sprite_get_yoffset(arg0);
	var _sprite_width = sprite_get_width(arg0);
	var _sprite_height = sprite_get_height(arg0);
	var _true_xanchor = x - abs(sprite_xoffset);
	var _true_yanchor = y - abs(sprite_yoffset);
	if (_true_xanchor > arg2 && (_true_xanchor + _sprite_width) < arg4 && _true_yanchor > arg3 && (_true_yanchor + _sprite_height) < arg5)
	{
		draw_self();
		exit;
	}
	var _leftcrop = clamp(arg2 - _true_xanchor, 0, abs(_sprite_width));
	var _topcrop = clamp(arg3 - _true_yanchor, 0, abs(_sprite_height));
	var _rightcrop = clamp(arg4 - _true_xanchor, 0, abs(_sprite_width));
	var _bottomcrop = clamp(arg5 - _true_yanchor, 0, abs(_sprite_height));
	draw_sprite_part(arg0, arg1, _leftcrop, _topcrop, _rightcrop, _bottomcrop, (arg6 - _sprite_xoffset) + _leftcrop, (arg7 - _sprite_yoffset) + _topcrop);
}
