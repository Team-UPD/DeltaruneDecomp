function scr_gamepad_axis_check(arg0, arg1)
{
	axis_value = instance_exists(obj_time) ? obj_time.axis_value : 0.4;
	__returnvalue = 0;
	if (arg1 == 0)
	{
		if (gamepad_axis_value(arg0, gp_axislv) >= axis_value)
			__returnvalue = 1;
	}
	if (arg1 == 1)
	{
		if (gamepad_axis_value(arg0, gp_axislh) >= axis_value)
			__returnvalue = 1;
	}
	if (arg1 == 2)
	{
		if (gamepad_axis_value(arg0, gp_axislv) <= -axis_value)
			__returnvalue = 1;
	}
	if (arg1 == 3)
	{
		if (gamepad_axis_value(arg0, gp_axislh) <= -axis_value)
			__returnvalue = 1;
	}
	return __returnvalue;
}
