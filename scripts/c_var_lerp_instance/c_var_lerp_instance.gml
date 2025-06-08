function c_var_lerp_instance()
{
	if (argument_count < 6)
		c_cmd_x("var", argument[0], argument[1], argument[2], argument[3], argument[4], 0);
	else if (argument_count == 6)
		c_cmd_x("var", argument[0], argument[1], argument[2], argument[3], argument[4], argument[5]);
	else if (argument_count == 7)
		c_cmd_x("var", argument[0], argument[1], argument[2], argument[3], argument[4], string(argument[5]) + string(argument[6]));
}
