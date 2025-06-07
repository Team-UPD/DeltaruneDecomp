image_alpha += fadespeed;
if (image_alpha >= 1)
	image_alpha = 1;
else if (image_alpha <= 0)
	image_alpha = 0;
draw_sprite_ext(sprite_index, image_index, x, y, length, height, 0, image_blend, image_alpha);
if (image_alpha == 0 && save_ready == 3)
	instance_destroy();
