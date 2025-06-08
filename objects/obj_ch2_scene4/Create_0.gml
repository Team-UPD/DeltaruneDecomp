con = 0;
ra_npc = pointer_null;
su_npc = pointer_null;
customcon = 0;
talked = 0;
if (global.chapter != 2)
{
	con = -1;
	instance_destroy();
}
else
{
	if (global.plot == 8 || global.plot == 9)
	{
		con = 10;
		susie = instance_create(377, 541, obj_npc_room);
		with (susie)
			scr_depth();
		ralsei = instance_create(279, 590, obj_npc_facing);
		with (ralsei)
			scr_depth();
	}
	if (global.plot == 9)
	{
		con = 50;
		with (obj_mainchara)
			cutscene = 1;
	}
}
