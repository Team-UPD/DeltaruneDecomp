function scr_cutscene_master_commands_initialize()
{
	for (i = 0; i < 800; i++)
	{
		command[i] = "terminate";
		command_actor[i] = 99999999;
		command_arg1[i] = 0;
		command_arg2[i] = 0;
		command_arg3[i] = 0;
		command_arg4[i] = 0;
		command_arg5[i] = 0;
		command_arg6[i] = 0;
	}
	current_command = 0;
	maximum_command = 1;
}
