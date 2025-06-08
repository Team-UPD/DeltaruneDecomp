function scr_forcefield(arg0, arg1, arg2, arg3, arg4, arg5)
{
	field = instance_create(arg0, arg1, obj_forcefield);
	field.image_xscale = arg2;
	field.image_yscale = arg3;
	field.skip = arg4;
	field.stayVisible = arg5;
	with (field)
		scr_depth();
	return field;
}
