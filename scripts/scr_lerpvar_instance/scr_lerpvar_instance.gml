function scr_lerpvar_instance()
{
	__lerpvar = instance_create(0, 0, obj_lerpvar);
	__lerpvar.target = argument[0];
	__lerpvar.varname = argument[1];
	__lerpvar.pointa = argument[2];
	__lerpvar.pointb = argument[3];
	__lerpvar.maxtime = argument[4];
	if (argument_count >= 6)
		__lerpvar.easetype = argument[5];
	if (argument_count >= 7)
		__lerpvar.easeinout = argument[6];
	return __lerpvar;
}
