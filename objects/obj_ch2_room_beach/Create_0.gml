con = -1;
customcon = 0;
timer = 0;
canrest = false;
oceansong[0] = -1;
oceansong[1] = -1;
if (global.chapter != 2)
	instance_destroy();
else if (global.flag[258] == 0)
	instance_create(90, 54, obj_npc_clamguy);
