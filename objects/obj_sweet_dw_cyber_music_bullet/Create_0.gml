depth = 10000;
move = 0;
yy = y;
xx = x;
sweettimer = 0;
if (room == room_dw_cyber_music_bullet)
{
	if (global.plot >= 52)
	{
		if (global.flag[428] > 0)
			instance_destroy();
	}
	else
	{
		global.plot = 52;
	}
}
