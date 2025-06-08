customcon = 0;
con = 0;
destroyme = 0;
if (global.chapter != 2 || global.plot >= 20)
{
	destroyme = 1;
}
else if (global.plot < 20)
{
	with (obj_npc_facing)
		instance_destroy();
	with (obj_npc_room)
		instance_destroy();
	con = 1;
	global.interact = 1;
	foreground = layer_get_id_at_depth(5000);
	layer_depth(foreground[0], 900000);
}
if (destroyme == 1)
	instance_destroy();
drawdoor = 1;
darkbg = 0;
depth = 100000;
xsin = 0;
siner = 0;
amt = 0;
