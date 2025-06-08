draw_sprite_ext(spr_tm_zapbox, 0, x, y, 1, 1, image_angle + 45, c_white, 1);
draw_self();
if (letter == 0 || letter == 3)
	yy = y + ((letter == 0) ? -50 : 50);
else
	xx = x + ((letter == 1) ? -50 : 50);
draw_sprite_ext(spr_tm_letters, letter, xx + random_range(-2, 2), yy + random_range(-2, 2), 1, 1, 0, c_black, 1);
