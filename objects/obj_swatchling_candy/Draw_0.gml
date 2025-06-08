if (image_alpha < 1)
{
	if (sourcePlatter.image_angle == 90)
		scr_drawpart_crop(sourcePlatter.platterLid.x, y - 9, sourcePlatter.platterPlate.x, y + 9);
	else if (sourcePlatter.image_angle == 270 || sourcePlatter.image_angle == -90)
		scr_drawpart_crop(sourcePlatter.platterPlate.x, y - 9, sourcePlatter.platterLid.x, y + 9);
	else
		scr_drawpart_crop(x - 17, sourcePlatter.platterLid.y, x + 17, sourcePlatter.platterPlate.y);
}
else
{
	draw_self();
}
