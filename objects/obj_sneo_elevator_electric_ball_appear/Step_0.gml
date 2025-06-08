image_xscale += 0.04;
image_yscale += 0.04;
if (type == 1)
{
	siner += 0.5;
	x = xstart + (sin(siner / 6) * 50);
}
if (image_xscale > 1.25)
{
	image_xscale = 1.25;
	image_yscale = 1.25;
	instance_destroy();
	ball = instance_create(x, y, obj_sneo_elevator_electric_ball);
	ball.type = type;
	ball.siner = siner;
	ball.xstart = xstart;
}
