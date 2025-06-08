if (init && image_alpha < 1 && firstwave <= 0)
{
	if (middespawn && firstwave == 0)
		image_alpha = scr_movetowards(image_alpha, remap_clamped(50, 65, timer, 0.25, 1), 0.1);
	else
		image_alpha += 0.1;
}
xflip = 1;
if (flipTimer < 0)
	xflip = -1;
flipTimer += 1;
if (flipTimer >= flipSpeed)
	flipTimer -= (flipSpeed * 2);
draw_sprite_ext(sprite_index, 0, x, y, xflip, 1, 0, image_blend, image_alpha);
