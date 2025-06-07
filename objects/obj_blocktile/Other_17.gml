if (active == 1)
{
	if (stepped == 0)
	{
		with (obj_glowtilepuzz)
			stepnoise = 1;
		sprite_index = spr_glowtile_on;
	}
	stepped = 1;
	stepbuffer = 3;
}
