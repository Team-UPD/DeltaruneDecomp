scr_bullet_init();
wall_destroy = 1;
image_alpha = 1;
sprite_index = spr_hitbox_10px_center;
image_xscale = 1;
image_yscale = 1;
destroyonhit = 0;
grazed = 1;
element = 6;
if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 2;
timer = 0;
depth = -999999;
creator = -1;
