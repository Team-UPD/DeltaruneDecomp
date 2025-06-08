function c_emote()
{
	if (argument_count == 0)
		c_cmd("emote", "!", 30, 0, 0);
	else if (argument_count == 1)
		c_cmd("emote", argument[0], 30, 0, 0);
	else if (argument_count == 2)
		c_cmd("emote", argument[0], argument[1], 0, 0);
	else if (argument_count == 3)
		c_cmd("emote", argument[0], argument[1], argument[2], 0);
}
