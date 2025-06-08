timer++;
if (timer == 5)
{
	timer = 0;
	if (y < -420)
	{
		gas = instance_create(x, y, obj_rocketpunch_afterimage);
		gas.depth = o_boxingqueen.depth - 2;
	}
}
