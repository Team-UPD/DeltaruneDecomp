function c_script_instance()
{
	if (argument_count == 3)
		c_cmd_x("script", argument[0], argument[1], argument[2], -3.14, -3.14, -3.14);
	if (argument_count == 4)
		c_cmd_x("script", argument[0], argument[1], argument[2], argument[3], -3.14, -3.14);
	if (argument_count == 5)
		c_cmd_x("script", argument[0], argument[1], argument[2], argument[3], argument[4], -3.14);
	if (argument_count == 6)
		c_cmd_x("script", argument[0], argument[1], argument[2], argument[3], argument[4], argument[5]);
}
