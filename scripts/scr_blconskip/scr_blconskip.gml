function scr_blconskip(arg0)
{
	if (arg0 >= 0)
	{
		if (button1_p() && talktimer > arg0)
			talktimer = talkmax;
		talktimer += 1;
		if (talktimer >= talkmax)
		{
			with (obj_writer)
				instance_destroy();
			global.mnfight = 2;
		}
	}
	else if (arg0 == -1)
	{
		if (instance_exists(obj_writer) == false)
			global.mnfight = 2;
	}
	else if (arg0 == -2)
	{
		talktimer += 1;
		if (talktimer > 15)
			talktimer = talkmax;
		if (talktimer >= talkmax)
		{
			with (obj_writer)
				instance_destroy();
			global.mnfight = 2;
		}
	}
}
