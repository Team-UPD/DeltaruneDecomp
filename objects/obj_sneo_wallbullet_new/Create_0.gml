scr_bullet_init();
element = 6;
destroyable = 1;
red = 0;
bighitbox = 1;
image_speed = 0;
image_blend = merge_color(#00A2E8, c_aqua, 0.25 + (sin(0) * 0.25));
if (instance_exists(obj_spamton_neo_enemy))
	damage = global.monsterat[obj_spamton_neo_enemy.myself] * 5;
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 2;
wallcontroller = -1;
wallspeed = -7;
wallnumber = 0;
walltype = 0;
timer = 0;
hp = 1;
