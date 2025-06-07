function scr_blconskip(arg0)
{
	if (arg0 != -1)
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
	if (arg0 == -1)
	{
		if (instance_exists(obj_writer) == false)
			global.mnfight = 2;
	}
}
