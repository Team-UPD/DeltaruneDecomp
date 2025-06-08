if (global.flag[310] == 1)
{
	if (i_ex(obj_solidblock_destructable))
	{
		with (obj_solidblock_destructable)
			instance_destroy();
	}
}
if (obj_mainchara.x >= trigX && eventTriggered == 0)
{
	global.flag[360] = 1;
	if (global.flag[310] == 1)
	{
		if (con == 0)
		{
			global.interact = 1;
			con++;
		}
		if (con == 1)
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%", "obj_controller_city_cheesemaze_slash_Step_0_gml_18_0");
			d = d_make();
			con++;
		}
		if (con == 2 && !d_ex())
		{
			global.interact = 0;
			eventTriggered = 1;
			instance_destroy();
		}
	}
	if (global.flag[310] == 0)
	{
		with (obj_mazecheese)
		{
			if (x < other.trigX)
			{
				image_index = 1;
				type = 4;
				con = 999;
				global.flag[310] = 1;
			}
		}
		eventTriggered = 1;
		instance_destroy();
	}
}
