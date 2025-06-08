if (!i_ex(source))
{
	instance_destroy();
}
else
{
	x = source.x;
	y = source.y;
	image_xscale = source.image_xscale;
	image_yscale = max(source.image_yscale - 0.25, 0);
	image_angle = source.image_angle;
	direction = source.direction;
}
