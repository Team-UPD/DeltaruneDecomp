if (!init)
	exit;
draw_set_font(_font);
draw_set_halign(fa_center);
draw_set_alpha(_alpha);
var __y_pos = (string_height(_text) - _text_prompt_y_pos) * 2;
if (_register_display)
{
	if (global.lang == "ja")
	{
		draw_text_ext_transformed(182, _y_pos - __y_pos - (array_length(_prompt_text) * 16), _register_text[0], _line_height, 999, 2, 2, 0);
		draw_sprite_ext(spr_text_register, 0, 182 + string_width(_register_text[0]), ((_y_pos - __y_pos) + 6) - (array_length(_prompt_text) * 16), 2, 2, 0, c_white, _alpha);
		draw_text_ext_transformed(320 + string_width(_register_text[0]) + 14, _y_pos - __y_pos - (array_length(_prompt_text) * 16), _register_text[1], _line_height, 999, 2, 2, 0);
	}
	else
	{
		draw_text_ext_transformed(294, _y_pos - __y_pos - (array_length(_prompt_text) * 16), _register_text[0], _line_height, 999, 2, 2, 0);
		draw_sprite_ext(spr_text_register, 0, 294 + string_width(_register_text[0]), ((_y_pos - __y_pos) + 6) - (array_length(_prompt_text) * 16), 2, 2, 0, c_white, _alpha);
		draw_text_ext_transformed(320 + string_width(_register_text[0]) + 12, _y_pos - __y_pos - (array_length(_prompt_text) * 16), _register_text[1], _line_height, 999, 2, 2, 0);
	}
	draw_text_ext_transformed(320, _y_pos - __y_pos, _prompt_text[1], _line_height, 999, 2, 2, 0);
}
else
{
	draw_text_ext_transformed(320, _y_pos - __y_pos, _text, _line_height, 999, 2, 2, 0);
}
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(1);
