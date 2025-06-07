function scr_caterpillar_facing(arg0)
{
	with (obj_caterpillarchara)
	{
		for (i = 0; i < 25; i += 1)
			facing[i] = arg0;
	}
}
