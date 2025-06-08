if (o_boxingcontroller.dead == 1)
{
	visible = false;
	confirm = 0;
	exit;
}
else
{
	visible = true;
}
if (instance_exists(o_boxingcontroller))
{
	x = o_boxingcontroller.x;
	y = o_boxingcontroller.y;
}
if (confirm == 2)
{
	if (o_boxingcontroller.hurttimer == 0)
	{
		if (arcade)
			snd_play(snd_graze_bc);
		else
			snd_play(snd_graze);
		image_alpha = 1;
	}
	confirm = 0;
}
if (confirm == 1)
	confirm = 2;
if (image_alpha >= 0)
	image_alpha -= 0.25;
