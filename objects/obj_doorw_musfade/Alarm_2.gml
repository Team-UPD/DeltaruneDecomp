global.entrance = 23;
instance_create(0, 0, obj_persistentfadein);
if (room == room_cc_1f)
{
	room_goto(room_cc_elevator);
	global.flag[239] = 1;
}
if (room == room_cc_5f)
{
	room_goto(room_cc_elevator);
	global.flag[239] = 2;
}
if (room == room_cc_elevator)
{
	if (global.flag[239] == 1)
		room_goto(room_cc_1f);
	if (global.flag[239] == 2)
		room_goto(room_cc_5f);
}
if (room == room_forest_castlefront)
	room_goto(room_cc_entrance);
if (room == room_cc_entrance)
	room_goto(room_forest_castlefront);
