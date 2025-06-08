scr_bullet_init();
image_xscale = 1;
image_yscale = 1;
timer = 0;
con = 0;
element = 6;
destroyable = 0;
bighitbox = 1;
image_speed = 0;
if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 2;
wallspeed = -7;
wallnumber = 0;
