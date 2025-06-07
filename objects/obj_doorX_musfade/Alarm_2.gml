global.entrance = 24;
instance_create(0, 0, obj_persistentfadein);
if (room == room_castle_town)
	room_goto(room_castle_tutorial);
if (room == room_castle_tutorial)
	room_goto(room_castle_town);
if (room == room_field_shop1)
	room_goto(room_shop1);
if (room == room_man)
	room_goto(room_forest_savepoint2);
if (room == room_forest_area5)
{
	ch = ceil(random(50));
	if (ch == 50 && global.flag[910] == 0)
		room_goto(room_man);
	else
		room_goto(room_forest_starwalker);
}
if (room == room_town_krisyard)
	room_goto(room_torhouse);
if (room == room_torhouse)
	room_goto(room_town_krisyard);
if (room == room_town_school)
	room_goto(room_schoollobby);
if (room == room_schoollobby)
	room_goto(room_town_school);
if (room == room_cc_1f)
{
	if (x >= 1300)
		room_goto(room_cc_prisonelevator);
	else
		snd_play(snd_error);
}
if (room == room_cc_5f)
	room_goto(room_shop2);
if (room == room_cc_prisonelevator)
{
	if (global.flag[239] == 0)
		room_goto(room_cc_prison_to_elevator);
	if (global.flag[239] == 1)
		room_goto(room_cc_1f);
	if (global.flag[239] == 2)
		room_goto(room_cc_5f);
	if (global.flag[239] == 3)
		room_goto(room_cc_prison_prejoker);
}
if (room == room_cc_prison_to_elevator)
{
	global.flag[239] = 0;
	room_goto(room_cc_prisonelevator);
}
if (room == room_cc_1f)
{
	global.flag[239] = 1;
	room_goto(room_cc_prisonelevator);
}
if (room == room_cc_prison_prejoker)
{
	global.flag[239] = 3;
	room_goto(room_cc_prisonelevator);
}
if (room == room_cc_entrance)
	room_goto(room_forest_castlefront);
