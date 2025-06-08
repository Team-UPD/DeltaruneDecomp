if (state == 0 && o_boxingcontroller.dead == 1)
	state = 1;
if (state == 1)
{
	timer++;
	if (timer > (0 / f) && timer < (50 / f))
	{
		with (rotating_sprite_piece1)
			image_alpha -= 0.04;
		with (rotating_sprite_piece2)
			image_alpha -= 0.04;
		with (rotating_sprite_piece3)
			image_alpha -= 0.04;
		with (rotating_sprite_piece4)
			image_alpha -= 0.04;
		with (rotating_sprite_piece5)
			image_alpha -= 0.04;
		with (rotating_sprite_piece6)
			image_alpha -= 0.04;
	}
	if (timer > (50 / f))
	{
		instance_destroy();
		with (rotating_sprite_piece1)
			instance_destroy();
		with (rotating_sprite_piece2)
			instance_destroy();
		with (rotating_sprite_piece3)
			instance_destroy();
		with (rotating_sprite_piece4)
			instance_destroy();
		with (rotating_sprite_piece5)
			instance_destroy();
		with (rotating_sprite_piece6)
			instance_destroy();
	}
}
