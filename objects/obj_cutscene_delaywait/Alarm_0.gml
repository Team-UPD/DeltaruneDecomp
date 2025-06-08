with (obj_cutscene_master)
{
	if (cs_wait_custom)
	{
		waiting = 0;
		cs_wait_custom = false;
	}
	cs_wait_delay = false;
}
instance_destroy();
