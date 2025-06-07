global.entrance = 24;
instance_create(0, 0, obj_persistentfadein);
if (room == room_castle_town)
	room_goto(room_castle_tutorial);
if (room == room_castle_tutorial)
	room_goto(room_castle_town);
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
if (room == room_cc_prisonlancer)
	room_goto(room_cc_prison_cells);
if (room == room_cc_prison_cells)
	room_goto(room_cc_prisonlancer);
if (room == room_forest_secret1)
	room_goto(room_forest_dancers1);
if (room == room_forest_dancers1)
	room_goto(room_forest_secret1);
if (room == room_forest_savepoint3)
	room_goto(room_forest_savepoint_relax);
if (room == room_forest_savepoint_relax)
{
	if (global.plot < 120)
		room_goto(room_forest_maze1);
	else
		room_goto(room_forest_savepoint3);
}
if (room == room_forest_maze_susie)
{
	if (y >= (room_height / 2))
	{
		global.flag[292] = 0;
		global.flag[291] = 0;
		room_goto(room_forest_savepoint_relax);
	}
	else
	{
		room_goto(room_forest_maze2);
	}
}
if (room == room_forest_castlefront)
{
	if (global.plot < 150)
		room_goto_previous();
	else
		room_goto(room_forest_fightsusie);
}
if (room == room_forest_fightsusie)
{
	if (global.plot < 150)
		room_goto_next();
	else
		room_goto(room_forest_castlefront);
}
if (room == room_forest_maze1 || room == room_forest_maze2)
{
	if (y >= (room_width / 2))
	{
		global.flag[292] = 0;
		if (room == room_forest_maze1)
		{
			global.flag[291] = 0;
			room_goto(room_forest_savepoint_relax);
		}
		if (room == room_forest_maze2)
		{
			global.flag[291] = 5;
			room_goto(room_forest_maze_susie);
		}
	}
	else
	{
		with (obj_forestmaze_controller)
			event_user(0);
	}
}
