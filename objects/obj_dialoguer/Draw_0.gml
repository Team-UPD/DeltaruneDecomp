if (active == 1)
{
	scr_dbox();
	if (!instance_exists(writer))
		instance_destroy();
}
