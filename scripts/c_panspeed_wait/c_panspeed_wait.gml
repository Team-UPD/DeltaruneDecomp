function c_panspeed_wait(arg0, arg1, arg2)
{
	c_cmd("panspeed", arg0, arg1, arg2, 0);
	c_wait(arg2);
}
