scr_bullet_init();
destroyonhit = 1;
bufferstate = 0;
originalspeed = speed;
image_xscale = 0.5;
image_yscale = 0.5;
afterimage = 0;
fadeaway = 0;
slowdown = 0;
timer = 0;
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 3;
rotate = 0;
