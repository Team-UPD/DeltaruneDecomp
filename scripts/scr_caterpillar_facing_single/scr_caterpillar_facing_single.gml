function scr_caterpillar_facing_single(arg0, arg1)
{
	with (obj_caterpillarchara)
	{
		if (name == arg0)
		{
			for (i = 0; i < 25; i += 1)
				facing[i] = scr_facing_letter_to_number(arg1);
		}
	}
}
