spawnVase = 0;
triggered = 0;
monsterCount = 0;
con = 0;
timer = 0;
init_butler = false;
readtrigger = 0;
readcount = 0;
if (global.flag[541] != 0)
	global.flag[385] = 1;
if (global.flag[385] == 0)
{
	with (obj_queenvase)
	{
		if (y > 540)
			instance_destroy();
	}
}
if (global.flag[385] != 0)
{
	with (obj_npc_butler)
		instance_destroy();
	instance_create(0, 0, obj_controller_potparadise);
	instance_destroy();
}
