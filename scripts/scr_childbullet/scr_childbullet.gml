function scr_childbullet()
{
	var __child = instance_create(argument[0], argument[1], argument[2]);
	var __parent = (argument_count == 4) ? argument[3] : id;
	if (__parent.damage != -1)
		__child.damage = __parent.damage;
	if (__parent.grazepoints != -1)
		__child.grazepoints = __parent.grazepoints;
	if (__parent.timepoints != -1)
		__child.timepoints = __parent.timepoints;
	if (__parent.inv != -1)
		__child.inv = __parent.inv;
	if (__parent.target != -1)
		__child.target = __parent.target;
	if (__parent.grazed != -1)
		__child.grazed = __parent.grazed;
	if (__parent.grazetimer != -1)
		__child.grazetimer = __parent.grazetimer;
	__child.element = __parent.element;
	return __child;
}
