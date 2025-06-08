draw_self();
if (image_index >= 2)
	image_index -= 2;
if (global.flag[8] == 0)
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, 0, c_white, flashamt);
if (global.flag[8] == 1)
	draw_sprite_ext(sprite_index, 2, x, y, image_xscale, image_yscale, 0, c_white, flashamt / 4);
