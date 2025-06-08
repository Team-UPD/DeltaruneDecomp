scr_bullet_init();
if (!instance_exists(obj_heart))
	instance_destroy();
timer = 0;
con = 0;
siner = 0;
maxhspeed = 8;
accel = 1;
image_xscale = 1.15;
image_yscale = 1.15;
timer = 0;
init = 0;
active = 1;
damage = 1;
howlong = 20;
howfar = 0;
flipSpeed = 4;
flipTimer = 0;
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 3;
