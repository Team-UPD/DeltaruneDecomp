shake = 8;
hp -= other.damage;
if (image_index < 3)
	image_index += 1;
snd_play(snd_damage);
if (other.big == 0)
{
	with (other)
		event_user(0);
}
if (hp < 1)
{
	fx = instance_create(x, y, obj_pipis_destroy_fx);
	fx.image_xscale = 1.5;
	fx.image_yscale = 1.5;
	repeat (3)
	{
		fx = instance_create(x, y, obj_pipis_egg_bullet_piece);
		fx.image_xscale = 2;
		fx.image_yscale = 2;
	}
	instance_destroy();
	if (obj_spamton_neo_enemy.difficulty == 1)
		scr_tensionheal(2);
	else
		scr_tensionheal(3);
}
else
{
	fx = instance_create(x, y, obj_pipis_egg_bullet_piece);
	fx.image_index = image_index;
	if (x < (camerax() + 500))
		hspeed /= 1.05;
}
