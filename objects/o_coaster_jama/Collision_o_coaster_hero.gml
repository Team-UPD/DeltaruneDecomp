if (active == 1)
{
	if (type == 0)
	{
		if (con >= 1)
		{
			with (other)
			{
				if (con == 0 && disabled == 0)
				{
					disabled = 1;
					disabledtimer = 95;
					xshake = 10;
					disabledtype = 0;
				}
				if (con != 0 && nitro == 0)
					damaged = 1;
			}
			event_user(1);
		}
		else if (bigcar == 0)
		{
			instance_create(x + 20, y - 40, o_coastersmoke);
			instance_destroy();
		}
	}
	if (type == 1)
	{
		with (other)
		{
			if (disabled == 0 && con == 1)
			{
				damaged = 1;
				disabled = 1;
				disabledtimer = 125;
				disabledtype = 1;
			}
		}
	}
}
