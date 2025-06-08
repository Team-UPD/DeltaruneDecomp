encountermax = 999;
encountermin = 1;
if (global.chapter == 0 || global.chapter == 2)
{
	encountermin = 50;
	encountermax = 999;
}
global.encounterno = clamp(global.encounterno, encountermin, encountermax);
if (instance_exists(obj_chaseenemy))
	obj_chaseenemy.radius = 2;
global.flag[34] = 0;
