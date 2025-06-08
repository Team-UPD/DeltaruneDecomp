function scr_script_repeat_stop()
{
	var _myid = id;
	with (obj_script_delayed)
	{
		if (target == _myid)
		{
			max_time = -300;
			alarm[0] = -5;
			instance_destroy();
		}
	}
}
