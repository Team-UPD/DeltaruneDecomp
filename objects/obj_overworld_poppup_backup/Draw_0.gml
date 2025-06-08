frameIndex = floor(image_index);
draw_self();
if (topsprite != 0)
{
	if (frameIndex == 0)
		draw_sprite_ext(topsprite, 0, x + topxoff, (y + topyoff) - 14, 2, 2, 0, c_white, 1);
	if (frameIndex == 1)
		draw_sprite_ext(topsprite, 0, x + topxoff, (y + topyoff) - 34, 2, 2, -5, c_white, 1);
	if (frameIndex == 2 || frameIndex == 3 || frameIndex == 4 || frameIndex == 5 || frameIndex == 6)
		draw_sprite_ext(topsprite, 0, (x + topxoff) - 2, (y + topyoff) - 42, 2, 2, -10, c_white, 1);
}
