for (var i = 0; i < array_length(_result_list); i++)
{
	var _index = (_result_list[i] > 0) ? 1 : 0;
	draw_sprite_ext(spr_ui_dot, _index, x, y + (i * 10), 1, 1, 0, c_white, _alpha);
}
