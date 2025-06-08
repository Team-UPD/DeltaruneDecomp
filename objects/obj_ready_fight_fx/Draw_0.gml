if (con == 0)
{
	image_alpha += 0.1;
	if (image_alpha >= 1.3)
		con = 1;
}
if (con == 1)
{
	image_alpha -= 0.1;
	if (image_alpha < 0)
		instance_destroy();
}
draw_self();
