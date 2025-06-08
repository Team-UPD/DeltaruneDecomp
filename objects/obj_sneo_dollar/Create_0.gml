event_inherited();
element = 6;
image_alpha = 0;
startscale = 1;
destroyable = 0;
if (instance_exists(obj_spamton_neo_enemy))
	damage = floor((global.monsterat[obj_spamton_neo_enemy.myself] * 5) / 3);
if (instance_exists(obj_sneo_bulletcontroller))
	target = obj_sneo_bulletcontroller.target;
grazepoints = 4;
fade = 0;
