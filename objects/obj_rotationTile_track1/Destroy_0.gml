if (init == 1)
{
	for (i = 0; i < tilemax; i++)
	{
		with (tile[i])
			instance_destroy();
	}
}
