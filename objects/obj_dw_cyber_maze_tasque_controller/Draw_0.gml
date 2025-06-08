if (global.flag[367] == 1 && screenChangeTrigger == 0)
	screenChangeTrigger = 1;
if (screenChangeTrigger == 1)
{
	dumbscreen.sprite_index = spr_tasqueStuckinWindow;
	dumbscreen.image_speed = 0.25;
	dumbread = instance_create(440, 140, obj_readable_room1);
	screenChangeTrigger = 2;
}
if (instance_exists(obj_battleback))
{
	if (i_ex(tasquescreen1))
	{
		with (tasquescreen1)
		{
			scr_afterimage();
			instance_destroy();
		}
	}
	if (i_ex(tasquescreen2))
	{
		with (tasquescreen2)
		{
			scr_afterimage();
			instance_destroy();
		}
	}
}
