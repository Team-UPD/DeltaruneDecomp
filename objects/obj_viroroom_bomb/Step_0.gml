timer++;
if (cont == 1)
{
	image_speed = 0.5;
	if (timer >= 15)
		cont = 2;
}
if (cont == 2)
{
	image_alpha = 0;
	multiplier = 2;
	snd_play(snd_bomb);
	explosion = instance_create(x, y, obj_textbomb_explosion);
	explosion.image_xscale = 3;
	explosion.image_yscale = 3;
	for (i = 0; i < 8; i += 1)
	{
		bullet = instance_create(x, y, obj_saucer_ufo_bullet);
		bullet.direction = i * 45;
		bullet.speed = 1 * multiplier;
		bullet.friction = -0.08 * multiplier;
		bullet.image_angle = bullet.direction;
		bullet.explosiontype = 1;
	}
	instance_destroy();
}
