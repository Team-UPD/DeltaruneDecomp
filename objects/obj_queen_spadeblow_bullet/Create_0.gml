scr_bullet_init();
destroyonhit = 1;
image_xscale = 1;
image_yscale = 1;
depth = obj_heart.depth - 1;
afterimage = 0;
fadeaway = 0;
slowdown = 0;
timer = 0;
rotator_target = -1;
length = 2;
type = 1;
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 3;
