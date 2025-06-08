spawntype = 0;
global.encounterno = 777;
scr_encountersetup(777);
global.interact = 1;
with (obj_mainchara)
	instance_destroy();
with (obj_darkcontroller)
	instance_destroy();
instance_create(0, 0, obj_battlecontroller);
global.myfight = -1;
global.mnfight = 2;
global.turntimer = 200;
timer = 0;
instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
instance_create(obj_growtangle.x - 6, obj_growtangle.y - 8, obj_heart);
if (global.tempflag[26] == 1)
{
	global.monster[0] = global.tempflag[20];
	global.monster[1] = global.tempflag[21];
	global.monster[2] = global.tempflag[22];
	global.monsterinstance[0].spawntype = global.tempflag[23];
	global.monsterinstance[1].spawntype = global.tempflag[24];
	global.monsterinstance[2].spawntype = global.tempflag[25];
}
else
{
	global.monster[0] = 1;
	global.monster[1] = 0;
	global.monster[2] = 0;
	global.monsterinstance[0].spawntype = spawntype;
	global.monsterinstance[1].spawntype = spawntype;
	global.monsterinstance[2].spawntype = spawntype;
	global.tempflag[26] = 1;
}
