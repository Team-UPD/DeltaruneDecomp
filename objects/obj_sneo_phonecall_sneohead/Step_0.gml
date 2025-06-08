if (global.turntimer < 3)
	instance_destroy();
image_angle = direction - 180;
timer++;
if (timer >= (4 + irandom(1)))
{
	instance_destroy();
	fx = instance_create(x, y, obj_pipis_destroy_fx);
	fx.image_xscale = 2;
	fx.image_yscale = 2;
	fx.image_speed = 1;
	snd_play(snd_rocket_sneo);
	snd_volume(snd_rocket_sneo, 0.1, 0);
	obj_spamton_neo_enemy.partx[5] = random(8);
	obj_spamton_neo_enemy.party[5] = random(8);
}
