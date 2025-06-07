siner += 1;
if (siner <= 30)
{
	offx += (2 - (siner / 15));
	if (image_alpha < 1)
		image_alpha += 0.05;
}
if (siner >= 120)
{
	offx += (-8 + (siner / 15));
	image_alpha -= (1/30);
	if (image_alpha <= 0)
		instance_destroy();
}
