if (y > (gt_maxy() + 40))
{
	image_alpha -= 0.2;
	platterPlate.image_alpha = image_alpha;
	platterLid.image_alpha = image_alpha;
	if (image_alpha <= 0)
	{
		instance_destroy();
		instance_destroy(platterPlate);
		instance_destroy(platterLid);
	}
}
else if (image_alpha < 1)
{
	image_alpha += 0.2;
	platterPlate.image_alpha = image_alpha;
	platterLid.image_alpha = image_alpha;
}
if (colorTimer < 0 || image_alpha < 1)
	return targetColor == startColor;
if (colorTimer <= 20)
	targetColor = merge_color(c_white, startColor, colorTimer / 20);
platterPlate.image_blend = targetColor;
platterLid.image_blend = targetColor;
colorTimer--;
