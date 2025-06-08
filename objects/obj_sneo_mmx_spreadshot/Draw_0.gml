draw_self();
if (flashtimer > 0)
	flashtimer--;
d3d_set_fog(true, c_yellow, 0, 1);
draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, image_xscale, image_yscale, 0, c_yellow, flashtimer / 5);
d3d_set_fog(false, c_black, 0, 0);
