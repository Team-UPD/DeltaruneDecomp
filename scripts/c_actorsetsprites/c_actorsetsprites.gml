function c_actorsetsprites(arg0, arg1, arg2, arg3, arg4)
{
	if (arg1 != 0)
		c_var_instance(arg0, "usprite", arg1);
	if (arg2 != 0)
		c_var_instance(arg0, "rsprite", arg2);
	if (arg3 != 0)
		c_var_instance(arg0, "dsprite", arg3);
	if (arg4 != 0)
		c_var_instance(arg0, "lsprite", arg4);
}
