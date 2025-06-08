if (con == 0)
{
	image_alpha += 0.05;
	if (image_alpha > 2)
		con = 1;
}
if (con == 1)
{
	image_alpha -= 0.05;
	if (image_alpha < 0)
		instance_destroy();
}
