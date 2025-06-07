if (_enabled)
{
	for (var i = 0; i < array_length(_completed_files); i++)
	{
		var star_index = _completed_files[i];
		draw_sprite_ext(spr_ui_star, star_index, x + 180, y + 26 + (i * 12), 1, 1, 0, c_white, _alpha);
	}
}
if (_title_enabled)
{
	draw_set_halign(fa_center);
	draw_set_color(_color);
	draw_set_alpha(_alpha);
	draw_set_font(_font);
	draw_text_transformed(x + 360, y + 26, _chapter_title, _scale, _scale, 0);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_alpha(1);
}
draw_sprite_ext(spr_chapterIcon, _icon_index, (x + (view_wport[0] / 2)) - 130, y + 20, _scale, _scale, 0, _color, _alpha);
draw_sprite_ext(spr_horzBar, 0, x, y + 72, _scale, _scale, 0, c_white, _alpha);
