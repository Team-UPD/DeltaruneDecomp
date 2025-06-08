collidetimer -= 1;
if (((collidetimer < 0 && sliding == 1) || instant_end_sliding) && global.interact == 1)
{
	sliding = 0;
	global.interact = 0;
	with (obj_mainchara)
	{
		sliding = 0;
		fun = 0;
		sprite_index = spr_krisd_slide;
	}
	snd_stop(slide_noise);
	instant_end_sliding = 0;
}
