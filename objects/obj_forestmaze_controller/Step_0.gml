if (lancercon == 1)
{
	if (obj_mainchara.y <= 480)
	{
		vspeed = -10;
		lancercon = 2;
		if (susie_side >= 0)
		{
			with (susie)
			{
				vspeed = -10;
				sprite_index = spr_susieu_dark;
				image_speed = 0.2;
			}
		}
	}
}
if (battlemoder == 1)
{
	if (room == room_forest_maze1)
	{
		if (obj_mainchara.y <= 480)
			obj_mainchara.battlemode = 1;
	}
	if (room == room_forest_maze2)
	{
		if (obj_mainchara.y <= 640)
			obj_mainchara.battlemode = 1;
	}
}
if (gen == 1)
{
	with (obj_scissordancer)
	{
		if (x <= -100)
			x += 740;
	}
}
if (gen == 2)
{
	if (obj_mainchara.y <= 60 || obj_mainchara.y >= 720)
	{
		battlemode = 0;
		with (obj_overworldbulletparent)
			instance_destroy();
	}
}
