function scr_drawpart_crop(arg0, arg1, arg2, arg3)
{
	var _true_xanchor = x - abs(sprite_xoffset);
	var _true_yanchor = y - abs(sprite_yoffset);
	if (_true_xanchor > arg0 && (_true_xanchor + sprite_width) < arg2 && _true_yanchor > arg1 && (_true_yanchor + sprite_height) < arg3)
	{
		draw_self();
		exit;
	}
	var _leftcrop = clamp(arg0 - _true_xanchor, 0, abs(sprite_width));
	var _topcrop = clamp(arg1 - _true_yanchor, 0, abs(sprite_height));
	var _rightcrop = clamp(arg2 - _true_xanchor, 0, abs(sprite_width));
	var _bottomcrop = clamp(arg3 - _true_yanchor, 0, abs(sprite_height));
	draw_sprite_part_ext(sprite_index, image_index, _leftcrop, _topcrop, _rightcrop, _bottomcrop, (x - sprite_xoffset) + _leftcrop, (y - sprite_yoffset) + _topcrop, image_xscale, image_yscale, image_blend, image_alpha);
}
