if (global.boxingphase != 2)
{
	if (image_alpha > 0)
		image_alpha -= 0.05;
}
if (global.boxingphase == 2)
{
	if (image_alpha < 0.5)
		image_alpha += 0.05;
}
draw_set_alpha(image_alpha);
draw_rectangle_color(0, -2000, 2000, 2000, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);
