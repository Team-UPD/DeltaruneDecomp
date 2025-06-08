function safe_delete(arg0)
{
	if (i_ex(arg0))
	{
		with (arg0)
			instance_destroy();
	}
}
