if (!_init)
	exit;
if (_heart_enabled)
	draw_sprite_ext(spr_heart, 0, x, y + 8, _scale, _scale, 0, c_white, _alpha);
draw_set_color(_color);
draw_set_alpha(_alpha);
draw_set_font(_font);
if (_font == 1)
	_text_offset = -4;
draw_text_transformed(x + 30 + _text_offset, y, _text, _scale, _scale, 0);
draw_set_color(c_white);
draw_set_alpha(1);
