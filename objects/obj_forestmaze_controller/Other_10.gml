if (room == room_forest_maze1)
{
	if (obj_mainchara.x <= (room_width / 2))
		sidechoice = 0;
	if (obj_mainchara.x >= (room_width / 2))
		sidechoice = 1;
}
if (room == room_forest_maze2)
{
	if (obj_mainchara.x >= 100)
		sidechoice = 2;
	if (obj_mainchara.x >= 260)
		sidechoice = 3;
	if (obj_mainchara.x >= 420)
		sidechoice = 4;
}
roomchoice = room_forest_maze1;
if (room == room_forest_maze2)
	roomchoice = room_forest_maze2;
if (sidechoice == proper_choice)
{
	global.flag[291] += 1;
	global.flag[292] = 0;
	if (global.flag[291] == 4)
	{
		if (global.plot < 100)
		{
			roomchoice = room_forest_maze_susie;
		}
		else
		{
			global.flag[291] = 5;
			roomchoice = room_forest_maze2;
		}
	}
	if (global.flag[291] == 9)
	{
		roomchoice = room_forest_savepoint3;
		if (global.plot < 120)
			global.plot = 120;
	}
}
else
{
	rem291 = global.flag[291];
	global.flag[291] = 0;
	global.flag[292] += 1;
	if (global.flag[293] >= 1)
		global.flag[292] = 3;
	if (room == room_forest_maze2)
		global.flag[292] = 3;
	if (global.flag[292] >= 2)
	{
		global.flag[292] = 0;
		roomchoice = room_forest_maze_deadend;
		if (rem291 >= 5)
		{
			global.flag[291] = 5;
			roomchoice = room_forest_maze_deadend2;
		}
	}
}
room_goto(roomchoice);
