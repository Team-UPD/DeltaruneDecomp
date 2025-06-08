event_inherited();
if (active && obj_thrashmachine.duckmode)
{
	explosion_marker = instance_create(x + 10, y + 20, obj_animation_dx);
	explosion_marker.image_yscale = 3;
	explosion_marker.image_xscale = 3;
	explosion_marker.depth = depth - 5;
	explosion_marker.sprite_index = spr_realisticexplosion;
	explosion_marker.endtime = 30;
	with (explosion_marker)
		snd_play(snd_badexplosion);
	obj_rouxls_enemy.advancespeed = 0;
	obj_rouxls_enemy.wheel_difficulty = 0;
	deathtimer = 5;
	active = 0;
}
