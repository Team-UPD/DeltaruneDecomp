shake = 8;
hp -= 3;
if (image_index < 3)
	image_index += 1;
snd_play(snd_damage);
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
	scr_tensionheal(3);
else
	scr_tensionheal(1.5);
