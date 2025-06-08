if (initialized == 0)
	initialized = 1;
if (waiting == 0)
{
	for (i = current_command; i < maximum_command; i += 1)
	{
		command_actor[i] = actor_selected_id;
		_c = command[i];
		scr_cutscene_commands();
		if (breakme == 1)
		{
			breakme = 0;
			break;
		}
	}
}
current_command = i + 1;
if (waiting == 1)
{
	if (cs_wait_amount > 0)
	{
		cs_wait_timer++;
		if (cs_wait_timer >= cs_wait_amount)
		{
			cs_wait_amount = 0;
			cs_wait_timer = 0;
			waiting = 0;
		}
	}
	if (cs_wait_box >= 0)
	{
		if (!i_ex(mydialoguer))
		{
			cs_wait_box = -1;
			waiting = 0;
		}
		else if (mydialoguer.active == 1)
		{
			if (i_ex(mydialoguer.writer))
			{
				if (mydialoguer.writer.msgno >= cs_wait_box)
				{
					cs_wait_box = -1;
					waiting = 0;
				}
			}
		}
	}
	if (cs_wait_dialogue == 1)
	{
		if (!i_ex(mydialoguer))
		{
			cs_wait_dialogue = 0;
			waiting = 0;
		}
	}
}
if (terminate_this_frame == 1)
{
	if (kill_actors == 1)
	{
		for (jj = 0; jj < 20; jj++)
		{
			with (actor_id[jj])
				instance_destroy();
		}
	}
	instance_destroy();
}
