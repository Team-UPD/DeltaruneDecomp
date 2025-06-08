if (global.flag[7] == 0)
	snd_free_all();
global.facing = 0;
instance_create(0, 0, obj_persistentfadein);
if (global.plot < 200)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_musical_shop);
}
else
{
	global.entrance = 19;
	room_goto(room_castle_tutorial);
}
