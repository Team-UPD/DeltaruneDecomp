function scr_bullet_inherit(arg0)
{
	if (i_ex(arg0))
	{
		if (damage != -1)
			arg0.damage = damage;
		if (grazepoints != -1)
			arg0.grazepoints = grazepoints;
		if (timepoints != -1)
			arg0.timepoints = timepoints;
		if (inv != -1)
			arg0.inv = inv;
		if (target != -1)
			arg0.target = target;
		if (grazed != -1)
			arg0.grazed = 0;
		if (grazetimer != -1)
			arg0.grazetimer = 0;
		arg0.element = element;
	}
}
