function c_cmd(arg0, arg1, arg2, arg3, arg4)
{
	if (instance_exists(obj_cutscene_master))
	{
		__cs_i = obj_cutscene_master.maximum_command - 1;
		obj_cutscene_master.command[__cs_i] = arg0;
		obj_cutscene_master.command_arg1[__cs_i] = arg1;
		obj_cutscene_master.command_arg2[__cs_i] = arg2;
		obj_cutscene_master.command_arg3[__cs_i] = arg3;
		obj_cutscene_master.command_arg4[__cs_i] = arg4;
		with (obj_cutscene_master)
			maximum_command++;
	}
}
