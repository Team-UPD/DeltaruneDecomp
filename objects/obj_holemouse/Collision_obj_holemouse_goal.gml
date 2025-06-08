nointeract = true;
if (con != 5 || bouncethisframe)
{
	if (gulped == false)
	{
		snd_play(snd_swallow);
		gulped = true;
	}
	other.win = true;
	win = true;
	con = 2;
	if (room == room_dw_city_mice)
	{
		if (instance_exists(obj_controller_dw_city_mice))
			obj_controller_dw_city_mice.victory = 1;
		if (global.plot < 72)
			global.plot = 72;
	}
	if (room == room_dw_city_mice2)
	{
		if (instance_exists(obj_controller_city_mice2))
			obj_controller_city_mice2.victory = 1;
		if (global.plot < 77)
			global.plot = 77;
		if (global.flag[368] == 0)
			global.flag[368] = 0.5;
	}
}
