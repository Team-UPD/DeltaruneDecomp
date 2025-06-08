if (colorTimer < 0)
	return targetColor == startColor;
if (colorTimer <= 20)
	targetColor = merge_color(c_white, startColor, colorTimer / 20);
platterPlate.image_blend = targetColor;
platterLid.image_blend = targetColor;
colorTimer--;
if (image_alpha < 1)
{
	image_alpha += 0.2;
	platterPlate.image_alpha = image_alpha;
	platterLid.image_alpha = image_alpha;
}
