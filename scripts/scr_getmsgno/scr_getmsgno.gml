function scr_getmsgno()
{
	if (instance_exists(obj_writer))
		return obj_writer.msgno;
}
