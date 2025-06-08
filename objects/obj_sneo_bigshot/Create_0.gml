scr_bullet_init();
element = 6;
destroyonhit = 0;
f = 2;
destroyable = 1;
angle_speed = 0;
destroypoints = 1;
attackisdone = 0;
damage = 50;
image_xscale = 1;
image_yscale = 2;
timer = 0;
playerhit = 0;
flashsiner = 0;
depth = obj_heart.depth - 5;
explosion_alpha = 1;
explosion_hide = 0;
xx = x;
yy = y;
grazepoints = 4;
timer2 = 0;
explodesfx = 0;
if (instance_exists(obj_spamton_neo_enemy))
	damage = floor((global.monsterat[obj_spamton_neo_enemy.myself] * 5) / 3);
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
