if (state == 0)
{
	image_alpha += 0.03;
	if (image_alpha > 1.2)
	{
		image_alpha = 2;
		state = 1;
		o_boxingqueen.x = o_boxingqueen.basex;
		o_boxingqueen.y = o_boxingqueen.basey;
		if (instance_exists(obj_bq_baseball_final_hits_boss))
		{
			snd_play(snd_explosion);
			with (obj_bq_baseball_final_hits_boss)
				instance_destroy();
			__view_set(e__VW.YView, 0, 0);
			o_boxingqueen.sprite_index = spr_bqueen;
			o_boxingqueen.image_index = 26;
		}
	}
}
if (state == 1 && dont_fade_out == 0)
{
	image_alpha -= 0.02;
	if (image_alpha < 0)
		instance_destroy();
}
