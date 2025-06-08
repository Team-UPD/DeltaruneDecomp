instance_destroy();
with (other)
{
	shake = 8;
	hp -= 0.5;
	if (image_index < 3)
		image_index += 0.5;
	snd_play(snd_damage);
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
	}
	else
	{
		fx = instance_create(x, y, obj_pipis_egg_bullet_piece);
		fx.image_index = image_index;
	}
}
