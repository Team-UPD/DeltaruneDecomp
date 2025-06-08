trigX = 1280;
cheeseCrushed = 0;
eventTriggered = 0;
con = 0;
if (global.flag[360] == 1)
{
	with (obj_mazecheese)
	{
		if (x < other.trigX)
		{
			image_index = 1;
			type = 4;
			con = 999;
		}
	}
}
if (global.flag[384] == 1)
{
	with (obj_mazecheese)
	{
		image_index = 1;
		type = 4;
		con = 999;
	}
}
if (global.flag[310] == 1)
{
	if (i_ex(obj_solidblock_destructable))
	{
		with (obj_solidblock_destructable)
			instance_destroy();
	}
}
if (global.flag[360] == 1)
	instance_destroy();
