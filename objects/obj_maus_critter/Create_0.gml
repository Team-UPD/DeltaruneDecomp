event_inherited();
active = 0;
destroyonhit = 0;
initialspeed = 0;
eyetimer = 0;
init = 0;
big = false;
stuck = false;
if (instance_exists(obj_mauswheel_enemy))
{
	damage = global.monsterat[obj_mauswheel_enemy.myself] * 5;
	grazepoints = 3;
}
