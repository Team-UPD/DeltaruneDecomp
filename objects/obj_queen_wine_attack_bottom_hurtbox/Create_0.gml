scr_bullet_init();
wall_destroy = 1;
image_alpha = 1;
sprite_index = spr_hitbox_10px;
image_xscale = 40;
image_yscale = 20;
visible = false;
destroyonhit = 0;
grazed = 0;
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 4;
