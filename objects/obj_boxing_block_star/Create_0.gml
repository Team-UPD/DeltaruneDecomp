image_xscale = 2;
image_yscale = 2;
speed = 6;
timer = 0;
if (instance_exists(o_boxingqueen))
{
	depth = o_boxingqueen.depth - 2;
	if (o_boxingqueen.drawflip == 0)
		x = o_boxingqueen.x - 18;
	else
		x = o_boxingqueen.x + 18;
	y = o_boxingqueen.y - 128;
}
