function scr_act_charsprite_end()
{
	for (i = 0; i < 10; i++)
	{
		with (_charactsprite[i])
			instance_destroy();
	}
	with (obj_heroparent)
	{
		if (image_alpha == 0)
		{
			image_alpha = 1;
			acttimer = 0;
			state = 0;
			global.faceaction[myself] = 0;
		}
	}
}
