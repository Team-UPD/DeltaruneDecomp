if (state == 0)
{
	image_xscale += 0.2;
	image_yscale += 0.2;
	if (image_xscale >= 5)
	{
		state = 1;
		alarm[0] = 52;
	}
}
if (state == 1)
{
	sprite_index = spr_bqueen_giant_head_laughing_wireframe;
	image_speed = 0.5;
	if (playsound == 0)
	{
		playsound = 1;
		snd_play(snd_queen_laugh_0_bc);
	}
}
