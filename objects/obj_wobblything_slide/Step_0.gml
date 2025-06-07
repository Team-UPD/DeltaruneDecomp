if (wobbled == 0)
{
	if (instance_exists(obj_mainchara))
	{
		if (obj_mainchara.y > (y - 10) && obj_mainchara.y < (y + 50))
		{
			image_speed = 0.334;
			if (global.flag[8] == 1)
				image_speed = 0.2;
			wobbled = 1;
		}
	}
}
if (y < (__view_get(e__VW.YView, 0) - 60))
{
	wobbled = 0;
	image_speed = 0;
	image_index = 0;
	y += 960;
}
