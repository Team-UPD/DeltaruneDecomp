xflip = 1.1;
if (flipTimer < 0)
	xflip = -1.1;
flipTimer++;
if (flipTimer >= flipSpeed)
	flipTimer = -flipSpeed;
draw_sprite_ext(sprite_index, 0, x, y, xflip, 1.1, 0, image_blend, image_alpha);
