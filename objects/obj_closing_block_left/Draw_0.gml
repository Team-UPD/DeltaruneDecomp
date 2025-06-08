draw_self();
if (state == 0)
	draw_sprite_ext(spr_sparks, image_index, x - 10, y, 1, -1, 270, c_white, 1);
if (state == 0)
	draw_sprite_ext(spr_sparks, image_index, x - 10, y + 480, 1, 1, 90, c_white, 1);
image_index += 1;
