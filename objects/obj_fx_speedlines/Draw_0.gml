if (offsetx || offsety)
{
	if (offsetx)
		xoff = x - camerax();
	if (offsety)
		yoff = y - cameray();
	offsetx = false;
	offsety = false;
}
if (flashframe)
	depth = -1000;
draw_sprite_ext(sprite_index, 0, camerax() + (camerawidth() / 2), lerp(cameray() + (cameraheight() / 2), y, 0.5), flipB * 2, flipA * 2, image_angle, flashframe ? c_gray : c_white, 1);
draw_sprite_ext(sprite_index, 1, camerax() + (camerawidth() / 2), lerp(cameray() + (cameraheight() / 2), y, 0.5), flipA * 2, flipB * 2, -image_angle, #8EAAEA, 1);
if (flipA == flipB)
{
	flipA *= -1;
}
else
{
	flipB *= -1;
	image_angle += 90;
}
if (flashframe)
	instance_destroy();
