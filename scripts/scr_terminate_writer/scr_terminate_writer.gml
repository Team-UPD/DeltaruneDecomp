function scr_terminate_writer()
{
	__writerkilled = 0;
	__writerkillable = 0;
	__writerended = 0;
	if (instance_exists(obj_writer))
	{
		obj_writer.__endcheckid = id;
		with (obj_writer)
		{
			if (reachedend == 1)
			{
				with (__endcheckid)
					__writerended++;
			}
		}
		if (__writerended == instance_number(obj_writer))
			__writerkillable = 1;
	}
	else
	{
		__writerkilled = 1;
	}
	if (button1_p() && __writerkillable == 1)
	{
		with (obj_writer)
			instance_destroy();
		__writerkilled = 1;
	}
	return __writerkilled;
}
