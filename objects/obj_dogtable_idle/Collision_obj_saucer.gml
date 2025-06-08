if (instance_exists(obj_controller_dining3))
{
	if (obj_controller_dining3.dogcon == 4.1 || obj_controller_dining3.dogcon == 3.1 || obj_controller_dining3.dogcon == 42069)
	{
		with (other)
		{
			tab = instance_create(x + 25, y + 34, obj_saucerTable_knocked);
			if (obj_controller_dining3.dogcon == 3.1)
			{
				tab.verticalDirection = -1;
				tab.horizontalDirection = -1;
			}
			if (obj_controller_dining3.dogcon == 4.1)
			{
				tab.verticalDirection = -1;
				tab.horizontalDirection = 1;
			}
			snd_play(snd_bump);
			instance_destroy();
		}
	}
}
