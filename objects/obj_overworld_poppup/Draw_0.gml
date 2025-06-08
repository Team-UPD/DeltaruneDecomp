frameIndex = floor(image_index);
draw_self();
if (topsprite != 0)
{
	if (frameIndex == 0 || frameIndex == 1)
		draw_sprite_ext(topsprite, 0, x + 42, y + 106, 2, 2, 0, c_white, 1);
	if (frameIndex == 2)
		draw_sprite_ext(topsprite, 0, x + 42, (y + 106) - 22, 2, 2, -5, c_white, 1);
	if (frameIndex == 3 || frameIndex == 4 || frameIndex == 5 || frameIndex == 6)
		draw_sprite_ext(topsprite, 0, x + 42, (y + 106) - 24, 2, 2, -10, c_white, 1);
}
