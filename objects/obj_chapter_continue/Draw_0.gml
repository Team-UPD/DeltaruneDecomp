draw_set_color(c_white);
draw_set_font(scr_84_get_font("mainbig"));
draw_set_halign(fa_center);
draw_set_halign(fa_left);
for (var i = 0; i < array_length_1d(choice_text); i++)
{
	var text_color = (choice_index == i) ? c_yellow : c_white;
	draw_set_color(text_color);
	draw_text_color(__view_get(e__VW.XView, 0) + 220, base_text_ypos + (i * 40) + ypos_offset, choice_text[i], text_color, text_color, text_color, text_color, text_alpha);
}
draw_set_color(c_white);
draw_sprite_ext(spr_heart_centered, 0, __view_get(e__VW.XView, 0) + 200, base_heart_ypos + (choice_index * 40) + ypos_offset, 1, 1, 0, c_white, text_alpha);
