image_index = pressed;
draw_sprite_ext(sprite_index, image_index, x, y + drawY, 1, 1, 0, image_blend, image_alpha);
draw_sprite_ext(spr_ch2_keyboard_tile_text, textImage, x, y + (pressed * 4) + drawY, 2, 2, 0, image_blend, image_alpha);
_xx = x + 20;
_yy = y - 320;
draw_set_font(fnt_mainbig);
draw_set_color(c_white);
draw_text(_xx, _yy, myString);
if (down)
{
	draw_set_color(c_lime);
	if (won)
		draw_set_color(c_yellow);
	draw_text(_xx, _yy + 28, myString);
}
