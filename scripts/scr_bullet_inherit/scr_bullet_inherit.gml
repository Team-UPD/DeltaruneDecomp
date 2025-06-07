function scr_bullet_inherit(arg0)
{
	if (instance_exists(arg0))
	{
		arg0.damage = damage;
		arg0.grazepoints = grazepoints;
		arg0.timepoints = timepoints;
		arg0.inv = inv;
		arg0.target = target;
		arg0.grazed = 0;
		arg0.grazetimer = 0;
	}
}
