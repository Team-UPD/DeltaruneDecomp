if (bulletid.big == 1)
{
	if (hspeed < 10)
		hspeed = 10;
	vspeed += random_range(3, -3);
}
if (bulletid.big == 0)
{
	if (hspeed < 0)
		hspeed = 0;
	hspeed += 2;
	vspeed *= 1.2;
}
with (bulletid)
	instance_destroy();
