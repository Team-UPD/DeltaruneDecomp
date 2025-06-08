scr_bullet_init();
element = 6;
f = 2;
destroyable = 0;
angle_speed = 0;
destroypoints = 1;
timer = 0;
con = 0;
destroyonhit = 0;
if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 10;
