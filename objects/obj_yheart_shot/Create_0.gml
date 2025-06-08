f = 2;
makeanim = 1;
hspeed = 8 * f;
big = 0;
damage = 1;
sucked = 0;
trail = 0;
trail_timer = 0;
if (instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.upgrade > 0)
{
	big = 1;
	sprite_index = spr_yheart_bigshot;
	hspeed = 9;
	friction = -0.4;
	image_alpha = 0.5;
	image_xscale = 0.1;
	image_yscale = 2;
	image_index = 0;
	damage = 4;
	if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy))
		obj_spamton_neo_enemy.bigshotused = 1;
}
