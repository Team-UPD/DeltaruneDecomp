var mercyset = ceil(bardlymercy);
if ((mercyset + obj_queen_enemy.bardlymercy) > 100)
	mercyset = ceil(100 - obj_queen_enemy.bardlymercy);
if (mercyset != 0)
{
	__mercydmgwriter = instance_create(obj_berdlyplug_enemy.x + 20, (obj_berdlyplug_enemy.y + 20) - (global.hittarget[0] * 20), obj_dmgwriter);
	__mercydmgwriter.damage = mercyset;
	__mercydmgwriter.type = 5;
}
obj_queen_enemy.bardlymercy += mercyset;
with (obj_dmgwriter)
{
	x = obj_berdlyplug_enemy.x;
	y = obj_berdlyplug_enemy.y + 20;
	depth = obj_queen_enemy.depth - 1;
}
bardlymercy = 0;
