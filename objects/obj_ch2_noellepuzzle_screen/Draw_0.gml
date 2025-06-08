draw_self();
draw_sprite_ext(spr_ch2_keyboard_speaker_small_city, speaker_index, x + 87, y + (sprite_get_height(sprite_index) * image_xscale) + 10, 2, 2, 1, c_white, 1);
_xx = x + 95;
_yy = y + 25;
if (myString == "?")
	won = false;
else
	won = true;
draw_set_font(fnt_mainbig);
draw_set_color(unsolved);
if (won)
	draw_set_color(c_yellow);
draw_text(_xx, _yy, myString);
