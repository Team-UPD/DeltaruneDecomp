active = 0;
stepped = 0;
stepbuffer = 0;
image_speed = 0.2;
image_xscale = 2;
image_yscale = 2;
if (instance_exists(obj_glowtilepuzz))
{
	obj_glowtilepuzz.tempid = id;
	with (obj_glowtilepuzz)
	{
		tileid[tiletotal] = tempid;
		tiletotal += 1;
	}
}
