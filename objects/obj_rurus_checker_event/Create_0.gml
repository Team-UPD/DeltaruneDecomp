con = 0;
if (global.plot >= 175)
{
	checkernpc = instance_create(x, y, obj_npc_room_animated);
	instance_destroy();
}
else
{
	con = 1;
}
