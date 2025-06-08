global.entrance = 24;
instance_create(0, 0, obj_persistentfadein);
event_user(7);
if (room == room_castle_town)
	room_goto(room_castle_tutorial);
if (room == room_town_south)
	room_goto(room_library);
if (room == room_library)
	room_goto(room_town_south);
if (room == room_town_church)
	room_goto(room_townhall);
if (room == room_townhall)
	room_goto(room_town_church);
if (room == room_schoollobby)
	room_goto(room_town_school);
if (room == room_town_school)
	room_goto(room_schoollobby);
if (room == room_town_mid)
	room_goto(room_diner);
if (room == room_diner)
	room_goto(room_town_mid);
if (room == room_town_north)
	room_goto(room_flowershop_1f);
if (room == room_flowershop_1f)
	room_goto(room_town_north);
if (room == room_castle_tutorial)
{
	if (global.plot < 12)
		room_goto(room_dw_castle_area_2);
	else
		room_goto(room_dw_castle_area_2_transformed);
}
if (room == room_dw_castle_area_2)
	room_goto(room_castle_tutorial);
if (room == room_dw_castle_area_2_transformed)
{
	if (y < 1050)
	{
		if (x < 500)
			room_goto(room_dw_castle_dojo);
		if (x > 800)
			room_goto(room_dw_castle_cafe);
		if (x > 940)
			room_goto(room_dw_castle_restaurant);
	}
	else
	{
		if (x < 500)
			room_goto(room_dw_castle_west_cliff);
		if (x > 1320)
			room_goto(room_castle_tutorial);
		if (y > 1400)
			room_goto(room_dw_castle_area_1);
	}
}
if (room == room_dw_castle_cafe)
{
	global.entrance = 19;
	room_goto(room_dw_castle_area_2_transformed);
}
if (room == room_dw_castle_restaurant)
{
	global.entrance = 20;
	room_goto(room_dw_castle_area_2_transformed);
}
if (room == room_dw_castle_dojo)
{
	global.entrance = 21;
	room_goto(room_dw_castle_area_2_transformed);
}
if (room == room_dw_castle_west_cliff)
{
	global.entrance = 18;
	if (global.plot < 12)
		room_goto(room_dw_castle_area_2);
	else
		room_goto(room_dw_castle_area_2_transformed);
}
if (room == room_dw_castle_east_door)
{
}
if (room == room_dw_castle_area_1)
{
	global.entrance = 23;
	if (global.plot < 12)
		room_goto(room_dw_castle_area_2);
	else
		room_goto(room_dw_castle_area_2_transformed);
}
