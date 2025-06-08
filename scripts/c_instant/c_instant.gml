function c_instant(arg0)
{
	if (scr_debug())
		c_cmd_x("var", instance_find(obj_cutscene_master, 0), "instant", arg0, 0, 0, 0);
}
